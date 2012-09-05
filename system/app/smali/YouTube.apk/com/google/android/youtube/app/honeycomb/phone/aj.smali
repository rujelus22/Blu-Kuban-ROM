.class final Lcom/google/android/youtube/app/honeycomb/phone/aj;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/g;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->b:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->a:Lcom/google/android/youtube/core/async/g;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->b:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->f(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->b:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->c(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->a:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/client/ad;->h(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 218
    return-void
.end method
