<template>
  <b-form @submit="onSubmit">
    <b-form-group id="input-group-3" label="ユーザ:" label-for="input-3">
      <b-form-select
      id="input-3"
      v-model="form.user"
      :options="users"
      required
      ></b-form-select>
    </b-form-group>

    <b-form-group id="input-group-3" label="内容:" label-for="input-3">
      <b-form-textarea
        id="textarea"
        v-model="form.text"
        placeholder="Enter something..."
        rows="3"
        max-rows="6"
      ></b-form-textarea>
    </b-form-group>

    <b-button type="submit" variant="primary">Submit</b-button>
  </b-form>
</template>

<script>
import Api from '../Api'

export default {
	data() {
		return {
			form: {
				user: null,
        text: '',
			},
      users: [],
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
      Api.post(`/replies`, {
        reply: {
          user_id: this.form.user,
          question_id: this.$route.params.id,
          text: this.form.text,
        },
      })
      .then(res => {
        alert("作成しました")
        this.form.user = null
        this.form.text = ""
        // TODO: repliesを動的に変更できるようにあとで修正
        this.$router.go({path: this.$router.currentRoute.path, force: true})
      })
      .catch(err => {
        alert(err)
      })
		},
	}
}
</script>

