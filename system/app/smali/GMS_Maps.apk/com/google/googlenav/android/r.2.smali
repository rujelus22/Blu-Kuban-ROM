.class Lcom/google/googlenav/android/r;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/i;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/google/googlenav/android/r;->a:Lcom/google/googlenav/android/i;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/x;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 550
    new-instance v1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/googlenav/android/r;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->d(Lcom/google/googlenav/android/i;)Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 551
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    .line 552
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->l()Lcom/google/googlenav/common/io/g;

    move-result-object v0

    check-cast v0, LV/a;

    invoke-virtual {v0, v2}, LV/a;->a(Ljava/lang/String;)V

    .line 554
    const-string v0, "UserAgentPref"

    invoke-static {v0, v2}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 556
    return-void
.end method
