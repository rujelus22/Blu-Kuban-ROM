.class public abstract Lcom/google/android/youtube/core/async/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 3
    .parameter

    .prologue
    .line 146
    check-cast p1, Lcom/google/android/youtube/core/async/aj;

    iget-object v0, p1, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method

.method public a(Lcom/google/android/youtube/core/async/aj;Ljava/lang/Exception;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p1, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_6

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x191

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/d;->a(Ljava/lang/Throwable;I)Z

    move-result v0

    goto :goto_5
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 146
    check-cast p1, Lcom/google/android/youtube/core/async/aj;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/al;->a(Lcom/google/android/youtube/core/async/aj;Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method
