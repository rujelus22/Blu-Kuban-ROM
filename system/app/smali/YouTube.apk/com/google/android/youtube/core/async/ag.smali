.class public final Lcom/google/android/youtube/core/async/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ad;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ad;

.field private final b:Lcom/google/android/youtube/core/utils/i;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/utils/i;ZZZLjava/util/Set;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "videoRequester cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ag;->a:Lcom/google/android/youtube/core/async/ad;

    .line 37
    const-string v0, "networkStatus cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/i;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ag;->b:Lcom/google/android/youtube/core/utils/i;

    .line 38
    iput-boolean p3, p0, Lcom/google/android/youtube/core/async/ag;->c:Z

    .line 39
    iput-boolean p4, p0, Lcom/google/android/youtube/core/async/ag;->d:Z

    .line 40
    iput-boolean p5, p0, Lcom/google/android/youtube/core/async/ag;->e:Z

    .line 41
    iput-object p6, p0, Lcom/google/android/youtube/core/async/ag;->f:Ljava/util/Set;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/ag;)Z
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/ag;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/ag;Ljava/util/Set;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    iget-boolean v2, v0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-eq v2, v3, :cond_20

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-ne v2, v3, :cond_4

    :cond_20
    iget-object v2, p0, Lcom/google/android/youtube/core/async/ag;->f:Ljava/util/Set;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ag;->f:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/ag;Ljava/util/Set;)Lcom/google/android/youtube/core/model/Stream;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/ag;->c:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ag;->b:Lcom/google/android/youtube/core/utils/i;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/i;->f()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ag;->f:Ljava/util/Set;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/model/Stream$Quality;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/google/android/youtube/core/model/Stream;->firstAvailable3DStream(Ljava/util/Set;Ljava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method static synthetic c(Lcom/google/android/youtube/core/async/ag;Ljava/util/Set;)Lcom/google/android/youtube/core/model/Stream;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/ag;->d:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/ag;->c:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ag;->b:Lcom/google/android/youtube/core/utils/i;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/i;->f()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ag;->f:Ljava/util/Set;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v1, v4

    invoke-static {p1, v0, v1}, Lcom/google/android/youtube/core/model/Stream;->firstAvailable2DStream(Ljava/util/Set;Ljava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    goto :goto_7

    :cond_26
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ag;->f:Ljava/util/Set;

    new-array v1, v4, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/google/android/youtube/core/model/Stream;->firstAvailable2DStream(Ljava/util/Set;Ljava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    goto :goto_7
.end method

.method static synthetic d(Lcom/google/android/youtube/core/async/ag;Ljava/util/Set;)Lcom/google/android/youtube/core/model/Stream;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ag;->f:Ljava/util/Set;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/model/Stream$Quality;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/google/android/youtube/core/model/Stream;->firstAvailable3DStream(Ljava/util/Set;Ljava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/async/ag;Ljava/util/Set;)Lcom/google/android/youtube/core/model/Stream;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/ag;->c:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ag;->b:Lcom/google/android/youtube/core/utils/i;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/i;->f()Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-ne v0, v3, :cond_16

    move v0, v1

    :goto_27
    if-eqz v0, :cond_40

    new-array v0, v6, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v3, v0, v2

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_144P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v5

    :goto_37
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ag;->f:Ljava/util/Set;

    invoke-static {p1, v1, v0}, Lcom/google/android/youtube/core/model/Stream;->firstAvailable2DStream(Ljava/util/Set;Ljava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    :goto_3d
    return-object v0

    :cond_3e
    move v0, v2

    goto :goto_27

    :cond_40
    new-array v0, v5, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v3, v0, v2

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_144P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    goto :goto_37

    :cond_4b
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ag;->f:Ljava/util/Set;

    new-array v3, v6, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v4, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v4, v3, v2

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_144P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v3, v1

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v3, v5

    invoke-static {p1, v0, v3}, Lcom/google/android/youtube/core/model/Stream;->firstAvailable2DStream(Ljava/util/Set;Ljava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    goto :goto_3d
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ag;->a:Lcom/google/android/youtube/core/async/ad;

    new-instance v1, Lcom/google/android/youtube/core/async/ah;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/ah;-><init>(Lcom/google/android/youtube/core/async/ag;Lcom/google/android/youtube/core/async/g;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 46
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/ag;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/g;)V

    return-void
.end method
