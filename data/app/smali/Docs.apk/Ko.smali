.class LKo;
.super Ljava/lang/Object;
.source "KixWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LKn;

.field final synthetic a:Lmu;


# direct methods
.method constructor <init>(LKn;Lmu;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, LKo;->a:LKn;

    iput-object p2, p0, LKo;->a:Lmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, LKo;->a:Lmu;

    invoke-interface {v0}, Lmu;->a()Ljava/lang/Object;
    :try_end_5
    .catch LmM; {:try_start_0 .. :try_end_5} :catch_6

    .line 210
    :goto_5
    return-void

    .line 206
    :catch_6
    move-exception v0

    .line 208
    iget-object v0, p0, LKo;->a:LKn;

    iget-object v0, v0, LKn;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:LXJ;

    iget-object v1, p0, LKo;->a:LKn;

    iget-object v1, v1, LKn;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    sget v2, LcY;->comment_post_error:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
