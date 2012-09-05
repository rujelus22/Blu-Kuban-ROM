.class final Lcom/google/android/youtube/app/honeycomb/tablet/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/v;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/v;)V
    .registers 2
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/w;->a:Lcom/google/android/youtube/app/honeycomb/tablet/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/w;->a:Lcom/google/android/youtube/app/honeycomb/tablet/v;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->k(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/w;->a:Lcom/google/android/youtube/app/honeycomb/tablet/v;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->i(Lcom/google/android/youtube/app/honeycomb/tablet/n;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/w;->a:Lcom/google/android/youtube/app/honeycomb/tablet/v;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->j(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a017f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    return-void
.end method
