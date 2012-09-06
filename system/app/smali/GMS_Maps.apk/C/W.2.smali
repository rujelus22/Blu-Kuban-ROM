.class public LC/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/F;


# instance fields
.field private final a:LaP/d;

.field private final b:LC/Y;

.field private c:LaP/a;

.field private d:J


# direct methods
.method constructor <init>(LaP/d;LC/Y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, LC/W;->a:LaP/d;

    .line 53
    iput-object p2, p0, LC/W;->b:LC/Y;

    .line 54
    return-void
.end method

.method static a()J
    .registers 2

    .prologue
    .line 209
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->w:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private b()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, LC/W;->b:LC/Y;

    invoke-virtual {v2}, LC/Y;->b()LC/z;

    move-result-object v2

    if-nez v2, :cond_b

    .line 175
    :cond_a
    :goto_a
    return v1

    .line 161
    :cond_b
    iget-object v2, p0, LC/W;->b:LC/Y;

    invoke-virtual {v2}, LC/Y;->a()LC/z;

    move-result-object v2

    iget-object v2, v2, LC/z;->b:LC/A;

    sget-object v3, LC/A;->b:LC/A;

    if-eq v2, v3, :cond_a

    .line 164
    iget-object v2, p0, LC/W;->b:LC/Y;

    invoke-virtual {v2}, LC/Y;->b()LC/z;

    move-result-object v2

    .line 165
    iget-object v3, p0, LC/W;->a:LaP/d;

    iget-object v2, v2, LC/z;->c:LaP/a;

    iget-object v2, v2, LaP/a;->a:LaP/t;

    invoke-virtual {v3, v2}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v2

    .line 166
    sget-object v3, LC/X;->a:[I

    invoke-virtual {v2}, LaP/h;->b()LaP/q;

    move-result-object v2

    invoke-virtual {v2}, LaP/q;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_4c

    goto :goto_a

    .line 168
    :pswitch_37
    iget-object v2, p0, LC/W;->b:LC/Y;

    invoke-virtual {v2}, LC/Y;->b()LC/z;

    move-result-object v2

    iget-object v2, v2, LC/z;->c:LaP/a;

    iget v2, v2, LaP/a;->b:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_48

    :goto_46
    move v1, v0

    goto :goto_a

    :cond_48
    move v0, v1

    goto :goto_46

    :pswitch_4a
    move v1, v0

    .line 170
    goto :goto_a

    .line 166
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_4a
    .end packed-switch
.end method

.method private b(LC/R;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p1}, LC/R;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 190
    iget-object v0, p0, LC/W;->b:LC/Y;

    invoke-virtual {v0}, LC/Y;->b()LC/z;

    move-result-object v0

    iget-object v0, v0, LC/z;->c:LaP/a;

    .line 191
    iget-object v2, p0, LC/W;->a:LaP/d;

    iget-object v3, v0, LaP/a;->a:LaP/t;

    invoke-virtual {v2, v3}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v2

    .line 192
    iget v3, v0, LaP/a;->b:F

    const/high16 v4, 0x3f00

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3c

    const/high16 v3, 0x3f80

    iget v0, v0, LaP/a;->b:F

    sub-float v0, v3, v0

    invoke-virtual {v2}, LaP/h;->p()F

    move-result v2

    mul-float/2addr v0, v2

    .line 195
    :goto_2a
    invoke-virtual {p1}, LC/R;->getSpeed()F

    move-result v2

    const/high16 v3, 0x40a0

    cmpl-float v2, v2, v3

    if-gez v2, :cond_3a

    const/high16 v2, 0x41f0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_44

    :cond_3a
    const/4 v0, 0x1

    .line 198
    :goto_3b
    return v0

    .line 192
    :cond_3c
    iget v0, v0, LaP/a;->b:F

    invoke-virtual {v2}, LaP/h;->p()F

    move-result v2

    mul-float/2addr v0, v2

    goto :goto_2a

    :cond_44
    move v0, v1

    .line 195
    goto :goto_3b

    :cond_46
    move v0, v1

    .line 198
    goto :goto_3b
.end method


# virtual methods
.method public a(LC/R;)LC/G;
    .registers 17
    .parameter

    .prologue
    .line 71
    invoke-virtual/range {p1 .. p1}, LC/R;->getTime()J

    move-result-wide v3

    .line 72
    invoke-static {}, LC/W;->a()J

    move-result-wide v5

    .line 75
    iget-object v0, p0, LC/W;->c:LaP/a;

    if-eqz v0, :cond_1e

    iget-object v0, p0, LC/W;->b:LC/Y;

    invoke-virtual {v0}, LC/Y;->b()LC/z;

    move-result-object v0

    iget-object v0, v0, LC/z;->a:LC/R;

    invoke-virtual {v0}, LC/R;->getTime()J

    move-result-wide v0

    iget-wide v7, p0, LC/W;->d:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_61

    .line 77
    :cond_1e
    invoke-direct {p0}, LC/W;->b()Z

    move-result v0

    if-nez v0, :cond_34

    .line 79
    iget-object v0, p0, LC/W;->b:LC/Y;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, LC/Y;->a(J)V

    .line 80
    new-instance v0, LC/G;

    sget-object v1, LC/H;->a:LC/H;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LC/G;-><init>(LC/H;LaP/a;)V

    .line 149
    :goto_33
    return-object v0

    .line 82
    :cond_34
    iget-object v0, p0, LC/W;->b:LC/Y;

    invoke-virtual {v0}, LC/Y;->b()LC/z;

    move-result-object v0

    iget-object v2, v0, LC/z;->c:LaP/a;

    .line 83
    iget-object v0, p0, LC/W;->b:LC/Y;

    invoke-virtual {v0}, LC/Y;->b()LC/z;

    move-result-object v0

    iget-object v0, v0, LC/z;->a:LC/R;

    invoke-virtual {v0}, LC/R;->getTime()J

    move-result-wide v0

    .line 84
    iget-object v7, p0, LC/W;->b:LC/Y;

    invoke-virtual {v7, v3, v4}, LC/Y;->a(J)V

    .line 89
    :goto_4d
    iget-object v7, p0, LC/W;->b:LC/Y;

    invoke-virtual {v7}, LC/Y;->e()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v5, v5, v3

    if-gez v5, :cond_66

    .line 90
    new-instance v0, LC/G;

    sget-object v1, LC/H;->a:LC/H;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LC/G;-><init>(LC/H;LaP/a;)V

    goto :goto_33

    .line 86
    :cond_61
    iget-object v2, p0, LC/W;->c:LaP/a;

    .line 87
    iget-wide v0, p0, LC/W;->d:J

    goto :goto_4d

    .line 94
    :cond_66
    iget-object v5, p0, LC/W;->a:LaP/d;

    iget-object v6, v2, LaP/a;->a:LaP/t;

    invoke-virtual {v5, v6}, LaP/d;->e(LaP/t;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 95
    new-instance v0, LC/G;

    sget-object v1, LC/H;->a:LC/H;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LC/G;-><init>(LC/H;LaP/a;)V

    goto :goto_33

    .line 98
    :cond_79
    iget-object v5, p0, LC/W;->a:LaP/d;

    iget-object v6, v2, LaP/a;->a:LaP/t;

    invoke-virtual {v5, v6}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v5

    .line 100
    invoke-direct/range {p0 .. p1}, LC/W;->b(LC/R;)Z

    move-result v6

    .line 102
    invoke-virtual {v5}, LaP/h;->n()Z

    move-result v7

    if-nez v7, :cond_96

    if-nez v6, :cond_96

    .line 103
    new-instance v0, LC/G;

    sget-object v1, LC/H;->a:LC/H;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LC/G;-><init>(LC/H;LaP/a;)V

    goto :goto_33

    .line 105
    :cond_96
    invoke-virtual {v5}, LaP/h;->k()I

    move-result v7

    int-to-long v7, v7

    .line 108
    const-wide/16 v9, 0x3e8

    invoke-virtual {v5}, LaP/h;->o()I

    move-result v11

    int-to-long v11, v11

    sub-long/2addr v11, v7

    mul-long/2addr v9, v11

    .line 115
    iget v11, v2, LaP/a;->b:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_d8

    iget-object v11, p0, LC/W;->b:LC/Y;

    invoke-virtual {v11}, LC/Y;->d()J

    move-result-wide v11

    sub-long v11, v3, v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v7, v13

    cmp-long v7, v11, v7

    if-gez v7, :cond_d8

    .line 117
    const/4 v0, 0x0

    .line 132
    :goto_bb
    iget v1, v2, LaP/a;->b:F

    add-float/2addr v1, v0

    .line 134
    const/high16 v0, 0x3f80

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_122

    .line 135
    iget-object v0, p0, LC/W;->a:LaP/d;

    iget-object v1, v2, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v1}, LaP/d;->g(LaP/t;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 136
    new-instance v0, LC/G;

    sget-object v1, LC/H;->a:LC/H;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LC/G;-><init>(LC/H;LaP/a;)V

    goto/16 :goto_33

    .line 118
    :cond_d8
    long-to-float v7, v9

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_f5

    .line 119
    sub-long v0, v3, v0

    .line 120
    if-eqz v6, :cond_f1

    .line 121
    invoke-virtual/range {p1 .. p1}, LC/R;->getSpeed()F

    move-result v3

    .line 122
    long-to-float v0, v0

    mul-float/2addr v0, v3

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 123
    invoke-virtual {v5}, LaP/h;->p()F

    move-result v1

    div-float/2addr v0, v1

    .line 124
    goto :goto_bb

    .line 125
    :cond_f1
    long-to-float v0, v0

    long-to-float v1, v9

    div-float/2addr v0, v1

    goto :goto_bb

    .line 130
    :cond_f5
    const/high16 v0, 0x3f80

    goto :goto_bb

    .line 141
    :cond_f8
    const/4 v1, 0x0

    .line 142
    new-instance v0, LaP/v;

    iget-object v3, p0, LC/W;->a:LaP/d;

    invoke-direct {v0, v3}, LaP/v;-><init>(LaP/d;)V

    iget-object v2, v2, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v2}, LaP/v;->a(LaP/t;)LaP/v;

    move-result-object v0

    invoke-virtual {v0}, LaP/v;->a()LaP/t;

    move-result-object v0

    .line 147
    :goto_10a
    new-instance v2, LaP/a;

    invoke-direct {v2, v0, v1}, LaP/a;-><init>(LaP/t;F)V

    iput-object v2, p0, LC/W;->c:LaP/a;

    .line 148
    invoke-virtual/range {p1 .. p1}, LC/R;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, LC/W;->d:J

    .line 149
    new-instance v0, LC/G;

    sget-object v1, LC/H;->d:LC/H;

    iget-object v2, p0, LC/W;->c:LaP/a;

    invoke-direct {v0, v1, v2}, LC/G;-><init>(LC/H;LaP/a;)V

    goto/16 :goto_33

    .line 145
    :cond_122
    iget-object v0, v2, LaP/a;->a:LaP/t;

    goto :goto_10a
.end method
