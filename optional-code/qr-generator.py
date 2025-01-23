import qrcode

# Input: Your hyperlink
hyperlink = "https://n0ts0lazy.github.io/SRMconference2025/"

# Create a QR code instance
qr = qrcode.QRCode(
    version=1,  # Controls the size of the QR code (1 to 40)
    error_correction=qrcode.constants.ERROR_CORRECT_L,  # Error correction level
    box_size=10,  # Size of each box in pixels
    border=4,  # Thickness of the border (minimum is 4)
)

# Add data to the QR code
qr.add_data(hyperlink)
qr.make(fit=True)

# Create an image of the QR code
img = qr.make_image(fill_color="black", back_color="white")

# Save the image
img.save("page.png")

print("QR code generated and saved as 'qrcode.png'.")
