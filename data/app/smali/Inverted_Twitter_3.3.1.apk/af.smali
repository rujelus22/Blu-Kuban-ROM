.class final Laf;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lai;

.field protected final b:Laf;


# direct methods
.method constructor <init>(Lai;Laf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laf;->a:Lai;

    iput-object p2, p0, Laf;->b:Laf;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Laf;->b:Laf;

    :goto_3
    if-eqz v0, :cond_a

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Laf;->b:Laf;

    goto :goto_3

    :cond_a
    return v1
.end method

.method public final a(III)Lai;
    .registers 7

    iget-object v0, p0, Laf;->a:Lai;

    invoke-virtual {v0}, Lai;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Laf;->a:Lai;

    invoke-virtual {v0, p2, p3}, Lai;->a(II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Laf;->a:Lai;

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Laf;->b:Laf;

    move-object v1, v0

    :goto_16
    if-eqz v1, :cond_2a

    iget-object v0, v1, Laf;->a:Lai;

    invoke-virtual {v0}, Lai;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_26

    invoke-virtual {v0, p2, p3}, Lai;->a(II)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_26
    iget-object v0, v1, Laf;->b:Laf;

    move-object v1, v0

    goto :goto_16

    :cond_2a
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final a(I[II)Lai;
    .registers 7

    iget-object v0, p0, Laf;->a:Lai;

    invoke-virtual {v0}, Lai;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Laf;->a:Lai;

    invoke-virtual {v0, p2, p3}, Lai;->a([II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Laf;->a:Lai;

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Laf;->b:Laf;

    move-object v1, v0

    :goto_16
    if-eqz v1, :cond_2a

    iget-object v0, v1, Laf;->a:Lai;

    invoke-virtual {v0}, Lai;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_26

    invoke-virtual {v0, p2, p3}, Lai;->a([II)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_26
    iget-object v0, v1, Laf;->b:Laf;

    move-object v1, v0

    goto :goto_16

    :cond_2a
    const/4 v0, 0x0

    goto :goto_12
.end method
