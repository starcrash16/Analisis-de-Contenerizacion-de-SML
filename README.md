# 📦 Análisis Comparativo de Contenerización y Despliegue de Modelos de Lenguaje

**Autor:** R. R. De Anda M.  
**Documento base:** *Análisis Comparativo de Contenerización y Despliegue de LLMs (2025)*  
**Repositorio asociado:** [starcrash16/Analisis-de-Contenerizacion-de-SML](https://github.com/starcrash16/Analisis-de-Contenerizacion-de-SML)

---

## Resumen

Este proyecto presenta un análisis comparativo de **tecnologías de contenerización** (Docker y Podman) y **motores de inferencia** (vLLM y Ollama) aplicados al despliegue de **Modelos de Lenguaje Grandes (LLMs)** y **Modelos de Lenguaje Pequeños (SMLs)**.  
El documento original explora las ventajas, desafíos y casos de uso de cada herramienta, proponiendo pilas tecnológicas según distintos escenarios de implementación.

> *Referencia principal:* “Análisis Comparativo de Estrategias de Contenerización y Motores de Inferencia para el Despliegue de Modelos de Lenguaje”, R. R. De Anda M., 2025.

---

## Comparativa de Motores de Contenedores

- **Docker:** estándar de la industria, basado en un *daemon* central. Ofrece un amplio ecosistema y soporte multiplataforma, aunque con restricciones de licencia en su versión Desktop.
- **Podman:** arquitectura *daemonless* y enfoque *rootless* por defecto. Más seguro y completamente de código abierto, ideal para entornos corporativos o educativos.

Ambos motores son compatibles con Kubernetes y permiten integrar GPUs mediante el *NVIDIA Container Toolkit*.

---

## Despliegue de Modelos de Lenguaje

- **LLMs (Large Language Models):** alta capacidad de razonamiento y generación de texto, pero con gran demanda de recursos.
- **SMLs (Small Language Models):** versiones ligeras, adecuadas para dispositivos de bajo consumo y aplicaciones *edge*.

El documento recomienda desacoplar los **pesos del modelo** de la **imagen del contenedor**, para mejorar la escalabilidad y reproducibilidad en MLOps.

---

## Comparativa de Servidores de Inferencia

| Característica | **vLLM** | **Ollama** |
|----------------|-----------|-------------|
| **Arquitectura** | Modular, optimizada con *PagedAttention* y *dynamic batching* | Ligera, basada en *llama.cpp* |
| **Escalabilidad** | Alta concurrencia y soporte multi-GPU | Uso local o de baja concurrencia |
| **Compatibilidad** | Hugging Face, OpenAI, Meta | Modelos GGUF (LLaMA, Mistral, Phi, Gemma) |
| **Requerimientos** | GPU con CUDA o ROCm | CPU, bajo consumo |
| **Licencia** | Apache 2.0 | MIT |

> 🔸 *vLLM* se recomienda para producción y despliegues en la nube.  
> 🔹 *Ollama* es ideal para desarrollo local y prototipado rápido.

---

##  Contenerización en el Borde (Edge AI)

El uso combinado de **SMLs** y **Podman** potencia aplicaciones de **computación en el borde**, ofreciendo:
- Baja latencia y mayor privacidad.
- Imágenes ligeras y fáciles de actualizar.
- Compatibilidad multiplataforma (x86 / ARM).

Esta sinergia habilita arquitecturas de **IA híbrida**, donde los SMLs operan localmente y los LLMs en la nube.

---

## ☸️ Kubernetes y Orquestación

Kubernetes extiende la contenerización mediante:
- Escalado horizontal automático.
- Balanceo de carga y tolerancia a fallos.
- Integración con *CRI-O* y controladores NVIDIA.
- Observabilidad mediante *Prometheus* y *Grafana*.

Se consolida así como el estándar para el **despliegue masivo de modelos de lenguaje**.

---

## Implementación Práctica

El documento detalla la construcción y ejecución de un modelo **SML local con Podman en WSL2**, utilizando un `Containerfile` para definir la imagen y un `Modelfile` para especificar el modelo base.  
El procedimiento evidencia:
- La compatibilidad de Podman con entornos sin GPU.
- El uso de *vfs* como controlador de almacenamiento para evitar conflictos.
- La viabilidad de “hornear” modelos de forma autónoma dentro del contenedor.

---

## Conclusiones

- **Podman** destaca por su seguridad, apertura y compatibilidad con systemd.  
- **Docker** mantiene su ventaja en soporte y comunidad.  
- **Ollama** simplifica el desarrollo local, mientras que **vLLM** lidera el rendimiento en producción.  
- La **contenerización** es el eje que une despliegues locales, en la nube y en el borde, permitiendo flujos de trabajo flexibles y reproducibles en IA.

> *“La capacidad de empaquetar, aislar y portar de manera confiable los entornos de ejecución de los modelos de lenguaje es lo que permite que la IA avance del laboratorio a la producción a escala.”* — *R. R. De Anda M., 2025*

---

## Referencias Destacadas

- Đorđević, B. *et al.*, “Performance comparison of Docker and Podman container-based virtualization,” *INFOTEH*, 2022.  
- Red Hat, *Ollama vs. vLLM: A Deep Dive into Performance Benchmarking*, 2025.  
- NVIDIA, *nvidia/cuda* — Docker Hub, 2024.  
- Forbes, *Containerizing in Edge Computing*, 2025.  
- GitHub, *vllm-project/vllm* y *ollama/ollama*, 2024.  

---

## Repositorio del Proyecto

🔗 [https://github.com/starcrash16/Analisis-de-Contenerizacion-de-SML](https://github.com/starcrash16/Analisis-de-Contenerizacion-de-SML)

---

>  **Cita sugerida:**  
> De Anda M., R. R. (2025). *Análisis Comparativo de Estrategias de Contenerización y Motores de Inferencia para el Despliegue de Modelos de Lenguaje*.  
> GitHub Repository: [starcrash16/Analisis-de-Contenerizacion-de-SML](https://github.com/starcrash16/Analisis-de-Contenerizacion-de-SML)
