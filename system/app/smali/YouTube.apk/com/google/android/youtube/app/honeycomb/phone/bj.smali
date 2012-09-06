.class final Lcom/google/android/youtube/app/honeycomb/phone/bj;
.super Lcom/google/android/youtube/core/ui/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/l;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bj;->b:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/phone/bj;->a:Lcom/google/android/youtube/core/async/l;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bj;->b:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->f(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bj;->b:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->c(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bj;->a:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/b/ae;->i(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 213
    return-void
.end method
