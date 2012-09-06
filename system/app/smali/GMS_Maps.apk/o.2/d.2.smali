.class public Lo/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[F

.field private static final c:[F


# instance fields
.field a:D

.field private final d:Lo/p;

.field private e:Lm/b;

.field private f:D

.field private g:D

.field private h:Lo/B;

.field private i:[Lo/j;

.field private j:I

.field private k:Z

.field private l:D

.field private volatile m:Lo/q;

.field private n:D

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4270

    const/4 v3, 0x0

    .line 121
    const/4 v0, 0x6

    new-array v0, v0, [F

    sput-object v0, Lo/D;->b:[F

    .line 123
    const/4 v0, 0x6

    new-array v0, v0, [F

    sput-object v0, Lo/D;->c:[F

    .line 126
    sget-object v0, Lo/D;->b:[F

    aput v4, v0, v5

    .line 127
    sget-object v0, Lo/D;->b:[F

    const/high16 v1, 0x4040

    aput v1, v0, v6

    .line 128
    sget-object v0, Lo/D;->b:[F

    const/high16 v1, 0x40d0

    aput v1, v0, v7

    .line 129
    sget-object v0, Lo/D;->b:[F

    const/4 v1, 0x3

    const/high16 v2, 0x41f0

    aput v2, v0, v1

    .line 130
    sget-object v0, Lo/D;->b:[F

    const/4 v1, 0x4

    aput v4, v0, v1

    .line 131
    sget-object v0, Lo/D;->c:[F

    aput v3, v0, v5

    .line 132
    sget-object v0, Lo/D;->c:[F

    const v1, 0x3f333333

    aput v1, v0, v6

    .line 134
    sget-object v0, Lo/D;->c:[F

    const v1, 0x3ecccccd

    aput v1, v0, v7

    .line 135
    sget-object v0, Lo/D;->c:[F

    const/4 v1, 0x3

    const v2, 0x3e19999a

    aput v2, v0, v1

    .line 137
    sget-object v0, Lo/D;->c:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 138
    return-void
.end method

.method constructor <init>(Lo/p;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v0, -0x4010

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-wide v0, p0, Lo/D;->f:D

    .line 166
    iput-wide v0, p0, Lo/D;->g:D

    .line 195
    iput-wide v0, p0, Lo/D;->l:D

    .line 207
    const-wide v0, 0x7fefffffffffffffL

    iput-wide v0, p0, Lo/D;->n:D

    .line 225
    iput-object p1, p0, Lo/D;->d:Lo/p;

    .line 226
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ln/Q;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lo/D;->a:D

    .line 227
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Lo/D;->a([Lo/x;ILo/I;I)V

    .line 229
    return-void
.end method

.method private a(Lo/j;)D
    .registers 6
    .parameter

    .prologue
    .line 929
    invoke-virtual {p1}, Lo/j;->e()Lo/I;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/D;->b(Lo/I;)D

    move-result-wide v0

    invoke-virtual {p1}, Lo/j;->b()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private a(D)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 673
    invoke-direct {p0, p1, p2}, Lo/D;->c(D)Lo/I;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v1}, Lo/q;->h()Lo/I;

    move-result-object v1

    .line 675
    if-eq v0, v1, :cond_20

    .line 678
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lo/I;->j()Lo/I;

    move-result-object v1

    if-eq v0, v1, :cond_18

    .line 679
    :cond_15
    invoke-direct {p0, p1, p2}, Lo/D;->d(D)V

    .line 681
    :cond_18
    invoke-direct {p0, v0}, Lo/D;->a(Lo/I;)V

    .line 682
    iget-object v0, p0, Lo/D;->d:Lo/p;

    invoke-virtual {v0}, Lo/p;->c()V

    .line 685
    :cond_20
    iget-object v0, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v0}, Lm/b;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    .line 686
    iget v2, p0, Lo/D;->j:I

    .line 689
    :goto_29
    invoke-direct {p0, p1, p2, v0, v1}, Lo/D;->a(DD)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 690
    iget v3, p0, Lo/D;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lo/D;->j:I

    goto :goto_29

    .line 692
    :cond_36
    iget v0, p0, Lo/D;->j:I

    if-le v0, v2, :cond_5e

    .line 693
    iput-boolean v4, p0, Lo/D;->k:Z

    .line 697
    iget-object v0, p0, Lo/D;->i:[Lo/j;

    iget v1, p0, Lo/D;->j:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 698
    invoke-direct {p0, v0}, Lo/D;->a(Lo/j;)D

    move-result-wide v1

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_5e

    .line 699
    invoke-virtual {v0}, Lo/j;->e()Lo/I;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/D;->c(Lo/I;)D

    move-result-wide v1

    double-to-int v1, v1

    .line 700
    iget-wide v2, p0, Lo/D;->g:D

    double-to-int v2, v2

    sub-int/2addr v1, v2

    .line 701
    iget-object v2, p0, Lo/D;->d:Lo/p;

    invoke-virtual {v2, v0, v1}, Lo/p;->a(Lo/j;I)V

    .line 706
    :cond_5e
    iget v0, p0, Lo/D;->j:I

    iget-object v1, p0, Lo/D;->i:[Lo/j;

    array-length v1, v1

    if-lt v0, v1, :cond_7f

    .line 707
    invoke-virtual {p0, v4}, Lo/D;->a(I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 708
    iget-object v0, p0, Lo/D;->d:Lo/p;

    invoke-virtual {v0}, Lo/p;->b()V

    .line 710
    :cond_70
    iget-object v0, p0, Lo/D;->d:Lo/p;

    invoke-virtual {v0}, Lo/p;->j()V

    .line 711
    iget-object v0, p0, Lo/D;->d:Lo/p;

    invoke-virtual {v0}, Lo/p;->e()V

    .line 712
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/D;->a(Lo/I;)V

    .line 716
    :goto_7e
    return-void

    .line 714
    :cond_7f
    invoke-direct {p0, p1, p2}, Lo/D;->b(D)V

    goto :goto_7e
.end method

.method private a(Lo/I;)V
    .registers 3
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->h()Lo/I;

    move-result-object v0

    if-eq v0, p1, :cond_b

    .line 308
    invoke-direct {p0, p1}, Lo/D;->e(Lo/I;)V

    .line 310
    :cond_b
    return-void
.end method

.method private a([Lo/x;ILo/I;I)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 972
    const/4 v11, 0x0

    .line 973
    iget-object v0, p0, Lo/D;->m:Lo/q;

    if-eqz v0, :cond_b

    .line 974
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->i()Lo/x;

    move-result-object v11

    .line 976
    :cond_b
    if-eqz p1, :cond_19

    if-ltz p2, :cond_19

    if-eqz p3, :cond_19

    iget-wide v0, p0, Lo/D;->f:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2b

    .line 979
    :cond_19
    new-instance v0, Lo/q;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v11}, Lo/q;-><init>([Lo/x;ILo/I;IIIIZIZLo/x;)V

    iput-object v0, p0, Lo/D;->m:Lo/q;

    .line 1022
    :goto_2a
    return-void

    .line 983
    :cond_2b
    aget-object v2, p1, p2

    .line 986
    invoke-virtual {p3}, Lo/I;->y()I

    move-result v0

    invoke-virtual {v2, v0}, Lo/x;->c(I)D

    move-result-wide v0

    iget-wide v3, p0, Lo/D;->g:D

    sub-double/2addr v0, v3

    double-to-int v5, v0

    .line 990
    iget-wide v0, p0, Lo/D;->f:D

    invoke-virtual {v2, v0, v1}, Lo/x;->b(D)I

    move-result v7

    .line 993
    int-to-float v1, v5

    .line 994
    invoke-virtual {p3}, Lo/I;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 995
    :goto_46
    invoke-virtual {v2}, Lo/x;->k()I

    move-result v3

    if-ge v0, v3, :cond_59

    .line 996
    invoke-virtual {v2, v0}, Lo/x;->a(I)Lo/I;

    move-result-object v3

    invoke-virtual {v3}, Lo/I;->e()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 1001
    :cond_59
    const/4 v4, -0x1

    .line 1002
    iget-object v0, p0, Lo/D;->h:Lo/B;

    if-eqz v0, :cond_64

    .line 1003
    iget-object v0, p0, Lo/D;->h:Lo/B;

    invoke-virtual {v0}, Lo/B;->e()I

    move-result v4

    .line 1007
    :cond_64
    invoke-virtual {v2}, Lo/x;->p()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    .line 1008
    const/high16 v2, 0x4348

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8d

    const/4 v8, 0x1

    .line 1013
    :goto_71
    aget-object v0, p1, p2

    invoke-virtual {v0}, Lo/x;->a()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 1014
    aget-object v11, p1, p2

    .line 1017
    :cond_7b
    new-instance v0, Lo/q;

    float-to-int v6, v1

    invoke-direct {p0}, Lo/D;->f()Z

    move-result v10

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lo/q;-><init>([Lo/x;ILo/I;IIIIZIZLo/x;)V

    iput-object v0, p0, Lo/D;->m:Lo/q;

    goto :goto_2a

    .line 1008
    :cond_8d
    const/4 v8, 0x0

    goto :goto_71
.end method

.method private a(DD)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 891
    invoke-direct {p0, p1, p2, p3, p4}, Lo/D;->b(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private a(Lm/b;)Z
    .registers 10
    .parameter

    .prologue
    const-wide/high16 v6, 0x4049

    const/4 v2, 0x0

    .line 531
    iget-object v0, p0, Lo/D;->d:Lo/p;

    invoke-virtual {v0}, Lo/p;->h()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    .line 576
    :goto_c
    return v0

    .line 535
    :cond_d
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v3

    .line 537
    if-eqz v3, :cond_71

    .line 538
    invoke-virtual {v3}, Lo/x;->l()Lo/P;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 544
    iget-wide v0, p0, Lo/D;->n:D

    iget-wide v4, p0, Lo/D;->a:D

    div-double/2addr v0, v4

    invoke-virtual {p1}, Lm/b;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v0, v4

    .line 549
    invoke-virtual {p1}, Lm/b;->e()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v3}, Lo/x;->d()I

    move-result v4

    if-eqz v4, :cond_33

    .line 550
    :cond_32
    add-double/2addr v0, v6

    .line 552
    :cond_33
    invoke-virtual {v3}, Lo/x;->l()Lo/P;

    move-result-object v4

    invoke-virtual {v4}, Lo/P;->c()Ln/s;

    move-result-object v4

    invoke-virtual {p1, v4}, Lm/b;->b(Ln/s;)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v0, v4, v0

    if-gez v0, :cond_46

    move v0, v2

    .line 553
    goto :goto_c

    .line 557
    :cond_46
    invoke-virtual {v3}, Lo/x;->d()I

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {p1}, Lm/b;->e()Z

    move-result v0

    if-nez v0, :cond_71

    .line 560
    invoke-virtual {p1}, Lm/b;->i()Ln/Q;

    move-result-object v0

    if-nez v0, :cond_5a

    move v0, v2

    .line 561
    goto :goto_c

    .line 566
    :cond_5a
    iget-wide v0, p0, Lo/D;->a:D

    mul-double/2addr v0, v6

    .line 567
    invoke-virtual {p1}, Lm/b;->i()Ln/Q;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Lo/x;->a(Ln/Q;D)Lo/B;

    move-result-object v3

    .line 570
    if-eqz v3, :cond_71

    invoke-virtual {v3}, Lo/B;->d()D

    move-result-wide v3

    cmpg-double v0, v3, v0

    if-gtz v0, :cond_71

    move v0, v2

    .line 572
    goto :goto_c

    .line 576
    :cond_71
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private a(Lo/I;D)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 791
    if-nez p1, :cond_5

    .line 809
    :goto_4
    return v3

    .line 795
    :cond_5
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v4

    .line 803
    invoke-virtual {p1}, Lo/I;->k()Lo/I;

    move-result-object v0

    .line 804
    if-nez v0, :cond_2a

    const-wide/16 v0, 0x0

    .line 805
    :goto_13
    invoke-virtual {p1}, Lo/I;->y()I

    move-result v5

    invoke-virtual {v4}, Lo/x;->n()Ln/U;

    move-result-object v4

    invoke-virtual {v4}, Ln/U;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v5, v4, :cond_31

    .line 806
    cmpl-double v0, p2, v0

    if-ltz v0, :cond_2f

    move v0, v2

    :goto_28
    move v3, v0

    goto :goto_4

    .line 804
    :cond_2a
    invoke-direct {p0, v0}, Lo/D;->b(Lo/I;)D

    move-result-wide v0

    goto :goto_13

    :cond_2f
    move v0, v3

    .line 806
    goto :goto_28

    .line 808
    :cond_31
    invoke-direct {p0, p1}, Lo/D;->b(Lo/I;)D

    move-result-wide v4

    .line 809
    cmpg-double v0, v0, p2

    if-gtz v0, :cond_3f

    cmpl-double v0, v4, p2

    if-lez v0, :cond_3f

    :goto_3d
    move v3, v2

    goto :goto_4

    :cond_3f
    move v2, v3

    goto :goto_3d
.end method

.method private b(DD)D
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 900
    iget v0, p0, Lo/D;->j:I

    if-nez v0, :cond_7

    .line 901
    const-wide/16 v0, 0x0

    .line 920
    :goto_6
    return-wide v0

    .line 903
    :cond_7
    iget v0, p0, Lo/D;->j:I

    iget-object v1, p0, Lo/D;->i:[Lo/j;

    array-length v1, v1

    if-lt v0, v1, :cond_14

    .line 904
    const-wide v0, 0x47efffffe0000000L

    goto :goto_6

    .line 906
    :cond_14
    iget-object v0, p0, Lo/D;->i:[Lo/j;

    iget v1, p0, Lo/D;->j:I

    aget-object v0, v0, v1

    .line 907
    invoke-direct {p0, v0}, Lo/D;->a(Lo/j;)D

    move-result-wide v1

    .line 908
    invoke-virtual {v0}, Lo/j;->d()I

    move-result v3

    int-to-double v3, v3

    .line 909
    iget-wide v5, p0, Lo/D;->a:D

    mul-double/2addr v5, p3

    invoke-virtual {v0}, Lo/j;->c()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    .line 911
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 913
    sub-double v0, v1, v3

    .line 914
    sub-double/2addr v0, p1

    .line 915
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_3c

    .line 916
    const-wide/16 v0, 0x0

    goto :goto_6

    .line 917
    :cond_3c
    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-lez v2, :cond_47

    .line 918
    iget-wide v2, p0, Lo/D;->a:D

    mul-double/2addr v2, p3

    div-double/2addr v0, v2

    goto :goto_6

    .line 920
    :cond_47
    const-wide v0, 0x47efffffe0000000L

    goto :goto_6
.end method

.method private b(Lo/I;)D
    .registers 6
    .parameter

    .prologue
    .line 817
    invoke-virtual {p1}, Lo/I;->y()I

    move-result v0

    if-nez v0, :cond_14

    .line 818
    invoke-direct {p0, p1}, Lo/D;->d(Lo/I;)D

    move-result-wide v0

    invoke-virtual {p1}, Lo/I;->a()Ln/Q;

    move-result-object v2

    invoke-virtual {v2}, Ln/Q;->e()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 821
    :goto_13
    return-wide v0

    :cond_14
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v0

    invoke-virtual {p1}, Lo/I;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/x;->b(I)D

    move-result-wide v0

    goto :goto_13
.end method

.method private b(Landroid/location/Location;)Lo/B;
    .registers 3
    .parameter

    .prologue
    .line 659
    instance-of v0, p1, Lm/b;

    if-eqz v0, :cond_b

    check-cast p1, Lm/b;

    invoke-virtual {p1}, Lm/b;->j()Lo/B;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private b(D)V
    .registers 13
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 722
    iget-boolean v0, p0, Lo/D;->k:Z

    if-eqz v0, :cond_6

    .line 754
    :cond_5
    :goto_5
    return-void

    .line 725
    :cond_6
    iget v0, p0, Lo/D;->j:I

    iget-object v1, p0, Lo/D;->i:[Lo/j;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 728
    iget-object v0, p0, Lo/D;->i:[Lo/j;

    iget v1, p0, Lo/D;->j:I

    aget-object v0, v0, v1

    .line 729
    invoke-virtual {v0}, Lo/j;->a()I

    move-result v1

    if-eqz v1, :cond_22

    .line 732
    iget-object v1, p0, Lo/D;->d:Lo/p;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lo/p;->b(Lo/j;I)V

    .line 733
    iput-boolean v9, p0, Lo/D;->k:Z

    goto :goto_5

    .line 735
    :cond_22
    iget-object v1, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v1}, Lm/b;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 740
    iget-object v1, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v1}, Lm/b;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    .line 741
    invoke-direct {p0, p1, p2, v1, v2}, Lo/D;->b(DD)D

    move-result-wide v3

    .line 743
    const-wide/high16 v5, 0x4014

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_5

    .line 744
    invoke-virtual {v0}, Lo/j;->e()Lo/I;

    move-result-object v5

    invoke-direct {p0, v5}, Lo/D;->c(Lo/I;)D

    move-result-wide v5

    .line 745
    iget-wide v7, p0, Lo/D;->g:D

    mul-double/2addr v1, v3

    add-double/2addr v1, v7

    sub-double v1, v5, v1

    .line 747
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_5

    .line 748
    iget-object v3, p0, Lo/D;->d:Lo/p;

    double-to-int v1, v1

    invoke-virtual {v3, v0, v1}, Lo/p;->b(Lo/j;I)V

    .line 750
    iput-boolean v9, p0, Lo/D;->k:Z

    goto :goto_5
.end method

.method private b(I)V
    .registers 5
    .parameter

    .prologue
    .line 957
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->f()[Lo/x;

    move-result-object v0

    iget-object v1, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v1}, Lo/q;->m()I

    move-result v1

    iget-object v2, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v2}, Lo/q;->h()Lo/I;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lo/D;->a([Lo/x;ILo/I;I)V

    .line 960
    return-void
.end method

.method private c(Lo/I;)D
    .registers 4
    .parameter

    .prologue
    .line 829
    invoke-virtual {p1}, Lo/I;->y()I

    move-result v0

    if-nez v0, :cond_b

    .line 830
    invoke-direct {p0, p1}, Lo/D;->d(Lo/I;)D

    move-result-wide v0

    .line 833
    :goto_a
    return-wide v0

    :cond_b
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v0

    invoke-virtual {p1}, Lo/I;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/x;->c(I)D

    move-result-wide v0

    goto :goto_a
.end method

.method private c(D)Lo/I;
    .registers 7
    .parameter

    .prologue
    .line 762
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->h()Lo/I;

    move-result-object v0

    .line 763
    invoke-direct {p0, v0, p1, p2}, Lo/D;->a(Lo/I;D)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 782
    :goto_c
    return-object v0

    .line 768
    :cond_d
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lo/I;->j()Lo/I;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lo/D;->a(Lo/I;D)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 770
    invoke-virtual {v0}, Lo/I;->j()Lo/I;

    move-result-object v0

    goto :goto_c

    .line 775
    :cond_1e
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v2

    .line 776
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {v2}, Lo/x;->k()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 777
    invoke-virtual {v2, v0}, Lo/x;->a(I)Lo/I;

    move-result-object v1

    .line 778
    invoke-virtual {v2, v0}, Lo/x;->a(I)Lo/I;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lo/D;->a(Lo/I;D)Z

    move-result v3

    if-eqz v3, :cond_3b

    move-object v0, v1

    .line 779
    goto :goto_c

    .line 776
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 782
    :cond_3e
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private d(Lo/I;)D
    .registers 4
    .parameter

    .prologue
    .line 848
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Lo/x;->g()Z

    move-result v1

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lo/D;->o:Z

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lo/x;->d()I

    move-result v0

    if-eqz v0, :cond_2f

    :cond_16
    invoke-virtual {p1}, Lo/I;->j()Lo/I;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 857
    const/high16 v0, 0x41a0

    invoke-virtual {p1}, Lo/I;->j()Lo/I;

    move-result-object v1

    invoke-virtual {v1}, Lo/I;->e()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    .line 860
    :goto_2e
    return-wide v0

    :cond_2f
    const-wide/16 v0, 0x0

    goto :goto_2e
.end method

.method private d(D)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 871
    iget v0, p0, Lo/D;->j:I

    .line 872
    iput v3, p0, Lo/D;->j:I

    :goto_5
    iget v1, p0, Lo/D;->j:I

    iget-object v2, p0, Lo/D;->i:[Lo/j;

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    .line 874
    iget-object v1, p0, Lo/D;->i:[Lo/j;

    iget v2, p0, Lo/D;->j:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lo/D;->a(Lo/j;)D

    move-result-wide v1

    cmpl-double v1, v1, p1

    if-lez v1, :cond_21

    .line 879
    :cond_1a
    iget v1, p0, Lo/D;->j:I

    if-eq v0, v1, :cond_20

    .line 880
    iput-boolean v3, p0, Lo/D;->k:Z

    .line 882
    :cond_20
    return-void

    .line 873
    :cond_21
    iget v1, p0, Lo/D;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/D;->j:I

    goto :goto_5
.end method

.method private e()V
    .registers 7

    .prologue
    .line 400
    iget-wide v0, p0, Lo/D;->l:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1a

    iget-wide v0, p0, Lo/D;->f:D

    iget-wide v2, p0, Lo/D;->l:D

    sub-double/2addr v0, v2

    const-wide v2, 0x407f400000000000L

    iget-wide v4, p0, Lo/D;->a:D

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1a

    .line 412
    :cond_19
    :goto_19
    return-void

    .line 407
    :cond_1a
    iget-wide v0, p0, Lo/D;->f:D

    iput-wide v0, p0, Lo/D;->l:D

    .line 409
    invoke-virtual {p0}, Lo/D;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/D;->a(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 410
    iget-object v0, p0, Lo/D;->d:Lo/p;

    invoke-virtual {v0}, Lo/p;->b()V

    goto :goto_19
.end method

.method private e(Lo/I;)V
    .registers 5
    .parameter

    .prologue
    .line 946
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->f()[Lo/x;

    move-result-object v0

    iget-object v1, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v1}, Lo/q;->m()I

    move-result v1

    iget-object v2, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v2}, Lo/q;->k()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lo/D;->a([Lo/x;ILo/I;I)V

    .line 949
    return-void
.end method

.method private f()Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 583
    iget-object v2, p0, Lo/D;->e:Lm/b;

    if-nez v2, :cond_7

    .line 601
    :cond_6
    :goto_6
    return v1

    .line 587
    :cond_7
    iget-object v2, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v2}, Lm/b;->k()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 588
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v2

    invoke-virtual {v2}, Lt/k;->s()D

    move-result-wide v2

    .line 590
    iget-object v4, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v4}, Lm/b;->l()D

    move-result-wide v4

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_23

    :goto_21
    move v1, v0

    goto :goto_6

    :cond_23
    move v0, v1

    goto :goto_21

    .line 594
    :cond_25
    iget-object v2, p0, Lo/D;->h:Lo/B;

    if-eqz v2, :cond_6

    .line 595
    iget-object v2, p0, Lo/D;->h:Lo/B;

    invoke-virtual {v2}, Lo/B;->d()D

    move-result-wide v2

    iget-wide v4, p0, Lo/D;->a:D

    div-double/2addr v2, v4

    .line 597
    const-wide/high16 v4, 0x4049

    const/high16 v6, 0x4000

    iget-object v7, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v7}, Lm/b;->getAccuracy()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 599
    cmpg-double v2, v2, v4

    if-gtz v2, :cond_48

    :goto_46
    move v1, v0

    goto :goto_6

    :cond_48
    move v0, v1

    goto :goto_46
.end method

.method private g()V
    .registers 9

    .prologue
    const-wide/high16 v6, -0x4010

    .line 627
    iget-object v0, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v0}, Lm/b;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ln/Q;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lo/D;->a:D

    .line 631
    iget-object v0, p0, Lo/D;->e:Lm/b;

    invoke-direct {p0, v0}, Lo/D;->b(Landroid/location/Location;)Lo/B;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v1}, Lo/q;->g()Lo/x;

    move-result-object v1

    .line 633
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lo/B;->a()Lo/x;

    move-result-object v2

    if-ne v2, v1, :cond_68

    .line 634
    iput-object v0, p0, Lo/D;->h:Lo/B;

    .line 641
    :goto_24
    iget-object v0, p0, Lo/D;->h:Lo/B;

    if-eqz v0, :cond_87

    .line 642
    iget-object v0, p0, Lo/D;->h:Lo/B;

    invoke-virtual {v1, v0}, Lo/x;->a(Lo/B;)D

    move-result-wide v2

    iput-wide v2, p0, Lo/D;->f:D

    .line 643
    iget-object v0, p0, Lo/D;->h:Lo/B;

    invoke-virtual {v0}, Lo/B;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lo/x;->c(I)D

    move-result-wide v2

    invoke-virtual {v1}, Lo/x;->n()Ln/U;

    move-result-object v0

    iget-object v1, p0, Lo/D;->h:Lo/B;

    invoke-virtual {v1}, Lo/B;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v0

    iget-object v1, p0, Lo/D;->h:Lo/B;

    invoke-virtual {v1}, Lo/B;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/Q;->c(Ln/Q;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v4, p0, Lo/D;->a:D

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lo/D;->g:D

    .line 646
    iget-wide v0, p0, Lo/D;->n:D

    iget-object v2, p0, Lo/D;->h:Lo/B;

    invoke-virtual {v2}, Lo/B;->d()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lo/D;->n:D

    .line 651
    :goto_67
    return-void

    .line 636
    :cond_68
    iget-object v0, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v0}, Lm/b;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v0}, Lm/b;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v0

    .line 638
    const-wide v2, 0x40c3880000000000L

    iget-wide v4, p0, Lo/D;->a:D

    mul-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lo/x;->a(Ln/Q;D)Lo/B;

    move-result-object v0

    iput-object v0, p0, Lo/D;->h:Lo/B;

    goto :goto_24

    .line 648
    :cond_87
    iput-wide v6, p0, Lo/D;->f:D

    .line 649
    iput-wide v6, p0, Lo/D;->g:D

    goto :goto_67
.end method

.method private h()V
    .registers 2

    .prologue
    .line 937
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->h()Lo/I;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/D;->e(Lo/I;)V

    .line 938
    return-void
.end method


# virtual methods
.method a([D)D
    .registers 15
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 473
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v5

    .line 474
    invoke-virtual {v5}, Lo/x;->t()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lo/D;->h:Lo/B;

    if-nez v0, :cond_14

    :cond_12
    move-wide v0, v1

    .line 520
    :goto_13
    return-wide v0

    .line 477
    :cond_14
    invoke-virtual {v5}, Lo/x;->u()Ljava/util/Collection;

    move-result-object v0

    .line 479
    if-nez v0, :cond_1c

    move-wide v0, v1

    .line 480
    goto :goto_13

    .line 484
    :cond_1c
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 485
    const/4 v4, 0x0

    .line 486
    iget-object v0, p0, Lo/D;->h:Lo/B;

    invoke-virtual {v0}, Lo/B;->e()I

    move-result v3

    .line 487
    :cond_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 488
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/C;

    .line 489
    invoke-virtual {v0, v3}, Lo/C;->a(I)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 494
    :goto_39
    if-nez v0, :cond_3d

    move-wide v0, v1

    .line 495
    goto :goto_13

    .line 497
    :cond_3d
    invoke-virtual {v5}, Lo/x;->n()Ln/U;

    move-result-object v4

    .line 499
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v5

    .line 500
    invoke-virtual {v5}, Lt/k;->r()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-double v7, v5

    iget-wide v9, p0, Lo/D;->a:D

    mul-double/2addr v7, v9

    .line 504
    :cond_4f
    :goto_4f
    cmpg-double v5, v1, v7

    if-gez v5, :cond_7d

    .line 505
    invoke-virtual {v4, v3}, Ln/U;->b(I)F

    move-result v5

    float-to-double v9, v5

    .line 506
    add-double/2addr v1, v9

    .line 507
    invoke-virtual {v0, v3}, Lo/C;->a(I)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 508
    invoke-virtual {v0}, Lo/C;->a()I

    move-result v5

    aget-wide v11, p1, v5

    add-double/2addr v9, v11

    aput-wide v9, p1, v5

    .line 510
    :cond_68
    add-int/lit8 v3, v3, 0x1

    .line 511
    invoke-virtual {v0, v3}, Lo/C;->a(I)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 512
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 513
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/C;

    goto :goto_4f

    :cond_7d
    move-wide v0, v1

    goto :goto_13

    :cond_7f
    move-object v0, v4

    goto :goto_39
.end method

.method a([DD)I
    .registers 17
    .parameter
    .parameter

    .prologue
    .line 431
    const-wide/16 v3, 0x0

    .line 432
    const-wide/16 v1, 0x0

    .line 433
    const/4 v0, 0x0

    move-wide v11, v1

    move-wide v1, v3

    move-wide v3, v11

    .line 434
    :goto_8
    const/4 v5, 0x4

    if-gt v0, v5, :cond_25

    .line 435
    aget-wide v5, p1, v0

    sget-object v7, Lo/D;->b:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    sget-object v8, Lo/D;->b:[F

    aget v8, v8, v0

    div-float/2addr v7, v8

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v5, v1

    .line 438
    aget-wide v1, p1, v0

    add-double/2addr v1, v3

    .line 434
    add-int/lit8 v0, v0, 0x1

    move-wide v3, v1

    move-wide v1, v5

    goto :goto_8

    .line 441
    :cond_25
    div-double v5, v1, v3

    .line 445
    const-wide v0, 0x408f400000000000L

    iget-wide v7, p0, Lo/D;->a:D

    mul-double/2addr v7, v0

    .line 446
    const-wide/16 v1, 0x0

    .line 447
    const/4 v0, 0x1

    .line 448
    :goto_32
    const/4 v9, 0x4

    if-ge v0, v9, :cond_49

    .line 449
    aget-wide v9, p1, v0

    add-double/2addr v1, v9

    .line 450
    cmpl-double v9, v1, v7

    if-lez v9, :cond_46

    sget-object v9, Lo/D;->c:[F

    aget v9, v9, v0

    float-to-double v9, v9

    cmpl-double v9, v5, v9

    if-lez v9, :cond_46

    .line 462
    :goto_45
    return v0

    .line 448
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 458
    :cond_49
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    const-wide/high16 v5, 0x3fe0

    mul-double v2, v3, v5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_56

    .line 460
    const/4 v0, 0x4

    goto :goto_45

    .line 462
    :cond_56
    const/4 v0, 0x5

    goto :goto_45
.end method

.method public a()Lo/q;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lo/D;->m:Lo/q;

    return-object v0
.end method

.method public a(Landroid/location/Location;)V
    .registers 9
    .parameter

    .prologue
    const-wide/high16 v5, -0x4010

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 326
    check-cast p1, Lm/b;

    iput-object p1, p0, Lo/D;->e:Lm/b;

    .line 328
    iget-object v0, p0, Lo/D;->i:[Lo/j;

    if-eqz v0, :cond_c4

    iget v0, p0, Lo/D;->j:I

    iget-object v3, p0, Lo/D;->i:[Lo/j;

    array-length v3, v3

    if-ge v0, v3, :cond_c4

    .line 333
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v0

    invoke-virtual {v0}, Lo/x;->j()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v0}, Lm/b;->b()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v0

    invoke-virtual {v0}, Lo/x;->l()Lo/P;

    move-result-object v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lo/D;->e:Lm/b;

    iget-object v3, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v3}, Lo/q;->g()Lo/x;

    move-result-object v3

    invoke-virtual {v3}, Lo/x;->l()Lo/P;

    move-result-object v3

    invoke-virtual {v3}, Lo/P;->c()Ln/s;

    move-result-object v3

    invoke-virtual {v0, v3}, Lm/b;->b(Ln/s;)F

    move-result v0

    const/high16 v3, 0x4348

    cmpl-float v0, v0, v3

    if-lez v0, :cond_ea

    move v0, v1

    .line 343
    :goto_4e
    invoke-direct {p0}, Lo/D;->g()V

    .line 344
    invoke-direct {p0}, Lo/D;->f()Z

    move-result v3

    .line 345
    if-nez v3, :cond_6d

    iget-object v4, p0, Lo/D;->e:Lm/b;

    invoke-direct {p0, v4}, Lo/D;->a(Lm/b;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 348
    iput-boolean v2, p0, Lo/D;->k:Z

    .line 349
    const/4 v0, -0x1

    iput v0, p0, Lo/D;->j:I

    .line 350
    iput-wide v5, p0, Lo/D;->f:D

    .line 351
    iput-wide v5, p0, Lo/D;->g:D

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/D;->a(Lo/I;)V

    move v0, v1

    .line 357
    :cond_6d
    if-eqz v0, :cond_76

    .line 358
    iget-object v0, p0, Lo/D;->d:Lo/p;

    iget-object v4, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v0, v4}, Lo/p;->a(Lm/b;)V

    .line 365
    :cond_76
    iget-object v0, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v0}, Lm/b;->e()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 366
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v4

    .line 367
    const/16 v0, 0x64

    .line 368
    invoke-virtual {v4}, Lo/x;->d()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_dc

    .line 369
    const/16 v0, 0xa

    .line 374
    :cond_8f
    :goto_8f
    iget-object v5, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v4}, Lo/x;->m()Lo/P;

    move-result-object v6

    invoke-virtual {v6}, Lo/P;->c()Ln/s;

    move-result-object v6

    invoke-virtual {v5, v6}, Lm/b;->b(Ln/s;)F

    move-result v5

    int-to-float v0, v0

    cmpg-float v0, v5, v0

    if-gez v0, :cond_e8

    .line 376
    invoke-virtual {v4}, Lo/x;->n()Ln/U;

    move-result-object v0

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Lo/x;->b(I)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lo/D;->a(D)V

    .line 384
    :goto_b3
    if-eqz v3, :cond_c4

    iget-object v0, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v0}, Lm/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c4

    if-nez v1, :cond_c4

    .line 387
    iget-wide v0, p0, Lo/D;->f:D

    invoke-direct {p0, v0, v1}, Lo/D;->a(D)V

    .line 390
    :cond_c4
    invoke-direct {p0}, Lo/D;->h()V

    .line 393
    iget-object v0, p0, Lo/D;->h:Lo/B;

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->h()Lo/I;

    move-result-object v0

    if-eqz v0, :cond_d6

    .line 394
    invoke-direct {p0}, Lo/D;->e()V

    .line 396
    :cond_d6
    iget-object v0, p0, Lo/D;->d:Lo/p;

    invoke-virtual {v0}, Lo/p;->d()V

    .line 397
    return-void

    .line 370
    :cond_dc
    invoke-virtual {v4}, Lo/x;->d()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8f

    .line 371
    const/16 v0, 0x1e

    goto :goto_8f

    .line 381
    :cond_e6
    iput-boolean v1, p0, Lo/D;->o:Z

    :cond_e8
    move v1, v2

    goto :goto_b3

    :cond_ea
    move v0, v2

    goto/16 :goto_4e
.end method

.method public a([Lo/x;IZ)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 243
    iput-object v6, p0, Lo/D;->h:Lo/B;

    .line 244
    iput-wide v2, p0, Lo/D;->f:D

    .line 245
    iput-wide v2, p0, Lo/D;->g:D

    .line 246
    const-wide/high16 v4, -0x4010

    iput-wide v4, p0, Lo/D;->l:D

    .line 247
    iput v1, p0, Lo/D;->j:I

    .line 248
    iput-boolean v1, p0, Lo/D;->k:Z

    .line 249
    const-wide v4, 0x7fefffffffffffffL

    iput-wide v4, p0, Lo/D;->n:D

    .line 250
    iget-object v0, p0, Lo/D;->e:Lm/b;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v0}, Lm/b;->e()Z

    move-result v0

    if-eqz v0, :cond_af

    const/4 v0, 0x1

    :goto_26
    iput-boolean v0, p0, Lo/D;->o:Z

    .line 253
    invoke-direct {p0, p1, p2, v6, v1}, Lo/D;->a([Lo/x;ILo/I;I)V

    .line 255
    invoke-direct {p0, v2, v3}, Lo/D;->c(D)Lo/I;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/D;->a(Lo/I;)V

    .line 257
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lo/x;->l()Lo/P;

    move-result-object v4

    if-eqz v4, :cond_63

    invoke-virtual {v0}, Lo/x;->l()Lo/P;

    move-result-object v4

    invoke-virtual {v4}, Lo/P;->c()Ln/s;

    move-result-object v4

    if-eqz v4, :cond_63

    .line 261
    invoke-virtual {v0}, Lo/x;->l()Lo/P;

    move-result-object v4

    invoke-virtual {v4}, Lo/P;->c()Ln/s;

    move-result-object v4

    .line 262
    invoke-virtual {v0}, Lo/x;->n()Ln/U;

    move-result-object v5

    invoke-virtual {v5, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v1

    .line 263
    invoke-static {v4}, Ln/Q;->a(Ln/s;)Ln/Q;

    move-result-object v4

    invoke-virtual {v1, v4}, Ln/Q;->c(Ln/Q;)F

    move-result v1

    float-to-double v4, v1

    iput-wide v4, p0, Lo/D;->n:D

    .line 268
    :cond_63
    invoke-virtual {p0, v0}, Lo/D;->a(Lo/x;)[Lo/j;

    move-result-object v0

    iput-object v0, p0, Lo/D;->i:[Lo/j;

    .line 271
    iget-object v0, p0, Lo/D;->e:Lm/b;

    if-eqz v0, :cond_80

    .line 272
    invoke-direct {p0}, Lo/D;->g()V

    .line 273
    iget-wide v0, p0, Lo/D;->f:D

    invoke-direct {p0, v0, v1}, Lo/D;->c(D)Lo/I;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/D;->a(Lo/I;)V

    .line 274
    invoke-virtual {p0}, Lo/D;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/D;->a(I)Z

    .line 277
    :cond_80
    iget-object v0, p0, Lo/D;->d:Lo/p;

    invoke-virtual {v0}, Lo/p;->a()V

    .line 279
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->h()Lo/I;

    move-result-object v0

    .line 280
    if-eqz p3, :cond_b2

    .line 284
    iget-object v0, p0, Lo/D;->e:Lm/b;

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v0}, Lm/b;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 285
    iget-object v0, p0, Lo/D;->e:Lm/b;

    invoke-virtual {v0}, Lm/b;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    .line 288
    :goto_a0
    iget-wide v2, p0, Lo/D;->f:D

    invoke-direct {p0, v2, v3, v0, v1}, Lo/D;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 289
    iget v2, p0, Lo/D;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lo/D;->j:I

    goto :goto_a0

    :cond_af
    move v0, v1

    .line 250
    goto/16 :goto_26

    .line 291
    :cond_b2
    iget-object v1, p0, Lo/D;->e:Lm/b;

    if-eqz v1, :cond_c2

    if-eqz v0, :cond_c2

    invoke-virtual {v0}, Lo/I;->y()I

    move-result v0

    if-nez v0, :cond_c2

    .line 294
    invoke-direct {p0, v2, v3}, Lo/D;->a(D)V

    .line 299
    :cond_c1
    :goto_c1
    return-void

    .line 297
    :cond_c2
    iget-wide v0, p0, Lo/D;->f:D

    invoke-direct {p0, v0, v1}, Lo/D;->d(D)V

    goto :goto_c1

    :cond_c8
    move-wide v0, v2

    goto :goto_a0
.end method

.method a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 1030
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->k()I

    move-result v0

    if-eq p1, v0, :cond_d

    .line 1033
    invoke-direct {p0, p1}, Lo/D;->b(I)V

    .line 1034
    const/4 v0, 0x1

    .line 1036
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method a(Lo/x;)[Lo/j;
    .registers 5
    .parameter

    .prologue
    .line 611
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 612
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Lo/x;->k()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 613
    invoke-virtual {p1, v0}, Lo/x;->a(I)Lo/I;

    move-result-object v2

    invoke-virtual {v2}, Lo/I;->v()Ljava/util/List;

    move-result-object v2

    .line 615
    if-eqz v2, :cond_19

    .line 616
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 612
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 619
    :cond_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lo/j;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/j;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lo/D;->m:Lo/q;

    invoke-virtual {v0}, Lo/q;->h()Lo/I;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method c()I
    .registers 6

    .prologue
    .line 419
    const/4 v0, 0x6

    new-array v0, v0, [D

    .line 421
    invoke-virtual {p0, v0}, Lo/D;->a([D)D

    move-result-wide v1

    .line 422
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_f

    .line 423
    const/4 v0, 0x0

    .line 426
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0, v0, v1, v2}, Lo/D;->a([DD)I

    move-result v0

    goto :goto_e
.end method

.method public d()V
    .registers 4

    .prologue
    const-wide/high16 v0, -0x4010

    const/4 v2, 0x0

    .line 1043
    iput-object v2, p0, Lo/D;->h:Lo/B;

    .line 1044
    iput-wide v0, p0, Lo/D;->g:D

    .line 1045
    iput-wide v0, p0, Lo/D;->f:D

    .line 1046
    iput-wide v0, p0, Lo/D;->l:D

    .line 1047
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Lo/D;->a([Lo/x;ILo/I;I)V

    .line 1048
    iput-object v2, p0, Lo/D;->i:[Lo/j;

    .line 1049
    return-void
.end method
