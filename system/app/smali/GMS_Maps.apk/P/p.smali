.class public Lp/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lp/q;

.field private final b:I

.field private final c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private final i:I


# direct methods
.method constructor <init>(ILp/q;IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lp/p;->a:Lp/q;

    .line 37
    iput p3, p0, Lp/p;->b:I

    .line 38
    iput p1, p0, Lp/p;->c:I

    .line 39
    iput p4, p0, Lp/p;->e:I

    .line 40
    iput p5, p0, Lp/p;->f:I

    .line 41
    iput p6, p0, Lp/p;->g:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lp/p;->d:Z

    .line 44
    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    .line 45
    iget v0, p0, Lp/p;->b:I

    invoke-virtual {p2, v0}, Lp/q;->a(I)Lo/I;

    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Lp/p;->a(Lo/I;)I

    move-result v0

    iput v0, p0, Lp/p;->i:I

    .line 50
    :goto_21
    return-void

    .line 48
    :cond_22
    const/4 v0, -0x1

    iput v0, p0, Lp/p;->i:I

    goto :goto_21
.end method

.method private a(Lo/I;)I
    .registers 3
    .parameter

    .prologue
    .line 64
    invoke-virtual {p1}, Lo/I;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_6a

    .line 106
    :goto_7
    :pswitch_7
    const/4 v0, -0x1

    :goto_8
    return v0

    .line 66
    :pswitch_9
    invoke-virtual {p1}, Lo/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_84

    goto :goto_7

    .line 67
    :pswitch_11
    const/16 v0, 0x9

    goto :goto_8

    .line 68
    :pswitch_14
    const/16 v0, 0xa

    goto :goto_8

    .line 72
    :pswitch_17
    invoke-virtual {p1}, Lo/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_8c

    goto :goto_7

    .line 73
    :pswitch_1f
    const/16 v0, 0xb

    goto :goto_8

    .line 74
    :pswitch_22
    const/16 v0, 0xc

    goto :goto_8

    .line 78
    :pswitch_25
    invoke-virtual {p1}, Lo/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_94

    goto :goto_7

    .line 79
    :pswitch_2d
    const/16 v0, 0xd

    goto :goto_8

    .line 80
    :pswitch_30
    const/16 v0, 0xe

    goto :goto_8

    .line 84
    :pswitch_33
    const/16 v0, 0x25

    goto :goto_8

    .line 86
    :pswitch_36
    invoke-virtual {p1}, Lo/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    .line 89
    const/16 v0, 0x13

    goto :goto_8

    .line 87
    :pswitch_40
    const/16 v0, 0x11

    goto :goto_8

    .line 88
    :pswitch_43
    const/16 v0, 0x12

    goto :goto_8

    .line 92
    :pswitch_46
    invoke-virtual {p1}, Lo/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    .line 95
    const/16 v0, 0x16

    goto :goto_8

    .line 93
    :pswitch_50
    const/16 v0, 0x14

    goto :goto_8

    .line 94
    :pswitch_53
    const/16 v0, 0x15

    goto :goto_8

    .line 98
    :pswitch_56
    invoke-virtual {p1}, Lo/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_ac

    .line 101
    const/16 v0, 0x19

    goto :goto_8

    .line 99
    :pswitch_60
    const/16 v0, 0x17

    goto :goto_8

    .line 100
    :pswitch_63
    const/16 v0, 0x18

    goto :goto_8

    .line 104
    :pswitch_66
    const/16 v0, 0x22

    goto :goto_8

    .line 64
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

    .line 66
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
    .end packed-switch

    .line 72
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_22
    .end packed-switch

    .line 78
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_30
    .end packed-switch

    .line 86
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_43
    .end packed-switch

    .line 92
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_50
        :pswitch_53
    .end packed-switch

    .line 98
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_60
        :pswitch_63
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lp/p;->c:I

    return v0
.end method

.method a(I)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput p1, p0, Lp/p;->f:I

    .line 163
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lp/p;->h:Ljava/lang/String;

    .line 175
    return-void
.end method

.method a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-boolean p1, p0, Lp/p;->d:Z

    .line 171
    return-void
.end method

.method public b()I
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lp/p;->a:Lp/q;

    iget v1, p0, Lp/p;->b:I

    invoke-virtual {v0, v1}, Lp/q;->a(I)Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->b()I

    move-result v0

    return v0
.end method

.method b(I)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput p1, p0, Lp/p;->g:I

    .line 167
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lp/p;->d:Z

    return v0
.end method

.method d()Lo/I;
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lp/p;->a:Lp/q;

    iget v1, p0, Lp/p;->b:I

    invoke-virtual {v0, v1}, Lp/q;->a(I)Lo/I;

    move-result-object v0

    return-object v0
.end method

.method e()Lo/I;
    .registers 3

    .prologue
    .line 146
    iget v0, p0, Lp/p;->b:I

    iget-object v1, p0, Lp/p;->a:Lp/q;

    invoke-virtual {v1}, Lp/q;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lp/p;->a:Lp/q;

    iget v1, p0, Lp/p;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lp/q;->a(I)Lo/I;

    move-result-object v0

    goto :goto_d
.end method

.method f()Lp/q;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lp/p;->a:Lp/q;

    return-object v0
.end method

.method g()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lp/p;->b:I

    return v0
.end method

.method h()V
    .registers 11

    .prologue
    .line 178
    invoke-virtual {p0}, Lp/p;->d()Lo/I;

    move-result-object v9

    .line 179
    invoke-virtual {v9}, Lo/I;->a()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->e()D

    move-result-wide v4

    .line 180
    new-instance v0, Lo/j;

    iget v1, p0, Lp/p;->c:I

    iget v2, p0, Lp/p;->e:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, p0, Lp/p;->f:I

    iget v6, p0, Lp/p;->g:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-boolean v5, p0, Lp/p;->d:Z

    iget-object v6, p0, Lp/p;->h:Ljava/lang/String;

    const/4 v7, -0x1

    iget v8, p0, Lp/p;->i:I

    invoke-direct/range {v0 .. v8}, Lo/j;-><init>(IIIIZLjava/lang/String;II)V

    invoke-virtual {v9, v0}, Lo/I;->a(Lo/j;)V

    .line 186
    return-void
.end method
