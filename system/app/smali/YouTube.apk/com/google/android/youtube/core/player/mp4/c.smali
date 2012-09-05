.class public final Lcom/google/android/youtube/core/player/mp4/c;
.super Lcom/google/android/youtube/core/player/mp4/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILcom/google/android/youtube/core/player/mp4/s;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/mp4/a;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/c;->a:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/player/mp4/s;IZ)Lcom/google/android/youtube/core/player/mp4/a;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/a;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/a;->c()Lcom/google/android/youtube/core/player/mp4/s;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    if-eqz p3, :cond_26

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/a;->d()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 106
    :cond_26
    if-ne v1, p2, :cond_29

    .line 113
    :goto_28
    return-object v0

    .line 109
    :cond_29
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_2c
    move v1, v0

    goto :goto_8

    .line 113
    :cond_2e
    const/4 v0, 0x0

    goto :goto_28

    :cond_30
    move v0, v1

    goto :goto_2c
.end method


# virtual methods
.method public final a()I
    .registers 4

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/a;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/a;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_8

    .line 55
    :cond_1b
    add-int/lit8 v0, v1, 0x8

    return v0
.end method

.method public final a(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/a;
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/youtube/core/player/mp4/c;->a(Lcom/google/android/youtube/core/player/mp4/s;IZ)Lcom/google/android/youtube/core/player/mp4/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/player/mp4/s;I)Lcom/google/android/youtube/core/player/mp4/c;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/player/mp4/c;->a(Lcom/google/android/youtube/core/player/mp4/s;IZ)Lcom/google/android/youtube/core/player/mp4/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/c;

    return-object v0
.end method

.method public final a(Ljava/io/DataInputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/c;->b()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 38
    invoke-static {p1}, Lcom/google/android/youtube/core/player/mp4/b;->a(Ljava/io/DataInputStream;)Lcom/google/android/youtube/core/player/mp4/a;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/google/android/youtube/core/player/mp4/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/mp4/a;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    goto :goto_1

    .line 43
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/c;->b()I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 44
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incorrect container atom size."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_24
    return-void
.end method

.method public final b(Lcom/google/android/youtube/core/player/mp4/s;)Lcom/google/android/youtube/core/player/mp4/c;
    .registers 4
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/core/player/mp4/c;->a(Lcom/google/android/youtube/core/player/mp4/s;IZ)Lcom/google/android/youtube/core/player/mp4/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/c;

    return-object v0
.end method

.method public final c(Lcom/google/android/youtube/core/player/mp4/s;)I
    .registers 6
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/a;->c()Lcom/google/android/youtube/core/player/mp4/s;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2a

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_27
    move v1, v0

    goto :goto_8

    :cond_29
    return v1

    :cond_2a
    move v0, v1

    goto :goto_27
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method
