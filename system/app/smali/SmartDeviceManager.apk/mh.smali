.class public final Lmh;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmh$a;
    }
.end annotation


# instance fields
.field public a:I

.field private b:Lmh$a;

.field private c:Lmh$a;

.field private d:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lmh;->c:Lmh$a;

    if-eqz v0, :cond_a

    .line 196
    iget-object v0, p0, Lmh;->c:Lmh$a;

    iget-object v0, v0, Lmh$a;->a:[Ljava/lang/Object;

    iput-object v0, p0, Lmh;->d:[Ljava/lang/Object;

    .line 199
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lmh;->c:Lmh$a;

    iput-object v0, p0, Lmh;->b:Lmh$a;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lmh;->a:I

    .line 201
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 206
    .line 208
    iget-object v0, p0, Lmh;->b:Lmh$a;

    move v1, v4

    :goto_4
    if-eqz v0, :cond_10

    .line 209
    iget-object v2, v0, Lmh$a;->a:[Ljava/lang/Object;

    .line 210
    array-length v3, v2

    .line 211
    invoke-static {v2, v4, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    add-int/2addr v1, v3

    .line 208
    iget-object v0, v0, Lmh$a;->b:Lmh$a;

    goto :goto_4

    .line 214
    :cond_10
    invoke-static {p3, v4, p1, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    add-int v0, v1, p4

    .line 218
    if-eq v0, p2, :cond_3a

    .line 219
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should have gotten "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_3a
    return-void
.end method

.method public final a([Ljava/lang/Object;ILjava/util/List;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 157
    iget-object v0, p0, Lmh;->b:Lmh$a;

    :goto_3
    if-eqz v0, :cond_16

    .line 158
    iget-object v1, v0, Lmh$a;->a:[Ljava/lang/Object;

    .line 159
    array-length v2, v1

    move v3, v5

    :goto_9
    if-ge v3, v2, :cond_13

    .line 160
    aget-object v4, v1, v3

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 157
    :cond_13
    iget-object v0, v0, Lmh$a;->b:Lmh$a;

    goto :goto_3

    :cond_16
    move v0, v5

    .line 164
    :goto_17
    if-ge v0, p2, :cond_21

    .line 165
    aget-object v1, p1, v0

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 167
    :cond_21
    return-void
.end method

.method public final a()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Lmh;->c()V

    .line 74
    iget-object v0, p0, Lmh;->d:[Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 75
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lmh;->d:[Ljava/lang/Object;

    goto :goto_b
.end method

.method public final a([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 96
    new-instance v0, Lmh$a;

    invoke-direct {v0, p1}, Lmh$a;-><init>([Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lmh;->b:Lmh$a;

    if-nez v1, :cond_1b

    .line 98
    iput-object v0, p0, Lmh;->c:Lmh$a;

    iput-object v0, p0, Lmh;->b:Lmh$a;

    .line 103
    :goto_d
    array-length v0, p1

    .line 104
    iget v1, p0, Lmh;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lmh;->a:I

    .line 106
    const/16 v1, 0x4000

    if-ge v0, v1, :cond_2c

    .line 107
    add-int/2addr v0, v0

    .line 111
    :goto_18
    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 100
    :cond_1b
    iget-object v1, p0, Lmh;->c:Lmh$a;

    iget-object v2, v1, Lmh$a;->b:Lmh$a;

    if-eqz v2, :cond_27

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_27
    iput-object v0, v1, Lmh$a;->b:Lmh$a;

    .line 101
    iput-object v0, p0, Lmh;->c:Lmh$a;

    goto :goto_d

    .line 109
    :cond_2c
    shr-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_18
.end method

.method public final a([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 142
    iget v0, p0, Lmh;->a:I

    add-int v1, p2, v0

    .line 144
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 145
    invoke-virtual {p0, v0, v1, p1, p2}, Lmh;->a(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 146
    invoke-direct {p0}, Lmh;->c()V

    .line 147
    return-object v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lmh;->d:[Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lmh;->d:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_5
.end method
