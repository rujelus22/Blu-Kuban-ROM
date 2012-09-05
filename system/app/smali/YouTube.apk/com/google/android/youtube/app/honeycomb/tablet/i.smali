.class final Lcom/google/android/youtube/app/honeycomb/tablet/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/i;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/i;->b:Ljava/lang/String;

    .line 393
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 384
    instance-of v0, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_23

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/i;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    const v1, 0x7f0a0126

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(Lcom/google/android/youtube/app/honeycomb/tablet/g;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/i;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->f(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/i;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3f9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/i;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->h(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/i;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/i;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/i;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->e(Lcom/google/android/youtube/app/honeycomb/tablet/g;)V

    return-void
.end method
