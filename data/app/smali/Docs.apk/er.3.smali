.class Ler;
.super Ldd;
.source "DocsPreferencesActivity.java"


# instance fields
.field final synthetic a:Leq;


# direct methods
.method constructor <init>(Leq;)V
    .registers 2
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Ler;->a:Leq;

    invoke-direct {p0}, Ldd;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 4

    .prologue
    .line 258
    iget-object v0, p0, Ler;->a:Leq;

    iget-object v0, v0, Leq;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 259
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 260
    iget-object v0, p0, Ler;->a:Leq;

    iget-object v0, v0, Leq;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->startActivity(Landroid/content/Intent;)V

    .line 261
    return-void
.end method
