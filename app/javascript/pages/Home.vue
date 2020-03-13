<template>
	<div>
    <QuestionCreateForm />
    <QuestionList />
	</div>
</template>

<script>
import QuestionCreateForm from '../components/QuestionCreateForm.vue'
import QuestionList from '../components/QuestionList.vue'

export default {
	components: {
    QuestionCreateForm,
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
