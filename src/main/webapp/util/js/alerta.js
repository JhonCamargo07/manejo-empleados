let alertaFlotante = (titulo, texto, colorBoton, imagen) => {
    swal.fire({
        title: `${titulo}`,
        text: `${texto}`,
        confirmButtonText: 'Ok, entend&#237;',
        confirmButtonColor: `${colorBoton}`,
        // imageUrl: `${imagen}`,
        // imageWidth: "auto",
        // imageHeight: 135,
        icon: `${imagen}`,
        timer: 5090,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        },
        showClass: {
            popup: 'animate__animated animate__fadeInDown'
        },
        hideClass: {
            popup: 'animate__animated animate__fadeOutUp'
        },
        allowOutsideClick: false,
        allowEscapeKey: false,
        allowEnterKey: false,
        stopKeydownPropagation: false,
    });
}
let alertaConFormulario = (titulo, texto, textBtn, colorBoton, imagen) => {
    swal.fire({
        title: `${titulo}`,
        text: `${texto}`,
        confirmButtonText: `${textBtn}`,
        confirmButtonColor: `${colorBoton}`,
        showCancelButton: true,
        cancelButtonText: 'Cancelar',
        // imageUrl: `${imagen}`,
        // imageWidth: "auto",
        // imageHeight: 135,
        icon: `${imagen}`,
        showClass: {
            popup: 'animate__animated animate__fadeInDown'
        },
        hideClass: {
            popup: 'animate__animated animate__fadeOutUp'
        },
    }).then((result) => {
        if (result.isConfirmed) {
            alertaDiminuta('success', 'Usuario actualizado correctamente');
        }
    })
}
let alertaFlotanteConRedirecion = (titulo, texto, colorBoton, imagen, direccion) => {
    swal.fire({
        title: `${titulo}`,
        text: `${texto}`,
        confirmButtonText: 'Ok, entendí',
        confirmButtonColor: `${colorBoton}`,
        imageUrl: `${imagen}`,
        imageWidth: "auto",
        imageHeight: 135,
        timer: 5090,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        },
        showClass: {
            popup: 'animate__animated animate__fadeInDown'
        },
        hideClass: {
            popup: 'animate__animated animate__fadeOutUp'
        },
        allowOutsideClick: false,
        allowEscapeKey: false,
        allowEnterKey: false,
        stopKeydownPropagation: false,
    }).then((result) => {
        if (result.isConfirmed) {
            location.href = `${direccion}`;
        }
    });
    // Redirecionar
    setInterval(() => {
        location.href = `${direccion}`;
    }, 5100);
}

let alertaDiminuta = (icon, title) => {
    swal.fire({
        icon: `${icon}`,
        title: `${title}`,
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    })
}
