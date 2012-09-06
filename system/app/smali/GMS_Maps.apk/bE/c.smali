.class public Lbe/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/g;


# instance fields
.field private A:I

.field private B:I

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:I

.field private I:I

.field private J:F

.field private K:Z

.field private L:I

.field private M:J

.field private N:J

.field public a:Lbe/a;

.field protected b:I

.field protected c:I

.field protected d:Lbd/b;

.field protected e:Lbd/b;

.field private f:[F

.field private g:[F

.field private h:J

.field private i:J

.field private j:Lbe/f;

.field private k:J

.field private l:J

.field private m:J

.field private n:F

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Lbe/b;

.field private v:J

.field private w:Lbd/b;

.field private x:[Lbe/b;

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-array v0, v1, [F

    iput-object v0, p0, Lbe/c;->f:[F

    .line 33
    new-array v0, v1, [F

    fill-array-data v0, :array_90

    iput-object v0, p0, Lbe/c;->g:[F

    .line 34
    iput-wide v4, p0, Lbe/c;->h:J

    .line 35
    iput-wide v4, p0, Lbe/c;->i:J

    .line 44
    const-wide/32 v0, 0x3b9aca00

    iput-wide v0, p0, Lbe/c;->k:J

    .line 47
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lbe/c;->l:J

    .line 50
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lbe/c;->m:J

    .line 56
    iput v3, p0, Lbe/c;->b:I

    .line 57
    iput v3, p0, Lbe/c;->c:I

    .line 68
    iput v2, p0, Lbe/c;->n:F

    .line 71
    iput v3, p0, Lbe/c;->o:I

    .line 72
    iput v2, p0, Lbe/c;->p:F

    .line 73
    iput v2, p0, Lbe/c;->q:F

    .line 74
    iput v2, p0, Lbe/c;->r:F

    .line 75
    iput v2, p0, Lbe/c;->s:F

    .line 76
    iput v2, p0, Lbe/c;->t:F

    .line 81
    iput-object v6, p0, Lbe/c;->u:Lbe/b;

    .line 83
    iput-object v6, p0, Lbe/c;->w:Lbd/b;

    .line 87
    const/16 v0, 0x12c

    iput v0, p0, Lbe/c;->y:I

    .line 99
    const v0, 0x3dcccccd

    iput v0, p0, Lbe/c;->z:F

    .line 105
    const/16 v0, 0x1770

    iput v0, p0, Lbe/c;->A:I

    .line 106
    const/16 v0, 0x3a98

    iput v0, p0, Lbe/c;->B:I

    .line 112
    const/high16 v0, 0x3f40

    iput v0, p0, Lbe/c;->C:F

    .line 113
    const v0, 0x3ee66666

    iput v0, p0, Lbe/c;->D:F

    .line 114
    const v0, 0x3e99999a

    iput v0, p0, Lbe/c;->E:F

    .line 120
    const v0, 0x45bb8000

    iput v0, p0, Lbe/c;->F:F

    .line 121
    const v0, 0x466a6000

    iput v0, p0, Lbe/c;->G:F

    .line 126
    const v0, 0x7a120

    iput v0, p0, Lbe/c;->H:I

    .line 127
    const v0, 0x927c0

    iput v0, p0, Lbe/c;->I:I

    .line 133
    const v0, 0x3f19999a

    iput v0, p0, Lbe/c;->J:F

    .line 139
    iput-boolean v3, p0, Lbe/c;->K:Z

    .line 147
    const/16 v0, 0x3e8

    iput v0, p0, Lbe/c;->L:I

    .line 153
    const-wide/16 v0, 0x78

    iget-wide v2, p0, Lbe/c;->m:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lbe/c;->M:J

    .line 159
    iput-wide v4, p0, Lbe/c;->N:J

    .line 162
    new-instance v0, Lbe/e;

    invoke-direct {v0}, Lbe/e;-><init>()V

    iput-object v0, p0, Lbe/c;->j:Lbe/f;

    .line 163
    iget-object v0, p0, Lbe/c;->j:Lbe/f;

    invoke-interface {v0, p0}, Lbe/f;->a(Lbe/g;)V

    .line 164
    return-void

    .line 33
    :array_90
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(FIFIZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0}, Lbe/c;-><init>()V

    .line 169
    iput p1, p0, Lbe/c;->z:F

    .line 170
    iput p2, p0, Lbe/c;->A:I

    .line 171
    iput p3, p0, Lbe/c;->C:F

    .line 172
    iput p4, p0, Lbe/c;->y:I

    .line 173
    iput-boolean p5, p0, Lbe/c;->K:Z

    .line 174
    return-void
.end method

.method private a(Lbd/b;)V
    .registers 11
    .parameter

    .prologue
    const v3, 0x4b189680

    const/high16 v5, 0x4040

    .line 552
    iget v0, p1, Lbd/b;->b:I

    iput v0, p0, Lbe/c;->b:I

    .line 553
    iget v0, p1, Lbd/b;->c:I

    iput v0, p0, Lbe/c;->c:I

    .line 554
    iget v0, p1, Lbd/b;->b:I

    iget v1, p0, Lbe/c;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x47d90a8f

    mul-float/2addr v0, v1

    div-float v4, v0, v3

    .line 557
    iget v0, p1, Lbd/b;->c:I

    iget v1, p0, Lbe/c;->c:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lbe/c;->b:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Lbd/a;->b(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    div-float v2, v0, v3

    .line 560
    new-instance v0, Lbe/a;

    sub-float v1, v2, v5

    add-float/2addr v2, v5

    sub-float v3, v4, v5

    add-float/2addr v4, v5

    const-wide/high16 v5, 0x3ff0

    iget v7, p0, Lbe/c;->y:I

    invoke-direct/range {v0 .. v7}, Lbe/a;-><init>(FFFFDI)V

    iput-object v0, p0, Lbe/c;->a:Lbe/a;

    .line 562
    new-instance v0, Lbd/b;

    iget v1, p1, Lbd/b;->b:I

    iget v2, p1, Lbd/b;->c:I

    iget v3, p1, Lbd/b;->d:I

    iget-object v4, p1, Lbd/b;->f:Ljava/lang/String;

    iget-object v5, p1, Lbd/b;->g:Ljava/lang/String;

    iget v6, p1, Lbd/b;->h:I

    iget v7, p1, Lbd/b;->e:F

    iget-object v8, p1, Lbd/b;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lbd/b;-><init>(IIILjava/lang/String;Ljava/lang/String;IFLjava/lang/String;)V

    iput-object v0, p0, Lbe/c;->d:Lbd/b;

    .line 565
    return-void
.end method

.method private a(Lbd/b;F)V
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lbe/c;->a:Lbe/a;

    iget-object v0, v0, Lbe/a;->i:[Lbe/b;

    array-length v1, v0

    .line 218
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_5e

    .line 219
    iget-object v2, p0, Lbe/c;->a:Lbe/a;

    iget-object v2, v2, Lbe/a;->i:[Lbe/b;

    aget-object v2, v2, v0

    .line 220
    invoke-virtual {p0, v2}, Lbe/c;->a(Lbe/b;)Lbd/b;

    move-result-object v3

    .line 221
    iget v4, v3, Lbd/b;->b:I

    iget v5, p1, Lbd/b;->b:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    .line 222
    iget v3, v3, Lbd/b;->c:I

    iget v6, p1, Lbd/b;->c:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    .line 223
    mul-double v3, v4, v4

    mul-double v5, v6, v6

    add-double/2addr v3, v5

    .line 224
    iget v5, v2, Lbe/b;->d:F

    iget v6, p0, Lbe/c;->n:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    .line 225
    const-wide v7, 0x400921fb54442d18L

    cmpl-double v7, v5, v7

    if-lez v7, :cond_3d

    .line 226
    const-wide v7, 0x401921fb54442d18L

    sub-double v5, v7, v5

    .line 228
    :cond_3d
    iget v5, v2, Lbe/b;->e:F

    float-to-double v5, v5

    float-to-double v7, p2

    const-wide/high16 v9, -0x4010

    mul-double/2addr v3, v9

    iget v9, p0, Lbe/c;->H:I

    int-to-float v9, v9

    iget-object v10, p0, Lbe/c;->d:Lbd/b;

    iget v10, v10, Lbd/b;->d:I

    int-to-float v10, v10

    iget v11, p0, Lbe/c;->F:F

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-double v9, v9

    div-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lbe/b;->e:F

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 233
    :cond_5e
    return-void
.end method

.method private b(Lbd/b;)V
    .registers 11
    .parameter

    .prologue
    .line 573
    iget-object v0, p0, Lbe/c;->d:Lbd/b;

    if-eqz v0, :cond_10

    .line 574
    iget v0, p0, Lbe/c;->r:F

    iget-object v1, p0, Lbe/c;->d:Lbd/b;

    invoke-virtual {p1, v1}, Lbd/b;->a(Lbd/b;)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lbe/c;->r:F

    .line 576
    :cond_10
    new-instance v0, Lbd/b;

    iget v1, p1, Lbd/b;->b:I

    iget v2, p1, Lbd/b;->c:I

    iget v3, p1, Lbd/b;->d:I

    iget-object v4, p1, Lbd/b;->f:Ljava/lang/String;

    iget-object v5, p1, Lbd/b;->g:Ljava/lang/String;

    iget v6, p1, Lbd/b;->h:I

    iget v7, p1, Lbd/b;->e:F

    iget-object v8, p1, Lbd/b;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lbd/b;-><init>(IIILjava/lang/String;Ljava/lang/String;IFLjava/lang/String;)V

    iput-object v0, p0, Lbe/c;->d:Lbd/b;

    .line 579
    iget-object v0, p0, Lbe/c;->a:Lbe/a;

    invoke-virtual {v0}, Lbe/a;->a()Lbe/b;

    move-result-object v0

    .line 580
    invoke-virtual {p0, v0}, Lbe/c;->a(Lbe/b;)Lbd/b;

    move-result-object v1

    iput-object v1, p0, Lbe/c;->e:Lbd/b;

    .line 582
    iget-object v1, p0, Lbe/c;->u:Lbe/b;

    if-eqz v1, :cond_4b

    .line 583
    iget-object v1, p0, Lbe/c;->u:Lbe/b;

    invoke-virtual {p0, v1}, Lbe/c;->a(Lbe/b;)Lbd/b;

    move-result-object v1

    .line 584
    iget v2, p0, Lbe/c;->s:F

    float-to-double v2, v2

    iget-object v4, p0, Lbe/c;->e:Lbd/b;

    invoke-virtual {v1, v4}, Lbd/b;->a(Lbd/b;)D

    move-result-wide v4

    add-double v1, v2, v4

    double-to-float v1, v1

    iput v1, p0, Lbe/c;->s:F

    .line 586
    :cond_4b
    iput-object v0, p0, Lbe/c;->u:Lbe/b;

    .line 588
    iget-object v1, p0, Lbe/c;->a:Lbe/a;

    iget v0, v0, Lbe/b;->d:F

    iput v0, v1, Lbe/a;->h:F

    .line 589
    return-void
.end method

.method private b(Lbd/b;F)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 595
    const/4 v0, 0x0

    :goto_1
    int-to-float v1, v0

    iget-object v2, p0, Lbe/c;->a:Lbe/a;

    iget v2, v2, Lbe/a;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_43

    .line 596
    iget-object v1, p0, Lbe/c;->a:Lbe/a;

    iget-object v1, v1, Lbe/a;->i:[Lbe/b;

    aget-object v1, v1, v0

    iget v2, p1, Lbd/b;->c:I

    iget v3, p0, Lbe/c;->c:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, Lbe/c;->b:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Lbd/a;->b(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v4, v4

    const-wide v6, 0x416312d000000000L

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lbe/b;->a:F

    .line 599
    iget-object v1, p0, Lbe/c;->a:Lbe/a;

    iget-object v1, v1, Lbe/a;->i:[Lbe/b;

    aget-object v1, v1, v0

    iget v2, p1, Lbd/b;->b:I

    iget v3, p0, Lbe/c;->b:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide v4, 0x3f86c22813448063L

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lbe/b;->b:F

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 603
    :cond_43
    return-void
.end method


# virtual methods
.method a(Lbd/b;JJJJ)F
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 715
    sub-long v2, p8, p2

    long-to-double v2, v2

    const-wide v4, 0x41cdcd6500000000L

    div-double v10, v2, v4

    .line 716
    const-wide/16 v2, 0x0

    cmpl-double v2, v10, v2

    if-nez v2, :cond_12

    .line 717
    const/4 v2, 0x0

    .line 721
    :goto_11
    return v2

    .line 719
    :cond_12
    iget v2, p1, Lbd/b;->b:I

    int-to-double v2, v2

    iget v4, p1, Lbd/b;->c:I

    int-to-double v4, v4

    move-wide/from16 v0, p4

    long-to-double v6, v0

    move-wide/from16 v0, p6

    long-to-double v8, v0

    invoke-static/range {v2 .. v9}, Lbd/a;->a(DDDD)D

    move-result-wide v2

    .line 721
    div-double/2addr v2, v10

    double-to-float v2, v2

    goto :goto_11
.end method

.method public a(Lbe/b;)Lbd/b;
    .registers 8
    .parameter

    .prologue
    .line 298
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lbe/c;->a(Lbe/b;Lbd/b;JZ)Lbd/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbe/b;Lbd/b;JZ)Lbd/b;
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    if-eqz p5, :cond_44

    iget-object v0, p0, Lbe/c;->a:Lbe/a;

    invoke-virtual {v0, p1}, Lbe/a;->a(Lbe/b;)I

    move-result v0

    move v10, v0

    .line 317
    :goto_9
    iget v0, p0, Lbe/c;->b:I

    iget v1, p1, Lbe/b;->b:F

    float-to-double v1, v1

    const-wide v3, 0x40567f46328ec073L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int v11, v0, v1

    .line 318
    iget v0, p0, Lbe/c;->c:I

    iget v1, p1, Lbe/b;->a:F

    float-to-double v1, v1

    const-wide v3, 0x416312d000000000L

    iget v5, p0, Lbe/c;->b:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Lbd/a;->b(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int v12, v0, v1

    .line 321
    if-nez p2, :cond_47

    const/4 v7, 0x0

    .line 323
    :goto_30
    iget-object v0, p0, Lbe/c;->d:Lbd/b;

    if-nez v0, :cond_54

    const-string v8, "wifi"

    .line 331
    :goto_36
    new-instance v0, Lbd/b;

    const-string v4, ""

    const-string v5, ""

    const/4 v6, -0x1

    move v1, v11

    move v2, v12

    move v3, v10

    invoke-direct/range {v0 .. v8}, Lbd/b;-><init>(IIILjava/lang/String;Ljava/lang/String;IFLjava/lang/String;)V

    return-object v0

    .line 315
    :cond_44
    const/4 v0, -0x1

    move v10, v0

    goto :goto_9

    .line 321
    :cond_47
    iget-wide v2, p0, Lbe/c;->v:J

    int-to-long v4, v11

    int-to-long v6, v12

    move-object v0, p0

    move-object v1, p2

    move-wide/from16 v8, p3

    invoke-virtual/range {v0 .. v9}, Lbe/c;->a(Lbd/b;JJJJ)F

    move-result v7

    goto :goto_30

    .line 323
    :cond_54
    iget-object v0, p0, Lbe/c;->d:Lbd/b;

    iget-object v8, v0, Lbd/b;->a:Ljava/lang/String;

    goto :goto_36
.end method

.method public a(F)V
    .registers 2
    .parameter

    .prologue
    .line 289
    return-void
.end method

.method public a(J)V
    .registers 9
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lbe/c;->a:Lbe/a;

    const v1, 0x3f19999a

    invoke-virtual {v0, v1}, Lbe/a;->b(F)V

    .line 205
    const-wide/high16 v0, 0x3fe0

    iget-wide v2, p0, Lbe/c;->i:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lbe/c;->k:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 207
    iget-object v1, p0, Lbe/c;->d:Lbd/b;

    invoke-direct {p0, v1, v0}, Lbe/c;->a(Lbd/b;F)V

    .line 208
    iget v0, p0, Lbe/c;->n:F

    invoke-virtual {p0, v0}, Lbe/c;->a(F)V

    .line 209
    return-void
.end method

.method public a(JFFF)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lbe/c;->a:Lbe/a;

    if-eqz v0, :cond_7e

    .line 182
    iget-object v0, p0, Lbe/c;->j:Lbe/f;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lbe/f;->a(JFFF)V

    .line 185
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 186
    const/4 v1, 0x0

    aput p3, v0, v1

    .line 187
    const/4 v1, 0x1

    aput p4, v0, v1

    .line 188
    const/4 v1, 0x2

    aput p5, v0, v1

    .line 189
    invoke-static {v0}, Lbe/d;->c([F)[F

    move-result-object v0

    iput-object v0, p0, Lbe/c;->f:[F

    .line 190
    iget-object v0, p0, Lbe/c;->g:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2e

    .line 191
    iget-object v0, p0, Lbe/c;->f:[F

    iput-object v0, p0, Lbe/c;->g:[F

    .line 193
    :cond_2e
    iget-object v0, p0, Lbe/c;->g:[F

    const/4 v1, 0x0

    const v2, 0x3f4ccccd

    iget-object v3, p0, Lbe/c;->g:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v2, v3

    const v3, 0x3e4ccccd

    iget-object v4, p0, Lbe/c;->f:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 194
    iget-object v0, p0, Lbe/c;->g:[F

    const/4 v1, 0x1

    const v2, 0x3f4ccccd

    iget-object v3, p0, Lbe/c;->g:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    const v3, 0x3e4ccccd

    iget-object v4, p0, Lbe/c;->f:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 195
    iget-object v0, p0, Lbe/c;->g:[F

    const/4 v1, 0x2

    const v2, 0x3f4ccccd

    iget-object v3, p0, Lbe/c;->g:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float/2addr v2, v3

    const v3, 0x3e4ccccd

    iget-object v4, p0, Lbe/c;->f:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 196
    iget-object v0, p0, Lbe/c;->g:[F

    invoke-static {v0}, Lbe/d;->c([F)[F

    move-result-object v0

    iput-object v0, p0, Lbe/c;->g:[F

    .line 198
    :cond_7e
    return-void
.end method

.method public a(JLbd/b;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 400
    iget-wide v0, p0, Lbe/c;->N:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    iget-wide v0, p0, Lbe/c;->l:J

    div-long v0, p1, v0

    iget-wide v2, p0, Lbe/c;->N:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lbe/c;->M:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 432
    :cond_15
    :goto_15
    return-void

    .line 404
    :cond_16
    iput-wide p1, p0, Lbe/c;->i:J

    .line 405
    if-eqz p3, :cond_15

    .line 406
    iget-object v0, p0, Lbe/c;->a:Lbe/a;

    if-nez v0, :cond_22

    .line 407
    invoke-direct {p0, p3}, Lbe/c;->a(Lbd/b;)V

    goto :goto_15

    .line 409
    :cond_22
    const/high16 v0, 0x3f80

    invoke-direct {p0, p3, v0}, Lbe/c;->a(Lbd/b;F)V

    .line 411
    invoke-direct {p0, p3}, Lbe/c;->b(Lbd/b;)V

    .line 413
    iget-object v0, p0, Lbe/c;->a:Lbe/a;

    invoke-virtual {v0}, Lbe/a;->b()V

    .line 415
    iget v0, p0, Lbe/c;->n:F

    invoke-virtual {p0, v0}, Lbe/c;->a(F)V

    .line 418
    iget v0, p0, Lbe/c;->z:F

    .line 426
    iget v1, p3, Lbd/b;->d:I

    iget v2, p0, Lbe/c;->A:I

    if-ge v1, v2, :cond_3e

    .line 427
    iget v0, p0, Lbe/c;->C:F

    .line 429
    :cond_3e
    invoke-direct {p0, p3, v0}, Lbe/c;->b(Lbd/b;F)V

    goto :goto_15
.end method

.method public b(J)Lbd/b;
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 637
    iget-object v0, p0, Lbe/c;->a:Lbe/a;

    if-eqz v0, :cond_36

    .line 638
    iget-object v0, p0, Lbe/c;->a:Lbe/a;

    invoke-virtual {v0}, Lbe/a;->a()Lbe/b;

    move-result-object v1

    .line 639
    iget-object v2, p0, Lbe/c;->w:Lbd/b;

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lbe/c;->a(Lbe/b;Lbd/b;JZ)Lbd/b;

    move-result-object v0

    .line 640
    iput-object v0, p0, Lbe/c;->w:Lbd/b;

    .line 641
    iput-wide p1, p0, Lbe/c;->v:J

    .line 642
    iget-boolean v1, p0, Lbe/c;->K:Z

    if-eqz v1, :cond_35

    .line 643
    iget-object v1, p0, Lbe/c;->x:[Lbe/b;

    if-nez v1, :cond_28

    .line 644
    iget-object v1, p0, Lbe/c;->a:Lbe/a;

    iget v1, v1, Lbe/a;->a:I

    new-array v1, v1, [Lbe/b;

    iput-object v1, p0, Lbe/c;->x:[Lbe/b;

    .line 646
    :cond_28
    iget-object v1, p0, Lbe/c;->a:Lbe/a;

    iget-object v1, v1, Lbe/a;->i:[Lbe/b;

    iget-object v2, p0, Lbe/c;->x:[Lbe/b;

    iget-object v3, p0, Lbe/c;->a:Lbe/a;

    iget v3, v3, Lbe/a;->a:I

    invoke-static {v1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 650
    :cond_35
    :goto_35
    return-object v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method
