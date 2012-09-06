.class public Lcom/google/android/maps/driveabout/vector/dJ;
.super Lcom/google/android/maps/driveabout/vector/c;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/vector/l;

.field private c:Lcom/google/android/maps/driveabout/vector/m;

.field private final d:I

.field private final e:J

.field private f:I

.field private final g:Lcom/google/googlenav/common/a;

.field private h:F


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/m;IZF)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 900
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/c;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 888
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dJ;->f:I

    .line 889
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->g:Lcom/google/googlenav/common/a;

    .line 901
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dJ;->b:Lcom/google/android/maps/driveabout/vector/l;

    .line 902
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/dJ;->c:Lcom/google/android/maps/driveabout/vector/m;

    .line 903
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->g:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->e:J

    .line 905
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->b:Lcom/google/android/maps/driveabout/vector/l;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dJ;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/m;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 907
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dJ;->d:I

    .line 914
    :goto_2c
    if-eqz p4, :cond_39

    .line 915
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->h:F

    .line 919
    :goto_31
    return-void

    .line 911
    :cond_32
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->d:I

    goto :goto_2c

    .line 917
    :cond_39
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/dJ;->h:F

    goto :goto_31
.end method

.method private a(F)F
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 959
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v4

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    sub-float v0, v4, v0

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 952
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->f:I

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/m;
    .registers 8
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 923
    const/4 v3, 0x0

    .line 924
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->g:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    .line 925
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/dJ;->d:I

    if-nez v4, :cond_32

    move v1, v2

    .line 927
    :goto_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->c:Lcom/google/android/maps/driveabout/vector/m;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/F;

    if-eqz v0, :cond_5b

    .line 928
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->c:Lcom/google/android/maps/driveabout/vector/m;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/F;

    .line 930
    cmpl-float v3, v1, v2

    if-ltz v3, :cond_1f

    .line 932
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/F;->b()V

    .line 934
    :cond_1f
    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/F;->a(Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/m;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/dJ;->c:Lcom/google/android/maps/driveabout/vector/m;

    .line 935
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/F;->a()I

    move-result v0

    .line 938
    :goto_29
    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3c

    .line 939
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->f:I

    .line 940
    iget-object p0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->c:Lcom/google/android/maps/driveabout/vector/m;

    .line 947
    :goto_31
    return-object p0

    .line 925
    :cond_32
    iget-wide v4, p0, Lcom/google/android/maps/driveabout/vector/dJ;->e:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dJ;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_e

    .line 942
    :cond_3c
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/dJ;->a(F)F

    move-result v1

    .line 943
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dJ;->b:Lcom/google/android/maps/driveabout/vector/l;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dJ;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/m;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/dJ;->b:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/vector/l;->a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/dJ;->h:F

    invoke-static {v2, v3, v1, v4}, Lcom/google/android/maps/driveabout/vector/l;->a(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/l;FF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dJ;->a:Lcom/google/android/maps/driveabout/vector/l;

    .line 946
    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dJ;->f:I

    goto :goto_31

    :cond_5b
    move v0, v3

    goto :goto_29
.end method
