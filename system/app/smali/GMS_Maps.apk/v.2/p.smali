.class public Lv/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lv/q;

.field private final b:I

.field private final c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private final i:I


# direct methods
.method constructor <init>(ILv/q;IIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv/p;->a:Lv/q;

    iput p3, p0, Lv/p;->b:I

    iput p1, p0, Lv/p;->c:I

    iput p4, p0, Lv/p;->e:I

    iput p5, p0, Lv/p;->f:I

    iput p6, p0, Lv/p;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/p;->d:Z

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    iget v0, p0, Lv/p;->b:I

    invoke-virtual {p2, v0}, Lv/q;->a(I)Lu/I;

    move-result-object v0

    invoke-direct {p0, v0}, Lv/p;->a(Lu/I;)I

    move-result v0

    iput v0, p0, Lv/p;->i:I

    :goto_21
    return-void

    :cond_22
    const/4 v0, -0x1

    iput v0, p0, Lv/p;->i:I

    goto :goto_21
.end method

.method private a(Lu/I;)I
    .registers 3

    invoke-virtual {p1}, Lu/I;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_6a

    :goto_7
    :pswitch_7
    const/4 v0, -0x1

    :goto_8
    return v0

    :pswitch_9
    invoke-virtual {p1}, Lu/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_84

    goto :goto_7

    :pswitch_11
    const/16 v0, 0x9

    goto :goto_8

    :pswitch_14
    const/16 v0, 0xa

    goto :goto_8

    :pswitch_17
    invoke-virtual {p1}, Lu/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_8c

    goto :goto_7

    :pswitch_1f
    const/16 v0, 0xb

    goto :goto_8

    :pswitch_22
    const/16 v0, 0xc

    goto :goto_8

    :pswitch_25
    invoke-virtual {p1}, Lu/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_94

    goto :goto_7

    :pswitch_2d
    const/16 v0, 0xd

    goto :goto_8

    :pswitch_30
    const/16 v0, 0xe

    goto :goto_8

    :pswitch_33
    const/16 v0, 0x25

    goto :goto_8

    :pswitch_36
    invoke-virtual {p1}, Lu/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    const/16 v0, 0x13

    goto :goto_8

    :pswitch_40
    const/16 v0, 0x11

    goto :goto_8

    :pswitch_43
    const/16 v0, 0x12

    goto :goto_8

    :pswitch_46
    invoke-virtual {p1}, Lu/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    const/16 v0, 0x16

    goto :goto_8

    :pswitch_50
    const/16 v0, 0x14

    goto :goto_8

    :pswitch_53
    const/16 v0, 0x15

    goto :goto_8

    :pswitch_56
    invoke-virtual {p1}, Lu/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_ac

    const/16 v0, 0x19

    goto :goto_8

    :pswitch_60
    const/16 v0, 0x17

    goto :goto_8

    :pswitch_63
    const/16 v0, 0x18

    goto :goto_8

    :pswitch_66
    const/16 v0, 0x22

    goto :goto_8

    nop

    :pswitch_data_6a
    .packed-switch 0x3
        :pswitch_9
        :pswitch_17
        :pswitch_25
        :pswitch_33
        :pswitch_36
        :pswitch_46
        :pswitch_56
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_66
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_22
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_30
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_43
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_50
        :pswitch_53
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_60
        :pswitch_63
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lv/p;->c:I

    return v0
.end method

.method a(I)V
    .registers 2

    iput p1, p0, Lv/p;->f:I

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lv/p;->h:Ljava/lang/String;

    return-void
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lv/p;->d:Z

    return-void
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, Lv/p;->a:Lv/q;

    iget v1, p0, Lv/p;->b:I

    invoke-virtual {v0, v1}, Lv/q;->a(I)Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->b()I

    move-result v0

    return v0
.end method

.method b(I)V
    .registers 2

    iput p1, p0, Lv/p;->g:I

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lv/p;->d:Z

    return v0
.end method

.method d()Lu/I;
    .registers 3

    iget-object v0, p0, Lv/p;->a:Lv/q;

    iget v1, p0, Lv/p;->b:I

    invoke-virtual {v0, v1}, Lv/q;->a(I)Lu/I;

    move-result-object v0

    return-object v0
.end method

.method e()Lu/I;
    .registers 3

    iget v0, p0, Lv/p;->b:I

    iget-object v1, p0, Lv/p;->a:Lv/q;

    invoke-virtual {v1}, Lv/q;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lv/p;->a:Lv/q;

    iget v1, p0, Lv/p;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lv/q;->a(I)Lu/I;

    move-result-object v0

    goto :goto_d
.end method

.method f()Lv/q;
    .registers 2

    iget-object v0, p0, Lv/p;->a:Lv/q;

    return-object v0
.end method

.method g()I
    .registers 2

    iget v0, p0, Lv/p;->b:I

    return v0
.end method

.method h()V
    .registers 11

    invoke-virtual {p0}, Lv/p;->d()Lu/I;

    move-result-object v9

    invoke-virtual {v9}, Lu/I;->a()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->e()D

    move-result-wide v4

    new-instance v0, Lu/j;

    iget v1, p0, Lv/p;->c:I

    iget v2, p0, Lv/p;->e:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, p0, Lv/p;->f:I

    iget v6, p0, Lv/p;->g:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-boolean v5, p0, Lv/p;->d:Z

    iget-object v6, p0, Lv/p;->h:Ljava/lang/String;

    const/4 v7, -0x1

    iget v8, p0, Lv/p;->i:I

    invoke-direct/range {v0 .. v8}, Lu/j;-><init>(IIIIZLjava/lang/String;II)V

    invoke-virtual {v9, v0}, Lu/I;->a(Lu/j;)V

    return-void
.end method
