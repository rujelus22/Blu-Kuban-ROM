.class public Lcom/google/googlenav/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput p1, p0, Lcom/google/googlenav/ab;->a:I

    .line 650
    iput-object p2, p0, Lcom/google/googlenav/ab;->b:Ljava/lang/String;

    .line 651
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 654
    iget v0, p0, Lcom/google/googlenav/ab;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/googlenav/ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 669
    if-ne p1, p0, :cond_5

    .line 676
    :cond_4
    :goto_4
    return v0

    .line 672
    :cond_5
    instance-of v2, p1, Lcom/google/googlenav/ab;

    if-nez v2, :cond_b

    move v0, v1

    .line 673
    goto :goto_4

    .line 675
    :cond_b
    check-cast p1, Lcom/google/googlenav/ab;

    .line 676
    iget v2, p1, Lcom/google/googlenav/ab;->a:I

    iget v3, p0, Lcom/google/googlenav/ab;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 663
    .line 664
    iget v0, p0, Lcom/google/googlenav/ab;->a:I

    add-int/lit16 v0, v0, 0x20f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/google/googlenav/ab;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
