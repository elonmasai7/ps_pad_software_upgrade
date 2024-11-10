section .data
    ; Buffer to store controller input
    input_buffer db 0

section .text
    global _read_ps_input

_read_ps_input:
    ; Reading a byte from the controller (port 0x60 is standard for PS/2)
    mov al, 0x60      ; Set port address to read
    in al, 0x60       ; Read from port 0x60
    mov [input_buffer], al ; Store input byte in buffer
    ret               ; Return to C co
de
