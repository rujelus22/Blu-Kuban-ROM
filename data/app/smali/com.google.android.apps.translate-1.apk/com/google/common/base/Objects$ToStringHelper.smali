.class public final Lcom/google/common/base/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private omitNullValues:Z

.field private final valueHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "className"

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->valueHolders:Ljava/util/List;

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->omitNullValues:Z

    .line 301
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->className:Ljava/lang/String;

    .line 302
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/Objects$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    .registers 3

    .prologue
    .line 517
    new-instance v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/Objects$1;)V

    .line 518
    .local v0, valueHolder:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    iget-object v1, p0, Lcom/google/common/base/Objects$ToStringHelper;->valueHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    .registers 4
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 524
    .local v0, valueHolder:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    if-nez p1, :cond_a

    const/4 v1, 0x1

    :goto_7
    iput-boolean v1, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->isNull:Z

    .line 525
    return-object v0

    .line 524
    :cond_a
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "name"

    .prologue
    .line 395
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;C)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    return-object p0
.end method

.method public add(Ljava/lang/String;D)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 358
    return-object p0
.end method

.method public add(Ljava/lang/String;F)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 369
    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    return-object p0
.end method

.method public add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 391
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 5
    .parameter "name"
    .end parameter
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 323
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-direct {p0, p2}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    return-object p0
.end method

.method public add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 336
    return-object p0
.end method

.method public addValue(C)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .parameter "value"

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    return-object p0
.end method

.method public addValue(D)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .parameter "value"

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 446
    return-object p0
.end method

.method public addValue(F)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .parameter "value"

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 459
    return-object p0
.end method

.method public addValue(I)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .parameter "value"

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    return-object p0
.end method

.method public addValue(J)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .parameter "value"

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 485
    return-object p0
.end method

.method public addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    return-object p0
.end method

.method public addValue(Z)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .parameter "value"

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 420
    return-object p0
.end method

.method public omitNullValues()Lcom/google/common/base/Objects$ToStringHelper;
    .registers 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->omitNullValues:Z

    .line 313
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 494
    iget-boolean v3, p0, Lcom/google/common/base/Objects$ToStringHelper;->omitNullValues:Z

    .line 495
    .local v3, omitNullValuesSnapshot:Z
    const/4 v2, 0x0

    .line 496
    .local v2, needsSeparator:Z
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v7, p0, Lcom/google/common/base/Objects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x7b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 498
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/google/common/base/Objects$ToStringHelper;->valueHolders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    .line 499
    .local v5, valueHolder:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    if-eqz v3, :cond_2e

    iget-boolean v6, v5, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->isNull:Z

    if-nez v6, :cond_1c

    .line 500
    :cond_2e
    if-eqz v2, :cond_3b

    .line 501
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :goto_35
    iget-object v4, v5, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    .line 510
    .local v4, sequence:Ljava/lang/CharSequence;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 503
    .end local v4           #sequence:Ljava/lang/CharSequence;
    :cond_3b
    const/4 v2, 0x1

    goto :goto_35

    .line 513
    .end local v5           #valueHolder:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    :cond_3d
    const/16 v6, 0x7d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
