.class final Lcom/google/android/youtube/core/client/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/e;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/youtube/core/model/o;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/client/e;Ljava/lang/String;Lcom/google/android/youtube/core/model/o;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/android/youtube/core/client/i;->a:Lcom/google/android/youtube/core/client/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/google/android/youtube/core/client/i;->b:Ljava/lang/String;

    .line 240
    iput-object p3, p0, Lcom/google/android/youtube/core/client/i;->c:Lcom/google/android/youtube/core/model/o;

    .line 241
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 233
    const-string v0, "Error retrieving video for the ad"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/client/i;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->b(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/i;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 233
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    if-eqz p2, :cond_3b

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/google/android/youtube/core/client/i;->c:Lcom/google/android/youtube/core/model/o;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Privacy;->PUBLIC:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-ne v1, v2, :cond_26

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/o;->a()Lcom/google/android/youtube/core/model/p;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/p;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/p;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/p;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/p;->b()Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    :cond_26
    iget-object v1, p0, Lcom/google/android/youtube/core/client/i;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/e;->c(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/client/g;

    iget-object v4, p0, Lcom/google/android/youtube/core/client/i;->a:Lcom/google/android/youtube/core/client/e;

    iget-object v5, p0, Lcom/google/android/youtube/core/client/i;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/youtube/core/client/g;-><init>(Lcom/google/android/youtube/core/client/e;Ljava/lang/String;Lcom/google/android/youtube/core/model/o;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/client/ad;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/google/android/youtube/core/client/i;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->b(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/i;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3a
.end method
