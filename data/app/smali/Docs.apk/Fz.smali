.class public LFz;
.super Lcg;
.source "GViewActivity.java"


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, LFz;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    iput-object p2, p0, LFz;->a:Landroid/net/Uri;

    invoke-direct {p0}, Lcg;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 191
    :try_start_1
    iget-object v0, p0, LFz;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LFX;

    const-string v1, "jsonMode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 192
    iget-object v0, p0, LFz;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    iget-object v1, p0, LFz;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Landroid/net/Uri;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_27

    .line 197
    :goto_15
    iget-object v0, p0, LFz;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    invoke-static {v0, v3}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Lcg;)Lcg;

    .line 199
    return-void

    .line 194
    :cond_1b
    :try_start_1b
    iget-object v0, p0, LFz;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    iget-object v1, p0, LFz;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_27

    goto :goto_15

    .line 197
    :catchall_27
    move-exception v0

    iget-object v1, p0, LFz;->a:Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    invoke-static {v1, v3}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Lcg;)Lcg;

    throw v0
.end method
