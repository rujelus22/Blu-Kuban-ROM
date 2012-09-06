.class Lm/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:D

.field b:D

.field c:D

.field d:Ln/Q;

.field e:D

.field f:Z

.field g:D

.field h:D

.field i:Z

.field j:D

.field k:D

.field final l:Lo/x;

.field final m:Lt/k;


# direct methods
.method constructor <init>(Landroid/location/Location;Lm/j;Lt/k;Lo/x;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput-object p3, p0, Lm/j;->m:Lt/k;

    .line 626
    iput-object p4, p0, Lm/j;->l:Lo/x;

    .line 627
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ln/Q;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lm/j;->a:D

    .line 628
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    iput-wide v0, p0, Lm/j;->b:D

    .line 631
    if-nez p2, :cond_ae

    const-wide/high16 v0, 0x4000

    :goto_22
    iput-wide v0, p0, Lm/j;->c:D

    .line 635
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v3, v0

    .line 640
    :goto_2f
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v0

    iput-object v0, p0, Lm/j;->d:Ln/Q;

    .line 642
    iget-object v0, p0, Lm/j;->m:Lt/k;

    invoke-virtual {v0}, Lt/k;->f()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v0, v3

    iput-wide v0, p0, Lm/j;->e:D

    .line 646
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 647
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lm/j;->g:D

    .line 648
    if-nez p2, :cond_bc

    iget-wide v0, p0, Lm/j;->g:D

    move-wide v5, v0

    .line 650
    :goto_59
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    double-to-float v5, v5

    iget-wide v6, p0, Lm/j;->g:D

    double-to-float v6, v6

    invoke-static {v5, v6}, Ln/S;->a(FF)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, p0, Lm/j;->m:Lt/k;

    invoke-virtual {v7}, Lt/k;->g()I

    move-result v7

    int-to-double v7, v7

    invoke-static/range {v0 .. v8}, Lm/j;->a(ZDDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lm/j;->h:D

    .line 656
    iget-wide v0, p0, Lm/j;->h:D

    const-wide/high16 v2, 0x4059

    cmpg-double v0, v0, v2

    if-gez v0, :cond_c0

    iget-wide v0, p0, Lm/j;->h:D

    :goto_82
    iput-wide v0, p0, Lm/j;->h:D

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/j;->f:Z

    .line 683
    :goto_87
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 684
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lm/j;->c:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lm/j;->j:D

    .line 685
    const-wide/high16 v0, 0x4034

    const-wide/high16 v2, 0x4049

    iget-wide v4, p0, Lm/j;->j:D

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lm/j;->k:D

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/j;->i:Z

    .line 699
    :goto_ad
    return-void

    .line 631
    :cond_ae
    iget-wide v0, p0, Lm/j;->b:D

    iget-wide v2, p2, Lm/j;->b:D

    sub-double/2addr v0, v2

    goto/16 :goto_22

    .line 635
    :cond_b5
    invoke-static {}, Lm/o;->a()F

    move-result v0

    float-to-double v3, v0

    goto/16 :goto_2f

    .line 648
    :cond_bc
    iget-wide v0, p2, Lm/j;->g:D

    move-wide v5, v0

    goto :goto_59

    .line 656
    :cond_c0
    const-wide/high16 v0, 0x4059

    goto :goto_82

    .line 659
    :cond_c3
    if-eqz p2, :cond_f4

    iget-boolean v0, p2, Lm/j;->f:Z

    if-eqz v0, :cond_f4

    .line 664
    iget-wide v0, p2, Lm/j;->g:D

    iput-wide v0, p0, Lm/j;->g:D

    .line 665
    iget-object v0, p2, Lm/j;->d:Ln/Q;

    iget-object v1, p0, Lm/j;->d:Ln/Q;

    invoke-virtual {v0, v1}, Ln/Q;->c(Ln/Q;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lm/j;->a:D

    div-double/2addr v0, v2

    .line 668
    iget-wide v2, p2, Lm/j;->h:D

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lm/j;->h:D

    .line 671
    iget-wide v0, p0, Lm/j;->h:D

    const-wide/high16 v2, 0x4059

    cmpg-double v0, v0, v2

    if-gez v0, :cond_f1

    iget-wide v0, p0, Lm/j;->h:D

    :goto_eb
    iput-wide v0, p0, Lm/j;->h:D

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/j;->f:Z

    goto :goto_87

    .line 671
    :cond_f1
    const-wide/high16 v0, 0x4059

    goto :goto_eb

    .line 675
    :cond_f4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/j;->f:Z

    goto :goto_87

    .line 688
    :cond_f8
    if-eqz p2, :cond_116

    iget-boolean v0, p2, Lm/j;->i:Z

    if-eqz v0, :cond_116

    .line 692
    iget-wide v0, p2, Lm/j;->j:D

    iput-wide v0, p0, Lm/j;->j:D

    .line 693
    const-wide/high16 v0, 0x4049

    iget-wide v2, p2, Lm/j;->k:D

    iget-wide v4, p0, Lm/j;->j:D

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lm/j;->k:D

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/j;->i:Z

    goto :goto_ad

    .line 697
    :cond_116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/j;->i:Z

    goto :goto_ad
.end method

.method static a(ZDDDD)D
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 809
    const-wide v0, 0x4046800000000000L

    const-wide/high16 v2, 0x3ff0

    neg-double v4, p3

    const-wide/high16 v6, 0x403e

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v2, v0

    .line 814
    const-wide/high16 v0, 0x4010

    div-double v4, p5, v0

    .line 818
    const-wide/16 v0, 0x0

    .line 819
    if-eqz p0, :cond_24

    .line 820
    const-wide/high16 v0, 0x4034

    neg-double v6, p1

    const-wide/high16 v8, 0x4000

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v0, v6

    .line 823
    :cond_24
    add-double/2addr v2, v4

    add-double/2addr v0, v2

    add-double v0, v0, p7

    return-wide v0
.end method


# virtual methods
.method a()D
    .registers 3

    .prologue
    .line 863
    iget-wide v0, p0, Lm/j;->a:D

    return-wide v0
.end method

.method a(D)D
    .registers 7
    .parameter

    .prologue
    .line 775
    iget-wide v0, p0, Lm/j;->j:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lm/j;->k:D

    div-double/2addr v0, v2

    .line 776
    neg-double v2, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method a(Ln/Q;DLn/ac;)D
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v8, 0x400ccccccccccccdL

    const-wide/high16 v6, 0x4000

    .line 732
    iget-object v0, p0, Lm/j;->d:Ln/Q;

    invoke-virtual {p1, v0}, Ln/Q;->c(Ln/Q;)F

    move-result v0

    float-to-double v0, v0

    .line 733
    iget-wide v2, p0, Lm/j;->a:D

    div-double v2, v0, v2

    .line 737
    const-wide v0, 0x3ffccccccccccccdL

    .line 738
    invoke-virtual {p4}, Ln/ac;->j()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 739
    invoke-virtual {p4}, Ln/ac;->f()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_26

    .line 740
    add-double/2addr v0, v8

    .line 742
    :cond_26
    invoke-virtual {p4}, Ln/ac;->f()I

    move-result v4

    const/16 v5, 0x80

    if-lt v4, v5, :cond_2f

    .line 743
    add-double/2addr v0, v8

    .line 746
    :cond_2f
    const-wide/16 v4, 0x0

    sub-double v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 750
    iget-wide v2, p0, Lm/j;->e:D

    div-double/2addr v0, v2

    .line 751
    neg-double v2, v0

    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 756
    iget-boolean v0, p0, Lm/j;->f:Z

    if-eqz v0, :cond_5a

    .line 757
    double-to-float v0, p2

    iget-wide v4, p0, Lm/j;->g:D

    double-to-float v1, v4

    invoke-static {v0, v1}, Ln/S;->a(FF)F

    move-result v0

    .line 759
    float-to-double v0, v0

    iget-wide v4, p0, Lm/j;->h:D

    div-double/2addr v0, v4

    .line 760
    neg-double v4, v0

    mul-double/2addr v0, v4

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 765
    :goto_58
    mul-double/2addr v0, v2

    return-wide v0

    .line 762
    :cond_5a
    const-wide/high16 v0, 0x3ff0

    goto :goto_58
.end method

.method a(Lo/B;Ln/Q;D)D
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 708
    invoke-virtual {p0, p1, p2, p3, p4}, Lm/j;->b(Lo/B;Ln/Q;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method a(Ln/Q;D)Lo/B;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 838
    const/4 v4, 0x0

    .line 839
    iget-object v1, p0, Lm/j;->l:Lo/x;

    if-eqz v1, :cond_34

    .line 840
    iget-wide v1, p0, Lm/j;->a:D

    iget-wide v5, p0, Lm/j;->k:D

    const-wide/high16 v7, 0x4008

    mul-double/2addr v5, v7

    iget-object v3, p0, Lm/j;->m:Lt/k;

    invoke-virtual {v3}, Lt/k;->f()I

    move-result v3

    int-to-double v7, v3

    add-double/2addr v5, v7

    mul-double/2addr v1, v5

    .line 844
    iget-object v3, p0, Lm/j;->l:Lo/x;

    invoke-virtual {v3, p1, v1, v2, v0}, Lo/x;->a(Ln/Q;DZ)[Lo/B;

    move-result-object v6

    .line 849
    const-wide/high16 v2, -0x10

    move v5, v0

    .line 850
    :goto_1f
    array-length v0, v6

    if-ge v5, v0, :cond_34

    .line 851
    aget-object v0, v6, v5

    invoke-virtual {p0, v0, p1, p2, p3}, Lm/j;->b(Lo/B;Ln/Q;D)D

    move-result-wide v0

    .line 853
    cmpl-double v7, v0, v2

    if-lez v7, :cond_35

    .line 855
    aget-object v2, v6, v5

    .line 850
    :goto_2e
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move-wide v2, v0

    goto :goto_1f

    .line 859
    :cond_34
    return-object v4

    :cond_35
    move-wide v0, v2

    move-object v2, v4

    goto :goto_2e
.end method

.method b(D)D
    .registers 7
    .parameter

    .prologue
    .line 784
    const-wide/high16 v0, 0x3ff0

    iget-object v2, p0, Lm/j;->m:Lt/k;

    invoke-virtual {v2}, Lt/k;->h()D

    move-result-wide v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method b(Lo/B;Ln/Q;D)D
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 719
    invoke-virtual {p1}, Lo/B;->b()Ln/Q;

    move-result-object v0

    invoke-virtual {v0, p2}, Ln/Q;->c(Ln/Q;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lm/j;->a:D

    iget-object v4, p0, Lm/j;->m:Lt/k;

    invoke-virtual {v4}, Lt/k;->f()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 721
    invoke-virtual {p1}, Lo/B;->c()D

    move-result-wide v2

    double-to-float v2, v2

    double-to-float v3, p3

    invoke-static {v2, v3}, Ln/S;->a(FF)F

    move-result v2

    iget-object v3, p0, Lm/j;->m:Lt/k;

    invoke-virtual {v3}, Lt/k;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 724
    const-wide/high16 v4, -0x4020

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationModel[mTimeSinceLastUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lm/j;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPositionMean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lm/j;->d:Ln/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPositionStdMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lm/j;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDistanceMeanMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lm/j;->i:Z

    if-eqz v0, :cond_74

    iget-wide v2, p0, Lm/j;->j:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDistanceStdMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lm/j;->i:Z

    if-eqz v0, :cond_77

    iget-wide v2, p0, Lm/j;->k:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_4d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBearingMeanDeg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lm/j;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBearingStdDeg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lm/j;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_74
    const-string v0, "--"

    goto :goto_39

    :cond_77
    const-string v0, "--"

    goto :goto_4d
.end method
