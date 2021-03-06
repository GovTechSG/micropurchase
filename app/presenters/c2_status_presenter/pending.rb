class C2StatusPresenter::Pending < C2StatusPresenter::Base
  attr_reader :auction

  def initialize(auction:)
    @auction = auction
  end

  def status
    I18n.t('statuses.c2_presenter.pending.status')
  end

  def header
    I18n.t('statuses.c2_presenter.pending.header')
  end

  def body
    I18n.t('statuses.c2_presenter.pending.body')
  end

  def action_partial
    'admin/auctions/pending'
  end
end
