# encoding: utf-8

module AdhearsionI18n::CallControllerMethods
  def t(key, **options)
    merged_options = { locale: locale }.merge(options || {})
    AdhearsionI18n.t key, **merged_options
  end

  def locale
    call[:locale] || AdhearsionI18n.locale
  end

  def locale=(l)
    call[:locale] = l
  end
end
