.class final Lcom/google/android/youtube/app/honeycomb/phone/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bi;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bi;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->e(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bi;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->d(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/app/adapter/br;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bi;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->c(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/br;->a(Lcom/google/android/youtube/core/model/Video;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bi;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    const v1, 0x7f0b01db

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    return-void
.end method
