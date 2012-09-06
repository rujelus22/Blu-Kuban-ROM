.class LLv;
.super Ljava/lang/Object;
.source "OpenUrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LLt;


# direct methods
.method constructor <init>(LLt;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, LLv;->a:LLt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 270
    iget-object v0, p0, LLv;->a:LLt;

    iget-object v0, v0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iget-object v1, p0, LLv;->a:LLt;

    iget-object v1, v1, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iget-object v2, p0, LLv;->a:LLt;

    iget-object v2, v2, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, LLv;->a:LLt;

    iget-object v3, v3, LLt;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;Landroid/content/Intent;)V

    .line 272
    return-void
.end method
