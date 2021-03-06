recipe 'emacs-24.4-travis' do
  tar_gz 'https://github.com/rejeep/evm/releases/download/v0.6.1/emacs-24.4-travis.tar.gz'

  abort('config.path must be /tmp') unless Evm.config[:path] == '/tmp'

  install do
    copy build_path, installations_path
  end
end
