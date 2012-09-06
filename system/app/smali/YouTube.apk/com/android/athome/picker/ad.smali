.class final Lcom/android/athome/picker/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/q;

.field private b:Ljava/util/HashMap;

.field private c:F


# direct methods
.method private constructor <init>(Lcom/android/athome/picker/q;)V
    .registers 3
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/ad;->b:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/athome/picker/q;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/android/athome/picker/ad;-><init>(Lcom/android/athome/picker/q;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->h(Lcom/android/athome/picker/q;)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 654
    if-nez p3, :cond_c

    .line 690
    :cond_b
    :goto_b
    return-void

    .line 657
    :cond_c
    iget-object v0, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->i(Lcom/android/athome/picker/q;)Lcom/android/athome/picker/MediaOutput;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 662
    iget-object v0, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->f(Lcom/android/athome/picker/q;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 663
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 664
    iget-object v1, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v1}, Lcom/android/athome/picker/q;->i(Lcom/android/athome/picker/q;)Lcom/android/athome/picker/MediaOutput;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/athome/picker/MediaOutput;->setVolume(F)V

    .line 665
    iget-object v0, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->j(Lcom/android/athome/picker/q;)Lcom/android/athome/picker/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v1}, Lcom/android/athome/picker/q;->i(Lcom/android/athome/picker/q;)Lcom/android/athome/picker/MediaOutput;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/athome/picker/ac;->a(Lcom/android/athome/picker/MediaOutput;)V

    .line 689
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->k(Lcom/android/athome/picker/q;)V

    goto :goto_b

    .line 666
    :cond_42
    iget-object v0, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->f(Lcom/android/athome/picker/q;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 667
    iget-object v0, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->g(Lcom/android/athome/picker/q;)Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v2

    .line 668
    iget-object v0, p0, Lcom/android/athome/picker/ad;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 670
    iget v1, p0, Lcom/android/athome/picker/ad;->c:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_b6

    .line 673
    int-to-float v1, p2

    iget v4, p0, Lcom/android/athome/picker/ad;->c:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_a6

    .line 674
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x3f80

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v5, v1

    int-to-float v5, p2

    iget v6, p0, Lcom/android/athome/picker/ad;->c:F

    sub-float/2addr v5, v6

    mul-float/2addr v1, v5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/athome/picker/ad;->c:F

    sub-float/2addr v5, v6

    div-float/2addr v1, v5

    add-float/2addr v1, v4

    .line 684
    :goto_9c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/MediaOutput;->setVolume(F)V

    goto :goto_5b

    .line 677
    :cond_a6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v4, p2

    mul-float/2addr v1, v4

    iget v4, p0, Lcom/android/athome/picker/ad;->c:F

    div-float/2addr v1, v4

    goto :goto_9c

    .line 682
    :cond_b6
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    goto :goto_9c

    .line 686
    :cond_be
    iget-object v0, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v0, v2}, Lcom/android/athome/picker/q;->a(Lcom/android/athome/picker/q;Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 687
    iget-object v0, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->j(Lcom/android/athome/picker/q;)Lcom/android/athome/picker/ac;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/athome/picker/ac;->a(Lcom/android/athome/picker/MediaOutput;)V

    goto/16 :goto_3c
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->f(Lcom/android/athome/picker/q;)I

    move-result v0

    if-nez v0, :cond_9

    .line 643
    :cond_8
    return-void

    .line 624
    :cond_9
    iget-object v0, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->f(Lcom/android/athome/picker/q;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 630
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/athome/picker/ad;->c:F

    .line 632
    iget-object v0, p0, Lcom/android/athome/picker/ad;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->g(Lcom/android/athome/picker/q;)Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    .line 633
    if-nez v0, :cond_29

    .line 634
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "selected group is null in group volume mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_29
    iget-object v1, p0, Lcom/android/athome/picker/ad;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 637
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    .line 638
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v2

    if-nez v2, :cond_36

    .line 639
    iget-object v2, p0, Lcom/android/athome/picker/ad;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter

    .prologue
    .line 648
    return-void
.end method
