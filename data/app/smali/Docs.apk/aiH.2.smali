.class abstract LaiH;
.super LaiE;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "LaiE",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TD;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TD;I)V"
        }
    .end annotation

    .prologue
    .line 452
    invoke-direct {p0}, LaiE;-><init>()V

    .line 453
    iput-object p1, p0, LaiH;->a:[Ljava/lang/Object;

    .line 454
    iput p2, p0, LaiH;->a:I

    .line 455
    return-void
.end method


# virtual methods
.method public a()Lalu;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, LaiI;

    iget-object v1, p0, LaiH;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, LaiI;-><init>(LaiH;I)V

    return-object v0
.end method

.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation
.end method

.method b()Z
    .registers 2

    .prologue
    .line 501
    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 497
    iget v0, p0, LaiH;->a:I

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, LaiH;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, LaiH;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 477
    invoke-virtual {p0}, LaiH;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, LaiH;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0}, LaiH;->size()I

    move-result v0

    .line 482
    array-length v1, p1

    if-ge v1, v0, :cond_1e

    .line 483
    invoke-static {p1, v0}, LakF;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 490
    :cond_b
    :goto_b
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, LaiH;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 491
    iget-object v1, p0, LaiH;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, LaiH;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 484
    :cond_1e
    array-length v1, p1

    if-le v1, v0, :cond_b

    .line 485
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_b

    .line 493
    :cond_25
    return-object p1
.end method
