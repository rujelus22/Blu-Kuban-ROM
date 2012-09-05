.class final Lcom/google/android/youtube/core/async/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/android/youtube/core/async/aq;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/aq;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 399
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 400
    iget-object v0, p0, Lcom/google/android/youtube/core/async/aq;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 401
    iget-object v0, p0, Lcom/google/android/youtube/core/async/aq;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/aq;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;)V

    .line 402
    return-void
.end method
