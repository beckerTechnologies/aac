WickedPdf.config = {
  :exe_path => (Rails.env.test? || Rails.env.development? ? '/usr/local/bin/wkhtmltopdf-i386' : Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s)
}