.class final Lcom/google/android/youtube/app/honeycomb/tablet/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/u;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/u;)V
    .registers 2
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/u;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->k(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/u;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->i(Lcom/google/android/youtube/app/honeycomb/tablet/m;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/u;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->j(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b01db

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    return-void
.end method
