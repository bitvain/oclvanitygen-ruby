require 'oclvanitygen'

if defined? ::Vanitygen
  if ::Vanitygen == ::Oclvanitygen
    warn 'warning: Vanitygen already defined. Possible double load issue.'
  else
    raise LoadError.new('Vanitygen already defined. Refusing to clobber.')
  end
end

::Vanitygen = ::Oclvanitygen
$LOAD_PATH.unshift File.expand_path('../vanitygen_shim', __FILE__)
