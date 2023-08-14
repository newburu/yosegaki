module ApplicationHelper
  def default_meta_tags
    {
      site: Settings.system[:title],
      title: Settings.system[:title],
      reverse: true,
      charset: 'utf-8',
      description: Settings.system[:description],
      keywords: Settings.system[:keywords],
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('logo.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og: {
        site_name: Settings.system[:title],
        title: Settings.system[:title],
        description: Settings.system[:description],
        type: 'website',
        url: request.original_url,
        image: image_url('eyecatch.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: ENV['TWITTER_CARD_TYPE'],
        site: "@#{Settings.system[:twitter_site]}",
      }
    }
  end

  def login?
    current_user.present?
  end

end
