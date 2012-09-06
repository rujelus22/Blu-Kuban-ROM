.class final Lcom/google/android/youtube/app/honeycomb/phone/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/c;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/bm;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/bm;Lcom/google/android/youtube/core/async/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bq;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bq;->a:Lcom/google/android/youtube/core/async/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 118
    const-string v0, "Error downloading video data"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 118
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bq;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->e(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bq;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->f(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bq;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->g(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bq;->a:Lcom/google/android/youtube/core/async/c;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    :cond_32
    iget-object v0, p2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bq;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->h(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bq;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->i(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p2, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_50
    return-void
.end method
