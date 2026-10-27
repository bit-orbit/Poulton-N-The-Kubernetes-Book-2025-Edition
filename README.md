# کتاب کوبرنتیز (ویرایش ۲۰۲۵) • The Kubernetes Book

[![Typst Version](https://img.shields.io/badge/Typst-v0.15+-blue?logo=typst)](https://typst.app/)
[![Kubernetes Version](https://img.shields.io/badge/Kubernetes-v1.32-326CE5?logo=kubernetes&logoColor=white)](https://kubernetes.io/)
[![Font](https://img.shields.io/badge/Font-Vazirmatn-emerald)](https://github.com/rastikerdar/vazirmatn)
[![License](https://img.shields.io/badge/License-Open--Access-purple)](LICENSE)

ترجمه و تحلیل عمیق مهندسی کتاب مرجع **The Kubernetes Book (2025 Edition)** اثر **نایجل پولتون (Nigel Poulton)** با همکاری **پوشکار جوگلکار (Pushkar Joglekar)** برای جامعه مهندسی نرم‌افزار، DevOps و Cloud-Native ایران.

---

## 📖 درباره این کتاب و رویکرد ترجمه

این اثر صرفاً یک ترجمه کلمه‌به‌کلمه نیست؛ بلکه یک **بازنویسی تفسیری و مفهومی (Interpretive Translation)** بر پایه نیازمندی‌ها، سناریوهای پروداکشن و ادبیات استاندارد مهندسی (**Developer Persian**) است:
- **پرهیز از واژگان نامأنوس:** استفاده از اصطلاحات اصیل صنعتی (اسکیل کردن، دیپلویمنت، پایپ‌لاین، کش، اینگرس و رول‌بک) به‌جای معادل‌های لغوی و گیج‌کننده.
- **صفحه‌آرایی تخصصی با Typst:** متن کتاب با موتور مدرن Typst و قلم زیبای **وزیرمتن (Vazirmatn)** در انواع وزن‌ها همراه با نمودارها، کادرهای راهنما (نکته، هشدار، تحلیل عمیق) و قطعه‌کدهای خوانا صفحه‌آرایی شده است.
- **به‌روزرسانی با کوبرنتیز v1.32:** پوشش امکانات نوین شامل سایدکارهای بومی (Native Sidecars)، اشیای مدرن EndpointSlice، استقرار بارهای کاری WebAssembly (Wasm) با runwasi و مدل‌سازی تهدیدات امنیتی با STRIDE.

---

## 📑 سرفصل‌های کتاب (Table of Contents)

| شماره | فصل | عنوان انگلیسی | مباحث کلیدی |
| :---: | :--- | :--- | :--- |
| **۰** | پیش‌گفتار | Preface | معرفی نسخه ۲۰۲۵، اکوسیستم و منابع |
| **۱** | الفبای کوبرنتیز | Kubernetes Primer | تاریخچه، چرا کوبرنتیز؟، کانتینرها در برابر VM |
| **۲** | اصول بنیادین کارکرد | Principles of Operation | معماری Control Plane در برابر Worker، مدل اعلانی |
| **۳** | راه‌اندازی و دسترسی | Getting Kubernetes | ابزار kubectl، ساختار kubeconfig و کلاسترهای محلی |
| **۴** | کار با پادها | Working with Pods | سایدکارهای بومی، کانتینرهای Init، چرخه حیات پاد |
| **۵** | نیم‌اسپیس‌ها | Namespaces | کلاسترهای مجازی، سهمیه‌بندی منابع، چندمستأجری |
| **۶** | دیپلویمنت‌ها | Deployments | اسکیل دستی و خودکار (HPA)، مکانیزم Rolling Update، رول‌بک |
| **۷** | سرویس‌ها و شبکه پایدار | Services | انواع سرویس، معماری kube-proxy و EndpointSlice |
| **۸** | مدیریت هوشمند با اینگرس | Ingress | مسیریابی لایه ۷، قوانین Ingress Controller و مانیفست‌ها |
| **۹** | وب‌اسمبلی در کوبرنتیز | Wasm on Kubernetes | اجرای کدهای بدون کانتینر در میکروثانیه با containerd |
| **۱۰** | کالبدشکافی سرویس دیسکاوری | Service Discovery | مکانیزم داخلی CoreDNS، تفکیک FQDN و پارامتر ndots |
| **۱۱** | سیستم ذخیره‌سازی | Storage Subsystem | معماری پلاگین CSI، اشیای PV ،PVC و StorageClass |
| **۱۲** | مدیریت کانفیگ و سکرت‌ها | ConfigMaps & Secrets | تزریق متغیرها، امن‌سازی داده‌های حساس، محدودیت‌ها |
| **۱۳** | برنامه‌های دارای وضعیت | StatefulSets | هویت پایدار پادها، سرویس Headless و پایگاه‌های داده |
| **۱۴** | امنیت API و دسترسی نقشی | API Security & RBAC | زنجیره احراز هویت (AuthN)، مجازشماری (RBAC) و Admission |
| **۱۵** | کالبدشکافی سرور API | The Kubernetes API | معماری داخلی kube-apiserver، مکانیزم Watch و CRDها |
| **۱۶** | مدل‌سازی تهدیدات امنیتی | Threat Modeling | چارچوب ۶ بخشی STRIDE و بردارهای حمله به کلاستر |
| **۱۷** | امنیت در دنیای واقعی | Real-World Security | شبکه‌های Overlay در برابر BGP، امضای ایمیج، PSS و Seccomp |
| **۱۸** | واژه‌نامه جامع اصطلاحات | Glossary | تعاریف تخصصی دوزبانه انگلیسی و فارسی مهندسی |
| **۱۹** | منابع، آزمون‌ها و کلام آخر | Outro & References | نقشه راه آزمون‌های رسمی CKA/CKAD/CKS و مراجع برتر |

---

## 🛠️ کامپایل محلی و خروجی PDF با Typst

برای کامپایل نسخه فارسی کتاب:
```bash
# نصب کامپایلر تایپست (در صورت عدم نصب)
# https://github.com/typst/typst

# کامپایل کتاب با ارجاع به فونت‌های موجود در پروژه
typst compile --font-path fonts book.typ The-Kubernetes-Book-2025-Persian.pdf
```

---

## 🤖 راهنمای هوش مصنوعی و مشارکت
جهت مشارکت و رعایت استانداردهای لحن و ترجمه:
- مطالعه [AGENTS.md](AGENTS.md) الزامی است.
- گردش‌کار و چک‌لیست تسک‌ها در [todo.md](todo.md) نگهداری می‌شود.
