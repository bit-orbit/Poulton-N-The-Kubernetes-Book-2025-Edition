// قالب جامع و استاندارد نشر کتاب کوبرنتیز ۲۰۲۵ (The Kubernetes Book - 2025 Edition)

#let project(
  title: "کتاب کوبرنتیز (ویرایش ۲۰۲۵)",
  subtitle: "راهنمای جامع، کاربردی و عمیق از مبانی تا امنیت و مقیاس‌پذیری",
  author: "نایجل پولتون (Nigel Poulton)",
  contributor: "پوشکار جوگلکار (Pushkar Joglekar)",
  translator: "ترجمه و تفسیر تخصصی فارسی",
  version: "سازگار با Kubernetes v1.32",
  body
) = {
  // تنظیمات صفحه و حاشیه‌ها
  set page(
    paper: "a4",
    margin: (x: 2.2cm, top: 2.5cm, bottom: 2.5cm),
    header: context {
      if here().page() > 2 {
        align(center)[
          #text(size: 8.5pt, fill: rgb("#64748b"), font: "Vazirmatn")[
            کتاب کوبرنتیز (ویرایش ۲۰۲۵) • نایجل پولتون
          ]
          #line(length: 100%, stroke: 0.5pt + rgb("#cbd5e1"))
        ]
      }
    },
    footer: context {
      if here().page() > 2 {
        align(center)[
          #line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
          #v(2pt)
          #text(size: 9pt, fill: rgb("#475569"), font: "Vazirmatn")[
            صفحه #counter(page).display()
          ]
        ]
      }
    }
  )

  // تنظیمات کلی متن و فونت
  set text(
    font: "Vazirmatn",
    lang: "fa",
    dir: rtl,
    size: 10.5pt,
    fill: rgb("#1e293b"),
    spacing: 120%
  )

  // تنظیمات پاراگراف
  set par(
    justify: true,
    leading: 0.85em,
    first-line-indent: 0pt
  )

  // استایل عنوان‌ها
  show heading: it => {
    set text(fill: rgb("#0f172a"), weight: "bold")
    if it.level == 1 {
      v(1.5em)
      text(size: 18pt, fill: rgb("#0369a1"))[#it.body]
      v(0.8em)
      line(length: 100%, stroke: 1.5pt + rgb("#0284c7"))
      v(1em)
    } else if it.level == 2 {
      v(1.2em)
      text(size: 14pt, fill: rgb("#1e293b"))[#it.body]
      v(0.6em)
    } else if it.level == 3 {
      v(1em)
      text(size: 12pt, fill: rgb("#334155"))[#it.body]
      v(0.4em)
    } else {
      v(0.8em)
      text(size: 11pt, fill: rgb("#475569"))[#it.body]
      v(0.3em)
    }
  }

  // استایل کدهای درون‌خطی و بلوک‌های کد
  show raw: it => {
    if it.block {
      block(
        fill: rgb("#0f172a"),
        inset: 12pt,
        radius: 6pt,
        width: 100%,
        stroke: 1pt + rgb("#1e293b"),
        clip: true,
        align(left)[
          #set text(
            dir: ltr,
            font: "DejaVu Sans Mono",
            size: 9pt,
            fill: rgb("#f8fafc")
          )
          #it
        ]
      )
    } else {
      box(
        fill: rgb("#f1f5f9"),
        inset: (x: 4pt, y: 1.5pt),
        radius: 3pt,
        baseline: 0pt,
        outset: 0pt,
        [
          #set text(
            dir: ltr,
            font: "DejaVu Sans Mono",
            size: 9.5pt,
            fill: rgb("#0369a1")
          )
          #it
        ]
      )
    }
  }

  // صفحه جلد اصلی کتاب (Original Front Cover)
  page(header: none, footer: none, margin: 0cm)[
    #image("images/cover.png", width: 100%, height: 100%, fit: "cover")
  ]

  // صفحه شناسنامه کتاب
  page(header: none, footer: none)[
    #v(3cm)
    #align(right)[
      #text(size: 16pt, weight: "bold", fill: rgb("#0f172a"))[درباره این ویرایش (۲۰۲۵)]
      #v(1em)
      این نسخه بر مبنای ویرایش منتشر شده در فوریه ۲۰۲۵ کتاب *The Kubernetes Book* اثر نایجل پولتون تهیه شده است. در این ویرایش، تمام واژگان، تئوری‌ها و کدهای عملیاتی با جدیدترین نسخه استاندارد کوبرنتیز (*v1.32*) مطابقت داده شده‌اند. ویژگی‌های مدرن معماری مانند *Native Sidecar Containers*، اجرای کدهای *WebAssembly (Wasm)* بر روی کلاستر، و مدل‌سازی امنیتی تهدیدات با چارچوب *STRIDE* در این ویرایش به طور تفسیری و دقیق تشریح شده‌اند.
      
      #v(2em)
      #line(length: 100%, stroke: 0.5pt + rgb("#cbd5e1"))
      #v(1.5em)
      
      *مشخصات و دسترسی:*
      - *مخزن کدهای رسمی کتاب:* `https://github.com/nigelpoulton/TKB.git` (شاخه `2025`)
      - *رویکرد این اثر:* فراتر از یک ترجمه تحت‌اللفظی؛ انتقال شفاف تجربیات، کالبدشکافی سناریوهای واقعی مهندسی و مستندسازی گام‌به‌گام دستورات و مانیفست‌های YAML.
    ]
  ]

  // صفحه فهرست مطالب
  page[
    #outline(
      title: [فهرست مطالب],
      indent: 1.5em,
      depth: 2
    )
  ]

  body
}

// کامپوننت‌های کمکی برای کادرهای توضیحی و تفسیری
#let note(title: none, body) = {
  block(
    fill: rgb("#f0f9ff"),
    inset: (x: 14pt, y: 10pt),
    radius: 5pt,
    width: 100%,
    stroke: (right: 4pt + rgb("#0284c7")),
    [
      #text(weight: "bold", fill: rgb("#0369a1"))[📌 نکته مهم:#if title != none [ #title]] \
      #v(3pt)
      #body
    ]
  )
}

#let tip(title: none, body) = {
  block(
    fill: rgb("#f0fdf4"),
    inset: (x: 14pt, y: 10pt),
    radius: 5pt,
    width: 100%,
    stroke: (right: 4pt + rgb("#16a34a")),
    [
      #text(weight: "bold", fill: rgb("#15803d"))[💡 ترفند و تجربه عملیاتی:#if title != none [ #title]] \
      #v(3pt)
      #body
    ]
  )
}

#let warning(title: none, body) = {
  block(
    fill: rgb("#fffbeb"),
    inset: (x: 14pt, y: 10pt),
    radius: 5pt,
    width: 100%,
    stroke: (right: 4pt + rgb("#d97706")),
    [
      #text(weight: "bold", fill: rgb("#b45309"))[⚠️ هشدار:#if title != none [ #title]] \
      #v(3pt)
      #body
    ]
  )
}

#let concept(title: "تحلیل مفهومی و معماری", body) = {
  block(
    fill: rgb("#f8fafc"),
    inset: (x: 14pt, y: 10pt),
    radius: 5pt,
    width: 100%,
    stroke: 1pt + rgb("#e2e8f0"),
    [
      #block(
        fill: rgb("#e0e7ff"),
        inset: (x: 8pt, y: 3pt),
        radius: 3pt,
        text(weight: "bold", fill: rgb("#4338ca"), size: 9pt)[#title]
      )
      #v(4pt)
      #body
    ]
  )
}

// کامپوننت نمایش تصاویر و نمودارها مطابق استایل رسمی کتاب
#let fig(path, caption, width: 82%) = {
  v(0.8em)
  align(center)[
    #box(
      radius: 4pt,
      clip: true,
      fill: rgb("#ffffff"),
      stroke: 0.5pt + rgb("#e2e8f0"),
      inset: 4pt,
      [#image(path, width: width)]
    )
    #v(0.4em)
    #text(size: 9pt, weight: "bold", fill: rgb("#475569"))[#caption]
  ]
  v(0.8em)
}
