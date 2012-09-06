.class public final Lcom/google/common/base/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private b:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/ab;->b:Z

    .line 191
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/ab;->a:Ljava/lang/StringBuilder;

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/google/common/base/ab;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()Ljava/lang/StringBuilder;
    .registers 3

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/google/common/base/ab;->b:Z

    if-eqz v0, :cond_d

    .line 381
    iget-object v0, p0, Lcom/google/common/base/ab;->a:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    :goto_c
    return-object v0

    .line 383
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/ab;->b:Z

    .line 384
    iget-object v0, p0, Lcom/google/common/base/ab;->a:Ljava/lang/StringBuilder;

    goto :goto_c
.end method

.method private a(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter

    .prologue
    .line 272
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-direct {p0}, Lcom/google/common/base/ab;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/base/ab;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/google/common/base/ab;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Lcom/google/common/base/ab;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/google/common/base/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    return-object p0
.end method

.method public final a(Ljava/lang/String;J)Lcom/google/common/base/ab;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/google/common/base/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/google/common/base/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/google/common/base/ab;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_1a

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/google/common/base/ab;->a:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/base/ab;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v0

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/common/base/ab;->a:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/base/ab;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    throw v0
.end method
