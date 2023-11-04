module ProductsHelper
  def tab_button_class(path)
    if current_page?(path)
      'w-40 flex justify-center items-center h-12 bg-[#9748FF] cursor-pointer rounded-3xl border-2 border-[#9748FF]'
    else
      'w-40 flex justify-center items-center h-12 bg-white cursor-pointer rounded-3xl border-2 border-[#9748FF] shadow-[inset_0px_-2px_0px_1px_#9748FF] group hover:bg-[#9748FF] transition duration-300 ease-in-out'
    end
  end

  def tab_text_class(path)
    if current_page?(path)
      'font-medium text-white'
    else
      'font-medium text-[#333] group-hover:text-white'
    end
  end
end
