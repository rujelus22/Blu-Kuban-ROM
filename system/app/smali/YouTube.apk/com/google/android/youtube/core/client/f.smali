.class final Lcom/google/android/youtube/core/client/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/e;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/core/client/e;)V
    .registers 3
    .parameter

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/client/f;-><init>(Lcom/google/android/youtube/core/client/e;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/client/e;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/youtube/core/client/f;->a:Lcom/google/android/youtube/core/client/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 150
    check-cast p1, Ljava/lang/String;

    const-string v0, "Error retrieving ad tag"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/client/f;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->b(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    move-object v2, p1

    .line 150
    check-cast v2, Ljava/lang/String;

    check-cast p2, Lcom/google/android/youtube/core/model/a;

    if-eqz p2, :cond_36

    iget-object v0, p0, Lcom/google/android/youtube/core/client/f;->a:Lcom/google/android/youtube/core/client/e;

    iget v1, p2, Lcom/google/android/youtube/core/model/a;->a:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/e;->a(Lcom/google/android/youtube/core/client/e;I)I

    iget-object v0, p2, Lcom/google/android/youtube/core/model/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/youtube/core/client/f;->a:Lcom/google/android/youtube/core/client/e;

    iget-object v0, v0, Lcom/google/android/youtube/core/client/e;->c:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/c;->a()J

    move-result-wide v0

    const-wide/16 v4, 0x1388

    add-long/2addr v4, v0

    new-instance v0, Lcom/google/android/youtube/core/client/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/f;->a:Lcom/google/android/youtube/core/client/e;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/client/h;-><init>(Lcom/google/android/youtube/core/client/e;Ljava/lang/String;Ljava/util/Iterator;J)V

    iget-object v1, p0, Lcom/google/android/youtube/core/client/f;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/e;->a(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/google/android/youtube/core/client/f;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->b(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_35
.end method
