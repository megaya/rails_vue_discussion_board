<template>
  <div>
		<b-card :title="question.title">
			<template v-slot:header>
				<b-badge>カテゴリ名</b-badge> <b-badge>未解決</b-badge>
      </template>

			<b-card-text>
        {{ question.description }}
			</b-card-text>
			<b-button href="#" variant="primary">Go somewhere</b-button>
		</b-card>

    <b-list-group class="mb-3">
      <b-list-group-item href="#" class="flex-column align-items-start" v-for="reply in question.replies" :key="reply.id">
        <div class="d-flex w-100 justify-content-between">
          <h5 class="mb-1">{{ reply.user_name }}</h5>
        </div>

        <p class="mb-1">
          {{ reply.text }}
        </p>

        <b-link href="#foo">削除</b-link>
      </b-list-group-item>
      <hr />
    </b-list-group>

  </div>
</template>

<script>
import Api from '../Api'

export default {
	data() {
		return {
      question: {}
		}
	},
  created() {
    Api.get(`/questions/${this.$route.params.id}`)
    .then(res => { this.question = res.data })
    .catch(err => {
        alert(err)
    })
  },
	methods: {
	}
}
</script>

