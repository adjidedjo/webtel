json.set! :data do
  json.array! @branches do |branch|
    json.partial! 'branches/branch', branch: branch
    json.url  "
              #{link_to 'Show', branch }
              #{link_to 'Edit', edit_branch_path(branch)}
              #{link_to 'Destroy', branch, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end