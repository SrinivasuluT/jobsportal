json.array!(@posts) do |post|
  json.extract! post, :id, :title, :company, :location, :jobdescription, :experience, :designation, :role, :rolecategory, :educationqualification, :jobspecification, :candidatedetails, :contactdetails
  json.url post_url(post, format: :json)
end
