.class public Lcom/google/android/maps/driveabout/vector/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:[Lcom/google/android/maps/driveabout/vector/ca;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->c:I

    .line 31
    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/ca;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    .line 116
    const/4 v0, 0x0

    move v2, v0

    :goto_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_36

    .line 120
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 121
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/ca;

    aput-object v1, v3, v2

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_32

    .line 123
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 126
    :cond_36
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/ca;
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 54
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    if-nez v0, :cond_9

    .line 55
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ct;->c()V

    .line 63
    :cond_9
    const/4 v0, 0x0

    move v2, v1

    :goto_b
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    array-length v3, v3

    if-ge v0, v3, :cond_30

    .line 64
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    aget-object v3, v3, v0

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ca;->b()I

    move-result v3

    if-le v3, v1, :cond_5f

    .line 66
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ca;->b()I

    move-result v1

    move v2, v1

    move v1, v0

    .line 63
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    move v6, v1

    move v1, v2

    move v2, v6

    goto :goto_b

    .line 69
    :cond_30
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    aget-object v3, v0, v2

    .line 72
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 73
    if-eqz v0, :cond_54

    .line 74
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/ca;

    aput-object v1, v4, v2

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_53

    .line 76
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_53
    :goto_53
    return-object v3

    .line 79
    :cond_54
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    aput-object v5, v0, v2

    .line 80
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->c:I

    goto :goto_53

    :cond_5f
    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_2a
.end method

.method public a(Ljava/util/Iterator;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    if-eqz v0, :cond_c

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call addIterator after next has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 43
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_17
    return-void
.end method

.method public b()Lcom/google/android/maps/driveabout/vector/ca;
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 87
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    if-nez v0, :cond_8

    .line 88
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ct;->c()V

    .line 96
    :cond_8
    const/4 v0, 0x0

    move v2, v1

    :goto_a
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    array-length v3, v3

    if-ge v0, v3, :cond_2b

    .line 97
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    aget-object v3, v3, v0

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ca;->b()I

    move-result v3

    if-le v3, v2, :cond_28

    .line 99
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ca;->b()I

    move-result v2

    move v1, v0

    .line 96
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 102
    :cond_2b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:[Lcom/google/android/maps/driveabout/vector/ca;

    aget-object v0, v0, v1

    .line 103
    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->c:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ct;->a()Lcom/google/android/maps/driveabout/vector/ca;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "[RankMergingFeatureIterator"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 132
    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 134
    :cond_22
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
