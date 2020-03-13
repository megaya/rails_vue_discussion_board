<template>
	<div>
    <b-card-group deck>
			<b-card
				border-variant="primary"
				header="Primary"
				header-bg-variant="primary"
				header-text-variant="white"
				align="center"
			>
				<b-card-text>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</b-card-text>
        <router-link :to="{ name: 'question_show', params: { id: 123 }}">
          unko
        </router-link>
			</b-card>

			<b-card
				border-variant="secondary"
				header="Secondary"
				header-border-variant="secondary"
				align="center"
			>
				<b-card-text>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</b-card-text>
			</b-card>

			<b-card border-variant="success" header="Success" align="center">
				<b-card-text>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</b-card-text>
			</b-card>
		</b-card-group>
	</div>
</template>

<script>
export default {
	data() {
		return {
		}
	},
	methods: {
	}
}
</script>

