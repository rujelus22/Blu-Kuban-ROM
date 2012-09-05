.class public abstract Lcom/coremobility/j/j;
.super Ljava/lang/Object;


# instance fields
.field protected b:Lcom/coremobility/j/h;

.field protected c:Lcom/coremobility/j/k;

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/j/j;->b:Lcom/coremobility/j/h;

    iput-object v0, p0, Lcom/coremobility/j/j;->c:Lcom/coremobility/j/k;

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public final a(IIIII)V
    .registers 14

    const/4 v4, -0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/coremobility/j/j;->c:Lcom/coremobility/j/k;

    if-eqz v0, :cond_49

    iget-object v3, p0, Lcom/coremobility/j/j;->b:Lcom/coremobility/j/h;

    if-eq p2, v2, :cond_e

    if-ne p2, v7, :cond_4a

    :cond_e
    move v0, v2

    :goto_f
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Lcom/coremobility/j/h;->d()I

    move-result v0

    if-eq v0, v4, :cond_4c

    invoke-virtual {v3}, Lcom/coremobility/j/h;->e()I

    move-result v0

    if-le v0, p3, :cond_4c

    const/16 v0, 0xc

    const-string v4, "Ignore scheme %d %d (%d, %d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/coremobility/j/h;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    const/4 v1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_47
    iput-object v3, p0, Lcom/coremobility/j/j;->b:Lcom/coremobility/j/h;

    :cond_49
    return-void

    :cond_4a
    move v0, v1

    goto :goto_f

    :cond_4c
    new-array v0, v7, [I

    if-lez p4, :cond_5f

    aput p4, v0, v1

    aput p5, v0, v2

    new-instance v3, Lcom/coremobility/j/h;

    new-instance v1, Lcom/coremobility/j/i;

    invoke-direct {v1, v0}, Lcom/coremobility/j/i;-><init>([I)V

    invoke-direct {v3, p1, v1, p2, p3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;II)V

    goto :goto_47

    :cond_5f
    packed-switch p1, :pswitch_data_7e

    if-eqz v3, :cond_7c

    invoke-virtual {v3}, Lcom/coremobility/j/h;->d()I

    move-result v0

    if-ne v0, v4, :cond_7c

    const/4 v0, 0x0

    :goto_6b
    move-object v3, v0

    goto :goto_47

    :pswitch_6d
    aput v2, v0, v1

    aput v1, v0, v2

    new-instance v3, Lcom/coremobility/j/h;

    new-instance v1, Lcom/coremobility/j/i;

    invoke-direct {v1, v0}, Lcom/coremobility/j/i;-><init>([I)V

    invoke-direct {v3, p1, v1, p2, p3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;II)V

    goto :goto_47

    :cond_7c
    move-object v0, v3

    goto :goto_6b

    :pswitch_data_7e
    .packed-switch 0x191
        :pswitch_6d
    .end packed-switch
.end method

.method public final c()Lcom/coremobility/j/h;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/j/j;->b:Lcom/coremobility/j/h;

    return-object v0
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/j;->b:Lcom/coremobility/j/h;

    return-void
.end method

.method public final e()V
    .registers 10

    const/4 v4, 0x0

    const/16 v1, 0x191

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v3, v5

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/j/j;->a(IIIII)V

    return-void
.end method

.method public final f()I
    .registers 2

    iget-object v0, p0, Lcom/coremobility/j/j;->b:Lcom/coremobility/j/h;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/j/j;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0}, Lcom/coremobility/j/h;->a()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final g()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/coremobility/j/j;->b:Lcom/coremobility/j/h;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    :sswitch_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/coremobility/j/j;->b:Lcom/coremobility/j/h;

    invoke-virtual {v1}, Lcom/coremobility/j/h;->a()I

    move-result v1

    const/16 v2, 0x191

    if-eq v1, v2, :cond_5

    sparse-switch v1, :sswitch_data_16

    const/4 v0, 0x0

    goto :goto_5

    nop

    :sswitch_data_16
    .sparse-switch
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x1e -> :sswitch_5
        0x1f -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2a -> :sswitch_5
        0x2b -> :sswitch_5
    .end sparse-switch
.end method
