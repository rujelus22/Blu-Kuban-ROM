.class public Lcom/google/googlenav/android/WebViewActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/CharSequence;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 55
    invoke-virtual {p0}, Lcom/google/googlenav/android/WebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_14

    .line 58
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 59
    if-eqz p2, :cond_14

    .line 60
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    :cond_14
    if-eqz p2, :cond_19

    .line 66
    invoke-virtual {p0, p2}, Lcom/google/googlenav/android/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    :cond_19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/googlenav/android/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    const-string v1, "icon_resource_id"

    const v2, 0x7f020219

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/android/WebViewActivity;->a(ILjava/lang/CharSequence;)V

    .line 43
    const v1, 0x7f0401ed

    invoke-virtual {p0, v1}, Lcom/google/googlenav/android/WebViewActivity;->setContentView(I)V

    .line 45
    const-string v1, "base_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v2, "html_string"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    const v0, 0x7f100014

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 50
    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
