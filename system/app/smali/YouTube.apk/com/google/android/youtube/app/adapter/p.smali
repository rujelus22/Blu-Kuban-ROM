.class final Lcom/google/android/youtube/app/adapter/p;
.super Lcom/google/android/youtube/app/adapter/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/n;

.field final synthetic b:Lcom/google/android/youtube/app/adapter/o;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/adapter/o;Landroid/content/Context;Landroid/view/View;ILcom/google/android/youtube/app/adapter/n;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/p;->b:Lcom/google/android/youtube/app/adapter/o;

    iput-object p5, p0, Lcom/google/android/youtube/app/adapter/p;->a:Lcom/google/android/youtube/app/adapter/n;

    const v0, 0x7f08003a

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/youtube/app/adapter/i;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/youtube/core/async/l;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    check-cast p1, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/p;->b:Lcom/google/android/youtube/app/adapter/o;

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/o;->a:Lcom/google/android/youtube/app/adapter/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/n;->b(Lcom/google/android/youtube/app/adapter/n;)Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p3}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method
