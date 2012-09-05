.class final Lcom/google/android/youtube/app/honeycomb/tablet/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/g;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;)V
    .registers 3
    .parameter

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/k;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->h(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->i(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0127

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(Lcom/google/android/youtube/app/honeycomb/tablet/g;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->e(Lcom/google/android/youtube/app/honeycomb/tablet/g;)V

    return-void
.end method
