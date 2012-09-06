.class final Lcom/google/common/base/Optional$Present;
.super Lcom/google/common/base/Optional;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final reference:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/base/Optional;-><init>(Lcom/google/common/base/ac;)V

    .line 202
    iput-object p1, p0, Lcom/google/common/base/Optional$Present;->reference:Ljava/lang/Object;

    .line 203
    return-void
.end method


# virtual methods
.method public final asSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/common/base/Optional$Present;->reference:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 237
    instance-of v0, p1, Lcom/google/common/base/Optional$Present;

    if-eqz v0, :cond_f

    .line 238
    check-cast p1, Lcom/google/common/base/Optional$Present;

    .line 239
    iget-object v0, p0, Lcom/google/common/base/Optional$Present;->reference:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/common/base/Optional$Present;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 241
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/common/base/Optional$Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 245
    const v0, 0x598df91c

    iget-object v1, p0, Lcom/google/common/base/Optional$Present;->reference:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isPresent()Z
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public final or(Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
    .registers 2
    .parameter

    .prologue
    .line 219
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-object p0
.end method

.method public final or(Lcom/google/common/base/am;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 224
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/google/common/base/Optional$Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public final or(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 214
    const-string v0, "use orNull() instead of or(null)"

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/google/common/base/Optional$Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public final orNull()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/common/base/Optional$Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Optional.of("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/base/Optional$Present;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
