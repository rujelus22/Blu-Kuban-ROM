.class final Lcom/google/android/youtube/core/async/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/l;

.field final synthetic b:Lcom/google/android/youtube/core/async/as;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/as;Lcom/google/android/youtube/core/async/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/youtube/core/async/at;->b:Lcom/google/android/youtube/core/async/as;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/at;->a:Lcom/google/android/youtube/core/async/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_17

    :goto_a
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/core/async/at;->a:Lcom/google/android/youtube/core/async/l;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void

    :cond_17
    move v0, v1

    goto :goto_a
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_23

    :goto_c
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/youtube/core/async/at;->a:Lcom/google/android/youtube/core/async/l;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/google/android/youtube/core/async/Optional$Null;->instance()Lcom/google/android/youtube/core/async/Optional;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_22
    return-void

    :cond_23
    move v0, v1

    goto :goto_c

    :cond_25
    iget-object v0, p0, Lcom/google/android/youtube/core/async/at;->a:Lcom/google/android/youtube/core/async/l;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_22
.end method
