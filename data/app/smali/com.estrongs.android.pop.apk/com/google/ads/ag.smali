.class public Lcom/google/ads/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/ai;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/m;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/m;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "a"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4a

    const-string v2, "resize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v0, "u"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/google/ads/k;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p1}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ah;->c:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "u"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, p3, v1}, Lcom/google/ads/k;->a(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_29

    :cond_4a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.apps.plus"

    const-string v4, "com.google.android.apps.circles.platform.PlusOneActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/google/ads/o;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.google.android.apps.plus"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1, v0}, Lcom/google/ads/o;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "d"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d9

    const-string v1, "o"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d9

    const-string v1, "c"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d9

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "d"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v0, "o"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v3, Lcom/google/ads/q;

    invoke-direct {v3, p1}, Lcom/google/ads/q;-><init>(Lcom/google/ads/internal/m;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v0, "c"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v3, Lcom/google/ads/p;

    invoke-direct {v3}, Lcom/google/ads/p;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_29

    :cond_d9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "u"

    const-string v2, "market://details?id=com.google.android.apps.plus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/ads/internal/n;

    const-string v2, "intent"

    invoke-direct {v1, v2, v0}, Lcom/google/ads/internal/n;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v1}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/m;Lcom/google/ads/internal/n;)V

    goto/16 :goto_29

    :cond_f1
    new-instance v0, Lcom/google/ads/internal/n;

    const-string v1, "plusone"

    invoke-direct {v0, v1, p2}, Lcom/google/ads/internal/n;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/m;Lcom/google/ads/internal/n;)V

    goto/16 :goto_29
.end method
