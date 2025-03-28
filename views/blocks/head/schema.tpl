<script type="application/ld+json">
    {
        "@context": "http://schema.org",
        "@type": "Organization",
        "url": "{$fact_url->full}",
        "name": "{$page->seo->meta_title}",
        "image": "{$page->seo->og_image}",
        "description": "{$page->seo->meta_desc}",
        "telephone": "{$phone->title}",
        "email": "{$email->title}",
        "address": {
            "@type": "PostalAddress",
            "addressLocality": "Krasnodar",
            "streetAddress": "{$address}",
            "postalCode": "{$postal_code}"
        },
        "contactPoint": {
            "@type": "ContactPoint",
            "contactType": "sales",
            "name": "Менеджер",
            "telephone": "{$phone->title}"
        }
    }
</script>
