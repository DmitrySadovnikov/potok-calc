jQuery(document).on 'turbolinks:load', ->
  payments = $('#payments')
  count = payments.find('.count > span')

  recount = -> count.text payments.find('.nested-fields').size()

  payments.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(1000)

  payments.on 'cocoon:after-insert', (e, added_el) ->
    added_el.effect('highlight', {}, 500)


  payments.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)

  payments.on 'cocoon:after-remove', (e, removed_el) ->
    recount()