.class public final Lcom/google/android/youtube/app/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/b/k;
.implements Lcom/google/android/youtube/core/async/ad;


# instance fields
.field private final a:Lcom/google/android/youtube/app/b/i;

.field private final b:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/b/i;)V
    .registers 3
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "prefetchStore can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/b/i;

    iput-object v0, p0, Lcom/google/android/youtube/app/b/c;->a:Lcom/google/android/youtube/app/b/i;

    .line 28
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/b/c;->b:Landroid/os/ConditionVariable;

    .line 29
    invoke-virtual {p1, p0}, Lcom/google/android/youtube/app/b/i;->a(Lcom/google/android/youtube/app/b/k;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/app/b/c;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/b/c;->a:Lcom/google/android/youtube/app/b/i;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/b/i;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/u;

    move-result-object v0

    if-nez v0, :cond_1e

    new-instance v0, Lcom/google/android/youtube/core/player/MissingStreamException;

    invoke-direct {v0}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_1d
    return-void

    :cond_1e
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method public final j()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/b/c;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 45
    return-void
.end method
