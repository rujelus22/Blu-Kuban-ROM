.class public final Lcom/coremobility/e/b;
.super Lcom/coremobility/j/l;


# instance fields
.field protected a:Lcom/coremobility/g/m;

.field protected b:Z

.field protected c:I

.field private final d:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/j/l;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/e/b;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/b;->a:Lcom/coremobility/g/m;

    iput-boolean v1, p0, Lcom/coremobility/e/b;->b:Z

    iput v1, p0, Lcom/coremobility/e/b;->c:I

    return-void
.end method

.method private a(II)V
    .registers 15

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v3, p0, Lcom/coremobility/e/b;->c:I

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iget v1, p0, Lcom/coremobility/e/b;->c:I

    sub-int v2, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    if-le p2, v0, :cond_1c

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_7

    :cond_1c
    if-eqz v2, :cond_59

    const/4 v0, 0x1

    :goto_1f
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-le v2, p1, :cond_92

    const/4 v0, 0x1

    move v2, v0

    move v1, p1

    :goto_27
    if-lez v1, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0xc

    if-le v1, v0, :cond_5b

    const/16 v0, 0xc

    :goto_36
    const/4 v4, 0x0

    :goto_37
    if-ge v4, v0, :cond_5d

    const-string v7, "%02x "

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/coremobility/e/b;->o:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v10, v3

    and-int/lit8 v3, v3, 0x7f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_37

    :cond_59
    const/4 v0, 0x0

    goto :goto_1f

    :cond_5b
    move v0, v1

    goto :goto_36

    :cond_5d
    sub-int/2addr v1, v0

    if-eqz v2, :cond_67

    if-nez v1, :cond_67

    const-string v0, "..."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_67
    packed-switch p2, :pswitch_data_96

    goto :goto_27

    :pswitch_6b
    const/16 v0, 0x21

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27

    :pswitch_78
    const/16 v0, 0x21

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27

    :pswitch_85
    const/16 v0, 0x21

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27

    :cond_92
    move v11, v1

    move v1, v2

    move v2, v11

    goto :goto_27

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_78
        :pswitch_85
    .end packed-switch
.end method

.method private static a([Lcom/coremobility/e/ak;Lcom/coremobility/integration/h/d;Lcom/coremobility/e/ak;I)[Lcom/coremobility/e/ak;
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    if-lt p3, v2, :cond_32

    const/16 v0, 0x21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+MMD inv index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_31
    return-object p0

    :cond_32
    if-nez p0, :cond_5b

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/coremobility/e/ak;

    move-object v1, v0

    :goto_38
    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p3

    if-eqz v0, :cond_51

    add-int/lit8 v3, p3, 0x1

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {p0, p3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_51
    aput-object p2, v1, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    move-object p0, v1

    goto :goto_31

    :cond_5b
    new-array v0, v2, [Lcom/coremobility/e/ak;

    invoke-static {p0, v4, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    goto :goto_38
.end method

.method private c(Lcom/coremobility/integration/h/d;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/coremobility/e/b;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    const-string v2, "/TYPE=PLMN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_16

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_16
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_8

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v2, :cond_8

    if-ltz v3, :cond_8

    if-gt v2, v3, :cond_8

    if-eqz p1, :cond_3a

    if-eqz v2, :cond_3a

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    :cond_3a
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method public final a(I)I
    .registers 10

    const v4, 0x80001

    const/4 v7, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_16

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iget v5, p0, Lcom/coremobility/e/b;->p:I

    if-lt v0, v5, :cond_18

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    :cond_15
    :goto_15
    return v2

    :cond_16
    move v0, v2

    goto :goto_a

    :cond_18
    iget v0, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/coremobility/e/b;->u()I

    move-result v5

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_5d

    invoke-virtual {p0}, Lcom/coremobility/e/b;->z()I

    move-result v5

    if-nez v5, :cond_2f

    iget v0, p0, Lcom/coremobility/e/b;->r:I

    if-nez v0, :cond_15

    move v2, v3

    goto :goto_15

    :cond_2f
    iget v6, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/coremobility/e/b;->p:I

    if-le v5, v6, :cond_3d

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    goto :goto_15

    :cond_3d
    invoke-virtual {p0}, Lcom/coremobility/e/b;->d()I

    move-result v5

    sparse-switch v5, :sswitch_data_98

    iget v4, p0, Lcom/coremobility/e/b;->r:I

    if-eq v4, v1, :cond_5b

    :goto_48
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    iput v7, p0, Lcom/coremobility/e/b;->r:I

    move v2, v3

    goto :goto_15

    :sswitch_51
    iput v0, p0, Lcom/coremobility/e/b;->q:I

    move v2, v4

    goto :goto_15

    :sswitch_55
    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const v2, 0x80002

    goto :goto_15

    :cond_5b
    move v1, v2

    goto :goto_48

    :cond_5d
    invoke-virtual {p0}, Lcom/coremobility/e/b;->u()I

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_7d

    invoke-virtual {p0}, Lcom/coremobility/e/b;->A()I

    move-result v1

    if-eqz v1, :cond_15

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/b;->o:[B

    iget v4, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lcom/coremobility/e/a/b;->a(Ljava/lang/String;)I

    move-result v2

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    goto :goto_15

    :cond_7d
    invoke-virtual {p0}, Lcom/coremobility/e/b;->d()I

    move-result v5

    packed-switch v5, :pswitch_data_a2

    iget v4, p0, Lcom/coremobility/e/b;->r:I

    if-nez v4, :cond_95

    :goto_88
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    iput v7, p0, Lcom/coremobility/e/b;->r:I

    move v2, v3

    goto :goto_15

    :pswitch_91
    iput v0, p0, Lcom/coremobility/e/b;->q:I

    move v2, v4

    goto :goto_15

    :cond_95
    move v1, v2

    goto :goto_88

    nop

    :sswitch_data_98
    .sparse-switch
        0x83 -> :sswitch_51
        0xa8 -> :sswitch_55
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x83
        :pswitch_91
    .end packed-switch
.end method

.method public final a(Lcom/coremobility/integration/h/d;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/coremobility/e/b;->z()I

    move-result v2

    if-nez v2, :cond_15

    iget v0, p0, Lcom/coremobility/e/b;->r:I

    if-nez v0, :cond_13

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    :cond_13
    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    iget v3, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/coremobility/e/b;->p:I

    if-le v3, v4, :cond_24

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    iput v2, p0, Lcom/coremobility/e/b;->q:I

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    move-object v0, v1

    goto :goto_14

    :cond_24
    invoke-virtual {p0}, Lcom/coremobility/e/b;->d()I

    move-result v3

    const/16 v4, 0x80

    if-eq v3, v4, :cond_41

    iget v3, p0, Lcom/coremobility/e/b;->r:I

    if-eq v3, v0, :cond_3f

    :goto_30
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    move-object v0, v1

    goto :goto_14

    :cond_3f
    const/4 v0, 0x0

    goto :goto_30

    :cond_41
    invoke-direct {p0, p1}, Lcom/coremobility/e/b;->c(Lcom/coremobility/integration/h/d;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/e/b;->c(Lcom/coremobility/integration/h/d;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-object p1

    :cond_8
    if-nez p1, :cond_c

    move-object p1, v0

    goto :goto_7

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7
.end method

.method public final a()V
    .registers 2

    invoke-static {}, Lcom/coremobility/g/m;->a()Lcom/coremobility/g/m;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/b;->a:Lcom/coremobility/g/m;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/e/b;->b:Z

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coremobility/e/b;->b:Z

    return-void
.end method

.method public final a([BII)V
    .registers 5

    invoke-super {p0, p1, p3}, Lcom/coremobility/j/l;->a([BI)Z

    iput p2, p0, Lcom/coremobility/e/b;->q:I

    iput p2, p0, Lcom/coremobility/e/b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/e/b;->b:Z

    return-void
.end method

.method public final a([Lcom/coremobility/e/ak;Lcom/coremobility/integration/h/d;)[Lcom/coremobility/e/ak;
    .registers 9

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    new-instance v2, Lcom/coremobility/integration/h/d;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/e/b;->z()I

    move-result v1

    if-nez v1, :cond_29

    iget v1, p0, Lcom/coremobility/e/b;->r:I

    if-nez v1, :cond_1d

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    iput v1, p0, Lcom/coremobility/e/b;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    :cond_1d
    move-object v1, v0

    :goto_1e
    iget-object v0, v2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v1, :cond_4e

    :goto_28
    return-object p1

    :cond_29
    iget v5, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v1, v5

    iget v5, p0, Lcom/coremobility/e/b;->p:I

    if-le v1, v5, :cond_38

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    iput v1, p0, Lcom/coremobility/e/b;->q:I

    iput v4, p0, Lcom/coremobility/e/b;->r:I

    move-object v1, v0

    goto :goto_1e

    :cond_38
    invoke-virtual {p0}, Lcom/coremobility/e/b;->w()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget v1, p0, Lcom/coremobility/e/b;->r:I

    if-eqz v1, :cond_48

    move-object v1, v0

    goto :goto_1e

    :cond_48
    invoke-virtual {p0}, Lcom/coremobility/e/b;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1e

    :cond_4e
    move v2, v3

    :goto_4f
    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v2, v0, :cond_6b

    if-eqz p1, :cond_69

    move v0, v4

    :goto_5c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    aget-object v0, p1, v2

    iget v0, v0, Lcom/coremobility/e/ak;->a:I

    if-ge v5, v0, :cond_6b

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4f

    :cond_69
    move v0, v3

    goto :goto_5c

    :cond_6b
    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v2, v0, :cond_7b

    aget-object v0, p1, v2

    iget v0, v0, Lcom/coremobility/e/ak;->a:I

    if-le v5, v0, :cond_8b

    :cond_7b
    new-instance v0, Lcom/coremobility/e/ak;

    invoke-direct {v0}, Lcom/coremobility/e/ak;-><init>()V

    iput v5, v0, Lcom/coremobility/e/ak;->a:I

    iput v3, v0, Lcom/coremobility/e/ak;->b:I

    iput-object v1, v0, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0, v2}, Lcom/coremobility/e/b;->a([Lcom/coremobility/e/ak;Lcom/coremobility/integration/h/d;Lcom/coremobility/e/ak;I)[Lcom/coremobility/e/ak;

    move-result-object p1

    goto :goto_28

    :cond_8b
    aget-object v0, p1, v2

    iput-object v1, v0, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    goto :goto_28
.end method

.method public final b()I
    .registers 4

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/coremobility/e/b;->o:[B

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/e/b;->q:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_a
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/coremobility/e/b;->q:I

    invoke-virtual {p0}, Lcom/coremobility/e/b;->A()I

    move-result v1

    if-nez v1, :cond_e

    :goto_d
    return v0

    :cond_e
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/b;->o:[B

    iget v4, p0, Lcom/coremobility/e/b;->q:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coremobility/e/b;->q:I

    goto :goto_d

    :cond_28
    iget v0, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public final b(Lcom/coremobility/integration/h/d;)[B
    .registers 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    if-ge v0, v2, :cond_4c

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v2, p0, Lcom/coremobility/e/b;->q:I

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    if-le v0, v2, :cond_25

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iget v2, p0, Lcom/coremobility/e/b;->q:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    :cond_25
    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v2, v0, [B

    iget-object v3, p0, Lcom/coremobility/e/b;->o:[B

    iget v4, p0, Lcom/coremobility/e/b;->q:I

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    return-object v2

    :cond_4c
    move v0, v1

    goto :goto_8
.end method

.method public final b([Lcom/coremobility/e/ak;Lcom/coremobility/integration/h/d;)[Lcom/coremobility/e/ak;
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/coremobility/integration/h/d;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/e/b;->z()I

    move-result v0

    if-nez v0, :cond_28

    iget v0, p0, Lcom/coremobility/e/b;->r:I

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    :cond_1c
    move v1, v2

    :goto_1d
    iget-object v0, v3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v1, :cond_4d

    :goto_27
    return-object p1

    :cond_28
    iget v1, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    if-le v0, v1, :cond_37

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    iput v4, p0, Lcom/coremobility/e/b;->r:I

    move v1, v2

    goto :goto_1d

    :cond_37
    invoke-virtual {p0}, Lcom/coremobility/e/b;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget v0, p0, Lcom/coremobility/e/b;->r:I

    if-eqz v0, :cond_47

    move v1, v2

    goto :goto_1d

    :cond_47
    invoke-virtual {p0}, Lcom/coremobility/e/b;->x()I

    move-result v0

    move v1, v0

    goto :goto_1d

    :cond_4d
    move v3, v2

    :goto_4e
    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v3, v0, :cond_6a

    if-eqz p1, :cond_68

    move v0, v4

    :goto_5b
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    aget-object v0, p1, v3

    iget v0, v0, Lcom/coremobility/e/ak;->a:I

    if-ge v5, v0, :cond_6a

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4e

    :cond_68
    move v0, v2

    goto :goto_5b

    :cond_6a
    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_7a

    aget-object v0, p1, v3

    iget v0, v0, Lcom/coremobility/e/ak;->a:I

    if-le v5, v0, :cond_8b

    :cond_7a
    new-instance v0, Lcom/coremobility/e/ak;

    invoke-direct {v0}, Lcom/coremobility/e/ak;-><init>()V

    iput v5, v0, Lcom/coremobility/e/ak;->a:I

    iput v1, v0, Lcom/coremobility/e/ak;->b:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0, v3}, Lcom/coremobility/e/b;->a([Lcom/coremobility/e/ak;Lcom/coremobility/integration/h/d;Lcom/coremobility/e/ak;I)[Lcom/coremobility/e/ak;

    move-result-object p1

    goto :goto_27

    :cond_8b
    aget-object v0, p1, v3

    iput v1, v0, Lcom/coremobility/e/ak;->b:I

    goto :goto_27
.end method

.method public final c()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/coremobility/e/b;->q:I

    iget v3, p0, Lcom/coremobility/e/b;->p:I

    if-lt v2, v3, :cond_c

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    move-object v0, v1

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Lcom/coremobility/e/b;->u()I

    move-result v2

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_44

    invoke-virtual {p0}, Lcom/coremobility/e/b;->z()I

    move-result v2

    if-nez v2, :cond_1c

    move-object v0, v1

    goto :goto_b

    :cond_1c
    iget v3, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/coremobility/e/b;->p:I

    if-le v3, v4, :cond_2b

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    iput v2, p0, Lcom/coremobility/e/b;->q:I

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    move-object v0, v1

    goto :goto_b

    :cond_2b
    invoke-virtual {p0}, Lcom/coremobility/e/b;->d()I

    move-result v3

    if-nez v3, :cond_57

    iget v3, p0, Lcom/coremobility/e/b;->r:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_42

    :goto_36
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    move-object v0, v1

    goto :goto_b

    :cond_42
    const/4 v0, 0x0

    goto :goto_36

    :cond_44
    iget-object v0, p0, Lcom/coremobility/e/b;->o:[B

    iget v2, p0, Lcom/coremobility/e/b;->q:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_57

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    move-object v0, v1

    goto :goto_b

    :cond_57
    invoke-virtual {p0}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public final d()I
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    if-lt v1, v2, :cond_b

    const/4 v1, 0x1

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/coremobility/e/b;->o:[B

    iget v2, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/e/b;->q:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1d

    move v0, v1

    goto :goto_a

    :cond_1d
    const/4 v1, 0x2

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    goto :goto_a
.end method

.method public final e()I
    .registers 2

    invoke-virtual {p0}, Lcom/coremobility/e/b;->x()I

    move-result v0

    return v0
.end method

.method public final f()I
    .registers 5

    invoke-virtual {p0}, Lcom/coremobility/e/b;->y()I

    move-result v0

    if-nez v0, :cond_1b

    iget v1, p0, Lcom/coremobility/e/b;->r:I

    if-nez v1, :cond_1b

    const/16 v1, 0x21

    const-string v2, "CM+MMD 0 mp d-len"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    iput v1, p0, Lcom/coremobility/e/b;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    :cond_1b
    return v0
.end method

.method public final g()I
    .registers 5

    invoke-virtual {p0}, Lcom/coremobility/e/b;->y()I

    move-result v0

    if-nez v0, :cond_1b

    iget v1, p0, Lcom/coremobility/e/b;->r:I

    if-nez v1, :cond_1b

    const/16 v1, 0x21

    const-string v2, "CM+MMD 0 mp h-len"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    iput v1, p0, Lcom/coremobility/e/b;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    :cond_1b
    return v0
.end method

.method public final h()I
    .registers 3

    invoke-virtual {p0}, Lcom/coremobility/e/b;->y()I

    move-result v0

    iget v1, p0, Lcom/coremobility/e/b;->r:I

    if-eqz v1, :cond_9

    const/4 v0, -0x1

    :cond_9
    return v0
.end method

.method public final i()I
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    if-lt v1, v2, :cond_b

    const/4 v1, 0x1

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/coremobility/e/b;->u()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/coremobility/e/b;->o:[B

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/e/b;->q:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_a

    :cond_20
    invoke-virtual {p0}, Lcom/coremobility/e/b;->C()V

    iget v1, p0, Lcom/coremobility/e/b;->r:I

    if-nez v1, :cond_a

    const/16 v0, 0x80

    goto :goto_a
.end method

.method public final j()I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/coremobility/e/b;->z()I

    move-result v2

    if-eqz v2, :cond_14

    iget v0, p0, Lcom/coremobility/e/b;->r:I

    if-nez v0, :cond_13

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    :cond_13
    :goto_13
    return v1

    :cond_14
    iget v3, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/coremobility/e/b;->p:I

    if-le v3, v4, :cond_22

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    iput v2, p0, Lcom/coremobility/e/b;->q:I

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    goto :goto_13

    :cond_22
    invoke-virtual {p0}, Lcom/coremobility/e/b;->d()I

    move-result v3

    packed-switch v3, :pswitch_data_52

    iget v3, p0, Lcom/coremobility/e/b;->r:I

    if-eq v3, v0, :cond_50

    :goto_2d
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    goto :goto_13

    :pswitch_3b
    invoke-virtual {p0}, Lcom/coremobility/e/b;->x()I

    move-result v1

    goto :goto_13

    :pswitch_40
    invoke-virtual {p0}, Lcom/coremobility/e/b;->x()I

    move-result v0

    iget v2, p0, Lcom/coremobility/e/b;->r:I

    if-nez v2, :cond_13

    int-to-long v0, v0

    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v1, v0

    goto :goto_13

    :cond_50
    move v0, v1

    goto :goto_2d

    :pswitch_data_52
    .packed-switch 0x80
        :pswitch_3b
        :pswitch_40
    .end packed-switch
.end method

.method public final k()V
    .registers 2

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->c:I

    return-void
.end method

.method public final l()V
    .registers 2

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    return-void
.end method

.method public final m()Z
    .registers 3

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final n()V
    .registers 1

    invoke-virtual {p0}, Lcom/coremobility/e/b;->C()V

    return-void
.end method

.method public final o()V
    .registers 1

    invoke-virtual {p0}, Lcom/coremobility/e/b;->C()V

    return-void
.end method

.method public final p()V
    .registers 1

    invoke-virtual {p0}, Lcom/coremobility/e/b;->D()V

    return-void
.end method

.method public final q()Z
    .registers 3

    iget v0, p0, Lcom/coremobility/e/b;->c:I

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final r()I
    .registers 3

    iget v0, p0, Lcom/coremobility/e/b;->c:I

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    if-ge v0, v1, :cond_c

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iget v1, p0, Lcom/coremobility/e/b;->c:I

    sub-int/2addr v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final s()V
    .registers 8

    const/4 v6, 0x2

    const/16 v5, 0x3c

    const/16 v4, 0x21

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/coremobility/e/b;->r:I

    packed-switch v2, :pswitch_data_60

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_f
    return-void

    :pswitch_10
    const/16 v0, 0xc

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/coremobility/e/b;->a(II)V

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iput v0, p0, Lcom/coremobility/e/b;->c:I

    goto :goto_f

    :pswitch_1b
    const-string v0, "CM+MMD sk field:"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v5, v6}, Lcom/coremobility/e/b;->a(II)V

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iput v0, p0, Lcom/coremobility/e/b;->c:I

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    goto :goto_f

    :pswitch_2c
    iget v2, p0, Lcom/coremobility/e/b;->q:I

    iget v3, p0, Lcom/coremobility/e/b;->p:I

    if-lt v2, v3, :cond_40

    :goto_32
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const-string v0, "CM+MMD unfinished field:"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v5, v6}, Lcom/coremobility/e/b;->a(II)V

    goto :goto_f

    :cond_40
    move v0, v1

    goto :goto_32

    :pswitch_42
    iget v2, p0, Lcom/coremobility/e/b;->q:I

    iget v3, p0, Lcom/coremobility/e/b;->p:I

    if-lt v2, v3, :cond_5d

    move v2, v0

    :goto_49
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    const-string v2, "CM+MMD unskippable error:"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v5, v0}, Lcom/coremobility/e/b;->a(II)V

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    iput v1, p0, Lcom/coremobility/e/b;->c:I

    iput-boolean v0, p0, Lcom/coremobility/e/b;->b:Z

    goto :goto_f

    :cond_5d
    move v2, v1

    goto :goto_49

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_10
        :pswitch_2c
        :pswitch_1b
        :pswitch_42
    .end packed-switch
.end method

.method public final t()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/e/b;->b:Z

    return v0
.end method
