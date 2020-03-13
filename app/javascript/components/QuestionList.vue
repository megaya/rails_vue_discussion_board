<template>
	<div>
    <b-card
      border-variant="secondary"
      :header="q.title"
      header-border-variant="secondary"
      align="center"
      v-for="q in questions"
      :key="q.id"
      class="mb-3"
    >
      <b-card-text>{{ q.description }}</b-card-text>
      <router-link :to="{ name: 'question_show', params: { id: q.id }}">詳細を見る</router-link>
    </b-card>

	</div>
</template>

<script>
import Api from '../Api'

export default {
	data() {
		return {
      questions: [],
		}
	},
  created() {
    Api.get(`/questions`)
    .then(res => { this.questions = res.data })
    .catch(err => {
        alert(err)
    })
  },
	methods: {
	}
}
</script>

