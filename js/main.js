//faixas verticais - home
const animation_elements = document.querySelectorAll('.ani');

const observer = new IntersectionObserver((entries) => {
	entries.forEach((entry) => {
		if (entry.isIntersecting) {
			entry.target.classList.add('animate');
		} else {
			entry.target.classList.remove('animate');
		}
	})
}, {
	threshold: 0.5
});

for (let i = 0; i < animation_elements.length; i++) {
	const el = animation_elements[i];

	observer.observe(el);
}
//faixas horizontais - home
const animation_elements1 = document.querySelectorAll('.ani1');

const observer1 = new IntersectionObserver((entries) => {
	entries.forEach((entry) => {
		if (entry.isIntersecting) {
			entry.target.classList.add('animate1');
		} else {
			entry.target.classList.remove('animate1');
		}
	})
}, {
	threshold: 0.9
});

for (let i = 0; i < animation_elements1.length; i++) {
	const el = animation_elements1[i];

	observer1.observe(el);
}
//circulos - home
const animation_elements2 = document.querySelectorAll('.ani2');
const observer2 = new IntersectionObserver((entries) => {
	entries.forEach((entry) => {
		if (entry.isIntersecting) {
			entry.target.classList.add('animate2');
		} else {
			entry.target.classList.remove('animate2');
		}
	})
}, {
	threshold: 0.5
});

for (let i = 0; i < animation_elements2.length; i++) {
	const el = animation_elements2[i];

	observer2.observe(el);
}

//divisorias footer
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
//faixas verticais - pacotes
const animation_elements4 = document.querySelectorAll('.ani4');
const observer4 = new IntersectionObserver((entries) => {
	entries.forEach((entry) => {
		if (entry.isIntersecting) {
			entry.target.classList.add('animate4');
		} else {
			entry.target.classList.remove('animate4');
		}
	})
} 
);

for (let i = 0; i < animation_elements4.length; i++) {
	const el = animation_elements4[i];

	observer4.observe(el);
}
//faixas horizontais -  pacotes
const animation_elements5 = document.querySelectorAll('.ani5');
const observer5 = new IntersectionObserver((entries) => {
	entries.forEach((entry) => {
		if (entry.isIntersecting) {
			entry.target.classList.add('animate5');
		} else {
			entry.target.classList.remove('animate5');
		}
	})
} 
);

for (let i = 0; i < animation_elements5.length; i++) {
	const el = animation_elements5[i];

	observer5.observe(el);
}