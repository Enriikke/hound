class BraceRule < Rule
  def violated?
    braces = /{|}/
    space_around_braces = /\s\{(\s[^\s]|\n).*(\n\s+|[^\s]\s)\}/m

    if has?(braces)
      does_not_have?(space_around_braces)
    end
  end

  def does_not_have?(pattern)
    !has?(pattern)
  end
end