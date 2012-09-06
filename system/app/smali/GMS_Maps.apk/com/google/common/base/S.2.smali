.class Lcom/google/common/base/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Q;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/google/common/base/S;->a:Ljava/util/List;

    .line 319
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/common/base/R;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/google/common/base/S;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/common/base/S;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Q;

    .line 323
    invoke-interface {v0, p1}, Lcom/google/common/base/Q;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 324
    const/4 v0, 0x0

    .line 327
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 334
    instance-of v0, p1, Lcom/google/common/base/S;

    if-eqz v0, :cond_f

    .line 335
    check-cast p1, Lcom/google/common/base/S;

    .line 336
    iget-object v0, p0, Lcom/google/common/base/S;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/common/base/S;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 338
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/common/base/S;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x12472c2c

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "And("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Predicates;->b()Lcom/google/common/base/G;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/S;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/common/base/G;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
