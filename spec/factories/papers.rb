FactoryGirl.define do
  factory :paper do
   title "COMPUTING MACHINERY AND INTELLIGENCE"
   venue "Mind 49: 433-460"
   year 1950
   authors {build_list :author, 1}
  end

  factory :paper2, class: :paper do
   title "go to statement considered harmful"
   venue "communications of the acm"
   year 1968
   authors {build_list :author, 1}
  end
end
