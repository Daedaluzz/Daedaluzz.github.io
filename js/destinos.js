// JavaScript Document//divisorias footer
const animation_elements3 = document.querySelectorAll('.ani3');
const observer3 = new IntersectionObserver((entries) => {
	entries.forEach((entry) => {
		if (entry.isIntersecting) {
			entry.target.classList.add('animate3');
		} else {
			entry.target.classList.remove('animate3');
		}
	})
}, {
	threshold: 0.5
});

for (let i = 0; i < animation_elements3.length; i++) {
	const el = animation_elements3[i];

	observer3.observe(el);
}
