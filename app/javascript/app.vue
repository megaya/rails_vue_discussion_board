<template>
	<div>
		<Header />
    <b-container>
      <QuestionForm />
      <QuestionList />
    </b-container>
	</div>
</template>

<script>
import Header from './components/Header.vue'
import QuestionForm from './components/QuestionForm.vue'
import QuestionList from './components/QuestionList.vue'

export default {
	components: {
		Header,
    QuestionForm,
    QuestionList,
  },
	data() {
		return {
		}
	},
	methods: {
	}
}
</script>
