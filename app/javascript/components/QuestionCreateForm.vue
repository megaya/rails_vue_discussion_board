<template>
  <b-form @submit="onSubmit" class="mb-5">
    <b-form-group id="input-group-3" label="ユーザ:" label-for="input-3">
      <b-form-select
      id="input-3"
      v-model="form.user"
      :options="users"
      required
      ></b-form-select>
    </b-form-group>

    <b-form-group id="input-group-3" label="カテゴリ:" label-for="input-3">
      <b-form-select
      id="input-3"
      v-model="form.category"
      :options="categories"
      required
      ></b-form-select>
    </b-form-group>

    <b-form-group id="input-group-2" label="タイトル:" label-for="input-2">
      <b-form-input
        id="input-2"
        v-model="form.title"
        required
        placeholder="Enter name"
      ></b-form-input>
    </b-form-group>

    <b-form-group id="input-group-3" label="内容:" label-for="input-3">
      <b-form-textarea
        id="textarea"
        v-model="form.description"
        placeholder="Enter something..."
        rows="3"
        max-rows="6"
        required
      ></b-form-textarea>
    </b-form-group>

    <b-button type="submit" variant="primary">Submit</b-button>
    <hr />
  </b-form>
</template>

<script>
import Api from '../Api'

export default {
	data() {
		return {
			form: {
				title: '',
				user: null,
				category: null,
        description: '',
			},
      users: [],
      questions: [],
      categories: [{ value: 1, text: "イベント" }, { value: 2, text: "予約" }],
		}
	},
  created() {
    Api.get(`users`)
    .then(res => { this.users = res.data })
    .catch(err => {
        alert(err)
    })
  },
	methods: {
		onSubmit(evt) {
			evt.preventDefault()
      Api.post(`/questions`, {
        question: {
          user_id: this.form.user,
          category: this.form.category,
          title: this.form.title,
          description: this.form.description,
        },
      })
      .then(res => {
        alert("作成しました")
        this.form.user = null
        this.form.category = null
        this.form.title = ""
        this.form.description = ""
        // TODO: questionsを動的に変更できるようにあとで修正
        this.$router.go({path: this.$router.currentRoute.path, force: true})
      })
      .catch(err => {
        alert(err)
      })
		},
	}
}
</script>

