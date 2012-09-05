.class Lcom/google/googlenav/android/u;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/l;ZZ)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/android/u;->a:Lcom/google/googlenav/android/l;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/x;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    new-instance v1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/googlenav/android/u;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->d(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->m()Lak/i;

    move-result-object v0

    check-cast v0, Lal/g;

    invoke-virtual {v0, v2}, Lal/g;->a(Ljava/lang/String;)V

    const-string v0, "UserAgentPref"

    invoke-static {v0, v2}, Laf/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
