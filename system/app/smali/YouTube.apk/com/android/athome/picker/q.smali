.class public final Lcom/android/athome/picker/q;
.super Landroid/support/v4/app/d;
.source "SourceFile"


# static fields
.field private static az:Ljava/util/Comparator;


# instance fields
.field private W:I

.field private X:Ljava/util/HashMap;

.field private Y:Ljava/util/HashMap;

.field private Z:Lcom/android/athome/picker/g;

.field private aA:Lcom/android/athome/picker/d;

.field private aB:Lcom/android/athome/picker/n;

.field private aa:Ljava/util/HashMap;

.field private ab:Lcom/android/athome/picker/MediaOutput;

.field private ac:Landroid/widget/ImageView;

.field private ad:Landroid/widget/ImageView;

.field private ae:Landroid/widget/SeekBar;

.field private af:Landroid/graphics/drawable/LevelListDrawable;

.field private ag:Landroid/widget/ListView;

.field private ah:Landroid/widget/ListView;

.field private ai:Landroid/view/ViewGroup;

.field private aj:Landroid/widget/ListView;

.field private ak:Landroid/widget/ListView;

.field private al:Landroid/widget/Button;

.field private am:Landroid/view/ViewGroup;

.field private an:Landroid/view/ViewGroup;

.field private ao:Landroid/view/ViewGroup;

.field private ap:Landroid/widget/ListView;

.field private aq:Landroid/widget/ListView;

.field private ar:Landroid/view/ViewGroup;

.field private as:Landroid/view/ViewGroup;

.field private at:Landroid/content/Context;

.field private au:Landroid/view/View;

.field private av:Lcom/android/athome/picker/ac;

.field private aw:I

.field private ax:Landroid/app/AlertDialog;

.field private ay:Lcom/android/athome/picker/media/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 501
    new-instance v0, Lcom/android/athome/picker/z;

    invoke-direct {v0}, Lcom/android/athome/picker/z;-><init>()V

    sput-object v0, Lcom/android/athome/picker/q;->az:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/d;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/athome/picker/q;->X:Ljava/util/HashMap;

    .line 50
    iput-object v0, p0, Lcom/android/athome/picker/q;->Y:Ljava/util/HashMap;

    .line 52
    iput-object v0, p0, Lcom/android/athome/picker/q;->Z:Lcom/android/athome/picker/g;

    .line 59
    iput-object v0, p0, Lcom/android/athome/picker/q;->aa:Ljava/util/HashMap;

    .line 128
    new-instance v0, Lcom/android/athome/picker/r;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/r;-><init>(Lcom/android/athome/picker/q;)V

    iput-object v0, p0, Lcom/android/athome/picker/q;->ay:Lcom/android/athome/picker/media/c;

    .line 793
    new-instance v0, Lcom/android/athome/picker/aa;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/aa;-><init>(Lcom/android/athome/picker/q;)V

    iput-object v0, p0, Lcom/android/athome/picker/q;->aA:Lcom/android/athome/picker/d;

    .line 825
    new-instance v0, Lcom/android/athome/picker/s;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/s;-><init>(Lcom/android/athome/picker/q;)V

    iput-object v0, p0, Lcom/android/athome/picker/q;->aB:Lcom/android/athome/picker/n;

    return-void
.end method

.method private E()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-direct {p0}, Lcom/android/athome/picker/q;->I()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 432
    iget-object v0, p0, Lcom/android/athome/picker/q;->Y:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/a;

    invoke-virtual {v0, v2}, Lcom/android/athome/picker/a;->a(Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 436
    :cond_1c
    :goto_1c
    return-void

    .line 433
    :cond_1d
    iget-object v0, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    if-eqz v0, :cond_1c

    .line 434
    iget-object v0, p0, Lcom/android/athome/picker/q;->X:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/g;

    invoke-virtual {v0, v2}, Lcom/android/athome/picker/g;->a(Lcom/android/athome/picker/MediaOutput;)V

    goto :goto_1c
.end method

.method private F()V
    .registers 8

    .prologue
    const/16 v6, 0x3e8

    const/4 v2, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 523
    iget v0, p0, Lcom/android/athome/picker/q;->W:I

    packed-switch v0, :pswitch_data_162

    .line 601
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported UI mode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/athome/picker/q;->W:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_21
    return-void

    .line 525
    :pswitch_22
    invoke-direct {p0}, Lcom/android/athome/picker/q;->G()V

    .line 526
    iget-object v0, p0, Lcom/android/athome/picker/q;->ar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/athome/picker/q;->X:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 528
    iget-object v0, p0, Lcom/android/athome/picker/q;->as:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/android/athome/picker/q;->ag:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 534
    :goto_41
    iget-object v0, p0, Lcom/android/athome/picker/q;->aa:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 535
    iget-object v0, p0, Lcom/android/athome/picker/q;->aa:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 536
    packed-switch v0, :pswitch_data_16a

    .line 556
    const-string v1, "MediaOutputSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknow section UI mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :goto_74
    iget-object v0, p0, Lcom/android/athome/picker/q;->aa:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 563
    iget-object v0, p0, Lcom/android/athome/picker/q;->aa:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 564
    packed-switch v0, :pswitch_data_174

    .line 579
    const-string v1, "MediaOutputSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknow section UI mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 531
    :cond_a9
    iget-object v0, p0, Lcom/android/athome/picker/q;->as:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/android/athome/picker/q;->ag:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_41

    .line 538
    :pswitch_b4
    iget-object v0, p0, Lcom/android/athome/picker/q;->ai:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/android/athome/picker/q;->aj:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/android/athome/picker/q;->ak:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/android/athome/picker/q;->al:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_74

    .line 544
    :pswitch_c9
    iget-object v0, p0, Lcom/android/athome/picker/q;->ai:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/android/athome/picker/q;->ak:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/android/athome/picker/q;->aj:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/athome/picker/q;->al:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_74

    .line 550
    :pswitch_de
    iget-object v0, p0, Lcom/android/athome/picker/q;->ai:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/android/athome/picker/q;->ak:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/athome/picker/q;->aj:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/android/athome/picker/q;->al:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_74

    .line 560
    :cond_f3
    iget-object v0, p0, Lcom/android/athome/picker/q;->ai:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_74

    .line 566
    :pswitch_fa
    iget-object v0, p0, Lcom/android/athome/picker/q;->am:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/android/athome/picker/q;->an:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/android/athome/picker/q;->ap:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/android/athome/picker/q;->ao:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_21

    .line 573
    :pswitch_110
    iget-object v0, p0, Lcom/android/athome/picker/q;->am:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/android/athome/picker/q;->an:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/android/athome/picker/q;->ao:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/android/athome/picker/q;->aq:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_21

    .line 584
    :cond_126
    iget-object v0, p0, Lcom/android/athome/picker/q;->am:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_21

    .line 588
    :pswitch_12d
    invoke-direct {p0}, Lcom/android/athome/picker/q;->G()V

    .line 589
    iget-object v0, p0, Lcom/android/athome/picker/q;->ad:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/android/athome/picker/q;->ar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/android/athome/picker/q;->Z:Lcom/android/athome/picker/g;

    if-eqz v0, :cond_15c

    iget-object v0, p0, Lcom/android/athome/picker/q;->Z:Lcom/android/athome/picker/g;

    invoke-virtual {v0}, Lcom/android/athome/picker/g;->getCount()I

    move-result v0

    if-lez v0, :cond_15c

    .line 592
    iget-object v0, p0, Lcom/android/athome/picker/q;->ah:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 596
    :goto_14b
    iget-object v0, p0, Lcom/android/athome/picker/q;->as:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/android/athome/picker/q;->ai:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/android/athome/picker/q;->am:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_21

    .line 594
    :cond_15c
    iget-object v0, p0, Lcom/android/athome/picker/q;->ah:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_14b

    .line 523
    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_22
        :pswitch_12d
    .end packed-switch

    .line 536
    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_de
        :pswitch_c9
    .end packed-switch

    .line 564
    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_fa
        :pswitch_110
        :pswitch_110
    .end packed-switch
.end method

.method private G()V
    .registers 7

    .prologue
    const/16 v2, 0x65

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 719
    iget-object v0, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    if-nez v0, :cond_1e

    .line 721
    iput v1, p0, Lcom/android/athome/picker/q;->aw:I

    .line 722
    iget-object v0, p0, Lcom/android/athome/picker/q;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 723
    iget-object v0, p0, Lcom/android/athome/picker/q;->af:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 724
    iget-object v0, p0, Lcom/android/athome/picker/q;->ae:Landroid/widget/SeekBar;

    :cond_16
    move v3, v1

    .line 751
    :goto_17
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 754
    :goto_1a
    invoke-direct {p0}, Lcom/android/athome/picker/q;->H()V

    .line 755
    return-void

    .line 726
    :cond_1e
    invoke-direct {p0}, Lcom/android/athome/picker/q;->J()Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    .line 727
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_68

    .line 728
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getIsMuted()Z

    move-result v4

    .line 731
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/athome/picker/q;->aw:I

    .line 732
    if-eqz v4, :cond_53

    move v0, v1

    .line 734
    :goto_38
    iget-object v5, p0, Lcom/android/athome/picker/q;->ae:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 736
    iget-object v0, p0, Lcom/android/athome/picker/q;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 737
    iget-object v5, p0, Lcom/android/athome/picker/q;->af:Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v4, :cond_61

    move v0, v2

    :goto_47
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 739
    iget-object v0, p0, Lcom/android/athome/picker/q;->ae:Landroid/widget/SeekBar;

    if-nez v4, :cond_4f

    move v1, v3

    :cond_4f
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1a

    .line 732
    :cond_53
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getVolume()F

    move-result v0

    iget-object v5, p0, Lcom/android/athome/picker/q;->ae:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_38

    .line 737
    :cond_61
    iget-object v0, p0, Lcom/android/athome/picker/q;->ae:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    goto :goto_47

    .line 742
    :cond_68
    iput v3, p0, Lcom/android/athome/picker/q;->aw:I

    .line 744
    iget-object v0, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v0

    .line 745
    iget-object v4, p0, Lcom/android/athome/picker/q;->ae:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/android/athome/picker/q;->ae:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 747
    iget-object v0, p0, Lcom/android/athome/picker/q;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 748
    iget-object v0, p0, Lcom/android/athome/picker/q;->af:Landroid/graphics/drawable/LevelListDrawable;

    iget-object v4, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v4}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v4

    if-eqz v4, :cond_9c

    :goto_8d
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 751
    iget-object v0, p0, Lcom/android/athome/picker/q;->ae:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_17

    .line 748
    :cond_9c
    iget-object v2, p0, Lcom/android/athome/picker/q;->ae:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    goto :goto_8d
.end method

.method private H()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 758
    iget v2, p0, Lcom/android/athome/picker/q;->W:I

    if-nez v2, :cond_19

    .line 760
    invoke-direct {p0}, Lcom/android/athome/picker/q;->J()Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v2

    .line 761
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutputGroup;->size()I

    move-result v2

    if-le v2, v0, :cond_1a

    .line 762
    :goto_12
    iget-object v2, p0, Lcom/android/athome/picker/q;->ad:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    :goto_16
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 764
    :cond_19
    return-void

    :cond_1a
    move v0, v1

    .line 761
    goto :goto_12

    .line 762
    :cond_1c
    const/16 v1, 0x8

    goto :goto_16
.end method

.method private I()Z
    .registers 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    instance-of v0, v0, Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private J()Lcom/android/athome/picker/MediaOutputGroup;
    .registers 2

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/android/athome/picker/q;->I()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    check-cast v0, Lcom/android/athome/picker/MediaOutputGroup;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic a(Lcom/android/athome/picker/q;Lcom/android/athome/picker/a;)Ljava/util/ArrayList;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 37
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-virtual {p1}, Lcom/android/athome/picker/a;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_39

    invoke-virtual {p1, v1}, Lcom/android/athome/picker/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutputGroup;

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_39
    move-object v0, v2

    goto :goto_3
.end method

.method private static a(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 488
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 490
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    .line 491
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_b

    .line 495
    :cond_1b
    sget-object v0, Lcom/android/athome/picker/q;->az:Ljava/util/Comparator;

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 498
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 499
    return-void
.end method

.method private a(Landroid/widget/ListView;Ljava/util/ArrayList;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/athome/picker/q;->aa:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const/high16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 342
    new-instance v0, Lcom/android/athome/picker/g;

    iget-object v1, p0, Lcom/android/athome/picker/q;->at:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, p3}, Lcom/android/athome/picker/g;-><init>(Landroid/content/Context;II)V

    .line 343
    iget-object v1, p0, Lcom/android/athome/picker/q;->X:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static {v0, p2}, Lcom/android/athome/picker/q;->a(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    .line 345
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/g;->a(Landroid/widget/AdapterView;)V

    .line 346
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 347
    new-instance v1, Lcom/android/athome/picker/x;

    invoke-direct {v1, p0, v0}, Lcom/android/athome/picker/x;-><init>(Lcom/android/athome/picker/q;Lcom/android/athome/picker/g;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 353
    return-void
.end method

.method private a(Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 5
    .parameter

    .prologue
    .line 694
    iget v0, p0, Lcom/android/athome/picker/q;->W:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 695
    iget-object v0, p0, Lcom/android/athome/picker/q;->Z:Lcom/android/athome/picker/g;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/android/athome/picker/q;->a(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    .line 698
    :cond_13
    return-void
.end method

.method private declared-synchronized a(Lcom/android/athome/picker/a;Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 439
    monitor-enter p0

    :try_start_1
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SelectedOutputGroup: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-direct {p0}, Lcom/android/athome/picker/q;->E()V

    .line 441
    iput-object p2, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    .line 442
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/a;->a(Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 443
    iget-object v0, p0, Lcom/android/athome/picker/q;->av:Lcom/android/athome/picker/ac;

    if-eqz v0, :cond_26

    .line 444
    iget-object v0, p0, Lcom/android/athome/picker/q;->av:Lcom/android/athome/picker/ac;

    invoke-interface {v0, p2}, Lcom/android/athome/picker/ac;->b(Lcom/android/athome/picker/MediaOutput;)V

    .line 446
    :cond_26
    invoke-direct {p0}, Lcom/android/athome/picker/q;->G()V

    .line 447
    invoke-virtual {p0}, Lcom/android/athome/picker/q;->a()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 448
    monitor-exit p0

    return-void

    .line 439
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/android/athome/picker/g;Lcom/android/athome/picker/MediaOutput;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 417
    monitor-enter p0

    :try_start_1
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SelectedOutput: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0}, Lcom/android/athome/picker/q;->E()V

    .line 420
    iput-object p2, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    .line 421
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/g;->a(Lcom/android/athome/picker/MediaOutput;)V

    .line 422
    iget-object v0, p0, Lcom/android/athome/picker/q;->av:Lcom/android/athome/picker/ac;

    if-eqz v0, :cond_26

    .line 423
    iget-object v0, p0, Lcom/android/athome/picker/q;->av:Lcom/android/athome/picker/ac;

    invoke-interface {v0, p2}, Lcom/android/athome/picker/ac;->b(Lcom/android/athome/picker/MediaOutput;)V

    .line 425
    :cond_26
    invoke-direct {p0}, Lcom/android/athome/picker/q;->G()V

    .line 426
    invoke-virtual {p0}, Lcom/android/athome/picker/q;->a()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 427
    monitor-exit p0

    return-void

    .line 417
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/android/athome/picker/q;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 37
    iget-object v2, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    if-eqz v2, :cond_21

    iget v2, p0, Lcom/android/athome/picker/q;->aw:I

    if-ne v2, v0, :cond_24

    iget-object v2, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    iget-object v3, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v3}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v3

    if-nez v3, :cond_22

    :goto_14
    invoke-virtual {v2, v0}, Lcom/android/athome/picker/MediaOutput;->setIsMuted(Z)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->av:Lcom/android/athome/picker/ac;

    iget-object v1, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    invoke-interface {v0, v1}, Lcom/android/athome/picker/ac;->a(Lcom/android/athome/picker/MediaOutput;)V

    :cond_1e
    :goto_1e
    invoke-direct {p0}, Lcom/android/athome/picker/q;->G()V

    :cond_21
    return-void

    :cond_22
    move v0, v1

    goto :goto_14

    :cond_24
    iget v2, p0, Lcom/android/athome/picker/q;->aw:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    invoke-direct {p0}, Lcom/android/athome/picker/q;->J()Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutputGroup;->getIsMuted()Z

    move-result v3

    if-nez v3, :cond_3f

    :goto_33
    invoke-virtual {v2, v0}, Lcom/android/athome/picker/MediaOutputGroup;->setIsMuted(Z)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->av:Lcom/android/athome/picker/ac;

    invoke-interface {v0, v2}, Lcom/android/athome/picker/ac;->a(Lcom/android/athome/picker/MediaOutput;)V

    invoke-direct {p0, v2}, Lcom/android/athome/picker/q;->a(Lcom/android/athome/picker/MediaOutputGroup;)V

    goto :goto_1e

    :cond_3f
    move v0, v1

    goto :goto_33
.end method

.method static synthetic a(Lcom/android/athome/picker/q;Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p1, p2}, Lcom/android/athome/picker/q;->a(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/android/athome/picker/q;Lcom/android/athome/picker/MediaOutput;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/athome/picker/q;->I()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    check-cast v0, Lcom/android/athome/picker/MediaOutputGroup;

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/MediaOutputGroup;->contains(Lcom/android/athome/picker/MediaOutput;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "MediaOutputSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remove "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from group:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/MediaOutputGroup;->remove(Lcom/android/athome/picker/MediaOutput;)Z

    iget-object v1, p0, Lcom/android/athome/picker/q;->av:Lcom/android/athome/picker/ac;

    invoke-interface {v1, p1, v0}, Lcom/android/athome/picker/ac;->b(Lcom/android/athome/picker/MediaOutput;Lcom/android/athome/picker/MediaOutputGroup;)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    const-string v1, "MediaOutputSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Add "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to group:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/MediaOutputGroup;->add(Lcom/android/athome/picker/MediaOutput;)Z

    iget-object v1, p0, Lcom/android/athome/picker/q;->av:Lcom/android/athome/picker/ac;

    invoke-interface {v1, p1, v0}, Lcom/android/athome/picker/ac;->a(Lcom/android/athome/picker/MediaOutput;Lcom/android/athome/picker/MediaOutputGroup;)V

    goto :goto_36
.end method

.method static synthetic a(Lcom/android/athome/picker/q;Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/athome/picker/q;->a(Lcom/android/athome/picker/MediaOutputGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/android/athome/picker/q;Lcom/android/athome/picker/a;Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/q;->a(Lcom/android/athome/picker/a;Lcom/android/athome/picker/MediaOutputGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/android/athome/picker/q;Lcom/android/athome/picker/g;Lcom/android/athome/picker/MediaOutput;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/q;->a(Lcom/android/athome/picker/g;Lcom/android/athome/picker/MediaOutput;)V

    return-void
.end method

.method private b(Landroid/widget/ListView;Ljava/util/ArrayList;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 357
    iget-object v0, p0, Lcom/android/athome/picker/q;->aa:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const/high16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 359
    new-instance v1, Lcom/android/athome/picker/a;

    iget-object v0, p0, Lcom/android/athome/picker/q;->at:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lcom/android/athome/picker/a;-><init>(Landroid/content/Context;I)V

    .line 360
    iget-object v0, p0, Lcom/android/athome/picker/q;->aA:Lcom/android/athome/picker/d;

    invoke-virtual {v1, v0}, Lcom/android/athome/picker/a;->a(Lcom/android/athome/picker/d;)V

    .line 361
    iget-object v0, p0, Lcom/android/athome/picker/q;->Y:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-virtual {v1, v3}, Lcom/android/athome/picker/a;->setNotifyOnChange(Z)V

    invoke-virtual {v1}, Lcom/android/athome/picker/a;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutputGroup;

    invoke-virtual {v1, v0}, Lcom/android/athome/picker/a;->add(Ljava/lang/Object;)V

    goto :goto_33

    :cond_43
    sget-object v0, Lcom/android/athome/picker/q;->az:Ljava/util/Comparator;

    invoke-virtual {v1, v0}, Lcom/android/athome/picker/a;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v1}, Lcom/android/athome/picker/a;->notifyDataSetChanged()V

    .line 363
    invoke-virtual {v1, p1}, Lcom/android/athome/picker/a;->a(Landroid/widget/AdapterView;)V

    .line 364
    new-instance v0, Lcom/android/athome/picker/y;

    invoke-direct {v0, p0, v1}, Lcom/android/athome/picker/y;-><init>(Lcom/android/athome/picker/q;Lcom/android/athome/picker/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 370
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    return-void
.end method

.method static synthetic b(Lcom/android/athome/picker/q;)V
    .registers 6
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/athome/picker/q;->J()Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    if-eqz v0, :cond_43

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/athome/picker/q;->W:I

    new-instance v1, Lcom/android/athome/picker/g;

    iget-object v2, p0, Lcom/android/athome/picker/q;->at:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getType()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/athome/picker/g;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/android/athome/picker/q;->Z:Lcom/android/athome/picker/g;

    iget-object v1, p0, Lcom/android/athome/picker/q;->ah:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/athome/picker/q;->Z:Lcom/android/athome/picker/g;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/athome/picker/q;->Z:Lcom/android/athome/picker/g;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/athome/picker/g;->a(I)V

    iget-object v1, p0, Lcom/android/athome/picker/q;->Z:Lcom/android/athome/picker/g;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/android/athome/picker/q;->a(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->Z:Lcom/android/athome/picker/g;

    iget-object v1, p0, Lcom/android/athome/picker/q;->ah:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/g;->a(Landroid/widget/AdapterView;)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->Z:Lcom/android/athome/picker/g;

    iget-object v1, p0, Lcom/android/athome/picker/q;->aB:Lcom/android/athome/picker/n;

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/g;->a(Lcom/android/athome/picker/n;)V

    invoke-direct {p0}, Lcom/android/athome/picker/q;->F()V

    :cond_43
    return-void
.end method

.method static synthetic b(Lcom/android/athome/picker/MediaOutput;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic c(Lcom/android/athome/picker/q;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/q;->aa:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/android/athome/picker/q;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/q;->X:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e(Lcom/android/athome/picker/q;)V
    .registers 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/athome/picker/q;->F()V

    return-void
.end method

.method static synthetic f(Lcom/android/athome/picker/q;)I
    .registers 2
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/android/athome/picker/q;->aw:I

    return v0
.end method

.method static synthetic g(Lcom/android/athome/picker/q;)Lcom/android/athome/picker/MediaOutputGroup;
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/athome/picker/q;->J()Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/android/athome/picker/q;)Landroid/graphics/drawable/LevelListDrawable;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/q;->af:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0
.end method

.method static synthetic i(Lcom/android/athome/picker/q;)Lcom/android/athome/picker/MediaOutput;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    return-object v0
.end method

.method static synthetic j(Lcom/android/athome/picker/q;)Lcom/android/athome/picker/ac;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/q;->av:Lcom/android/athome/picker/ac;

    return-object v0
.end method

.method static synthetic k(Lcom/android/athome/picker/q;)V
    .registers 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/athome/picker/q;->G()V

    return-void
.end method

.method static synthetic l(Lcom/android/athome/picker/q;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/q;->Y:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic m(Lcom/android/athome/picker/q;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/q;->at:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lcom/android/athome/picker/q;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/q;->ak:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/support/v4/app/d;->a(Landroid/app/Activity;)V

    .line 169
    iput-object p1, p0, Lcom/android/athome/picker/q;->at:Landroid/content/Context;

    .line 170
    invoke-static {p1}, Lcom/android/athome/picker/media/k;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/ac;

    iput-object v0, p0, Lcom/android/athome/picker/q;->av:Lcom/android/athome/picker/ac;

    .line 171
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/support/v4/app/d;->a(Landroid/os/Bundle;)V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/q;->X:Ljava/util/HashMap;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/q;->Y:Ljava/util/HashMap;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/q;->aa:Ljava/util/HashMap;

    .line 180
    return-void
.end method

.method public final a(Lcom/android/athome/picker/MediaOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 893
    if-nez p1, :cond_3

    .line 911
    :goto_2
    return-void

    .line 896
    :cond_3
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v0

    .line 897
    instance-of v1, p1, Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v1, :cond_33

    .line 898
    iget-object v1, p0, Lcom/android/athome/picker/q;->Y:Ljava/util/HashMap;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/athome/picker/q;->Y:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 899
    iget-object v1, p0, Lcom/android/athome/picker/q;->Y:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/a;

    .line 900
    check-cast p1, Lcom/android/athome/picker/MediaOutputGroup;

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/a;->remove(Ljava/lang/Object;)V

    .line 901
    invoke-virtual {v0}, Lcom/android/athome/picker/a;->notifyDataSetChanged()V

    .line 910
    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/android/athome/picker/q;->G()V

    goto :goto_2

    .line 904
    :cond_33
    iget-object v1, p0, Lcom/android/athome/picker/q;->X:Ljava/util/HashMap;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/athome/picker/q;->X:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 905
    iget-object v1, p0, Lcom/android/athome/picker/q;->X:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/g;

    .line 906
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/g;->remove(Ljava/lang/Object;)V

    .line 907
    invoke-virtual {v0}, Lcom/android/athome/picker/g;->notifyDataSetChanged()V

    goto :goto_2f
.end method

.method public final c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 12
    .parameter

    .prologue
    const/16 v9, 0x3e8

    const/high16 v8, 0x100

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 185
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/athome/picker/q;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v4, Lcom/android/athome/picker/al;->a:I

    invoke-direct {v0, v1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 186
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 189
    sget v1, Lcom/android/athome/picker/aj;->e:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    .line 190
    invoke-virtual {p0}, Lcom/android/athome/picker/q;->i()Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "selected_output"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    iput-object v0, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "SelectedOutput: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_23e

    const-string v0, "ui_mode"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/athome/picker/q;->W:I

    :goto_56
    iget-object v0, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    if-eqz v0, :cond_242

    move v1, v2

    :goto_5b
    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v6, Lcom/android/athome/picker/ai;->n:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/athome/picker/q;->ac:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/athome/picker/q;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/athome/picker/q;->af:Landroid/graphics/drawable/LevelListDrawable;

    iget-object v0, p0, Lcom/android/athome/picker/q;->ac:Landroid/widget/ImageView;

    new-instance v6, Lcom/android/athome/picker/t;

    invoke-direct {v6, p0}, Lcom/android/athome/picker/t;-><init>(Lcom/android/athome/picker/q;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v6, Lcom/android/athome/picker/ai;->C:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/athome/picker/q;->ae:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/athome/picker/q;->ae:Landroid/widget/SeekBar;

    new-instance v6, Lcom/android/athome/picker/ad;

    invoke-direct {v6, p0, v3}, Lcom/android/athome/picker/ad;-><init>(Lcom/android/athome/picker/q;B)V

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->ae:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->i:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/athome/picker/q;->ad:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/athome/picker/q;->ad:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/athome/picker/u;

    invoke-direct {v1, p0}, Lcom/android/athome/picker/u;-><init>(Lcom/android/athome/picker/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/athome/picker/q;->H()V

    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->A:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/athome/picker/q;->ar:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/athome/picker/q;->ah:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/athome/picker/q;->ah:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->u:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/athome/picker/q;->as:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->t:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/athome/picker/q;->ag:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/athome/picker/q;->ag:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    const-string v0, "speaker"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_245

    iget-object v1, p0, Lcom/android/athome/picker/q;->aa:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/athome/picker/g;

    iget-object v3, p0, Lcom/android/athome/picker/q;->at:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-direct {v1, v3, v6, v2}, Lcom/android/athome/picker/g;-><init>(Landroid/content/Context;II)V

    iget-object v3, p0, Lcom/android/athome/picker/q;->X:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/android/athome/picker/q;->a(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->ag:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Lcom/android/athome/picker/g;->a(Landroid/widget/AdapterView;)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->ag:Landroid/widget/ListView;

    new-instance v3, Lcom/android/athome/picker/v;

    invoke-direct {v3, p0, v1}, Lcom/android/athome/picker/v;-><init>(Lcom/android/athome/picker/q;Lcom/android/athome/picker/g;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->ag:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_12b
    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/athome/picker/q;->ai:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/athome/picker/q;->al:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/athome/picker/q;->al:Landroid/widget/Button;

    new-instance v1, Lcom/android/athome/picker/w;

    invoke-direct {v1, p0}, Lcom/android/athome/picker/w;-><init>(Lcom/android/athome/picker/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/athome/picker/q;->aj:Landroid/widget/ListView;

    const-string v0, "athome_group"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_24e

    iget-object v1, p0, Lcom/android/athome/picker/q;->aj:Landroid/widget/ListView;

    invoke-direct {p0, v1, v0, v7}, Lcom/android/athome/picker/q;->b(Landroid/widget/ListView;Ljava/util/ArrayList;I)V

    :goto_166
    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/athome/picker/q;->ak:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/athome/picker/q;->ak:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    const-string v0, "Nexus Q"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_257

    iget-object v1, p0, Lcom/android/athome/picker/q;->ak:Landroid/widget/ListView;

    invoke-direct {p0, v1, v0, v7}, Lcom/android/athome/picker/q;->a(Landroid/widget/ListView;Ljava/util/ArrayList;I)V

    :goto_184
    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/athome/picker/q;->am:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->w:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/athome/picker/q;->an:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->v:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/athome/picker/q;->ap:Landroid/widget/ListView;

    const-string v0, "user_route_group"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_260

    iget-object v1, p0, Lcom/android/athome/picker/q;->ap:Landroid/widget/ListView;

    invoke-direct {p0, v1, v0, v9}, Lcom/android/athome/picker/q;->b(Landroid/widget/ListView;Ljava/util/ArrayList;I)V

    :goto_1b5
    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/athome/picker/q;->ao:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    sget v1, Lcom/android/athome/picker/ai;->x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/athome/picker/q;->aq:Landroid/widget/ListView;

    const-string v0, "user_route"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_269

    iget-object v1, p0, Lcom/android/athome/picker/q;->aq:Landroid/widget/ListView;

    invoke-direct {p0, v1, v0, v9}, Lcom/android/athome/picker/q;->a(Landroid/widget/ListView;Ljava/util/ArrayList;I)V

    :goto_1da
    invoke-direct {p0}, Lcom/android/athome/picker/q;->J()Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v1

    if-eqz v1, :cond_272

    iget-object v0, p0, Lcom/android/athome/picker/q;->Y:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutputGroup;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_272

    iget-object v0, p0, Lcom/android/athome/picker/q;->Y:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v3}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/a;

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/a;->a(Lcom/android/athome/picker/MediaOutputGroup;)V

    :cond_205
    :goto_205
    invoke-direct {p0}, Lcom/android/athome/picker/q;->F()V

    .line 191
    iget-object v0, p0, Lcom/android/athome/picker/q;->au:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/q;->ax:Landroid/app/AlertDialog;

    .line 194
    iget-object v0, p0, Lcom/android/athome/picker/q;->ax:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/athome/picker/q;->ax:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 197
    iget-object v0, p0, Lcom/android/athome/picker/q;->ax:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 198
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 199
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 201
    invoke-virtual {p0}, Lcom/android/athome/picker/q;->k()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/athome/picker/ag;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 205
    iget-object v0, p0, Lcom/android/athome/picker/q;->ax:Landroid/app/AlertDialog;

    return-object v0

    .line 190
    :cond_23e
    iput v3, p0, Lcom/android/athome/picker/q;->W:I

    goto/16 :goto_56

    :cond_242
    move v1, v3

    goto/16 :goto_5b

    :cond_245
    const-string v0, "MediaOutputSelector"

    const-string v1, "No speaker outputs are available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12b

    :cond_24e
    const-string v0, "MediaOutputSelector"

    const-string v1, "No athome groups are available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_166

    :cond_257
    const-string v0, "MediaOutputSelector"

    const-string v1, "No individual athome receivers are passed in."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_184

    :cond_260
    const-string v0, "MediaOutputSelector"

    const-string v1, "No user defined groups are available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b5

    :cond_269
    const-string v0, "MediaOutputSelector"

    const-string v1, "No individual user defined receivers are passed in."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1da

    :cond_272
    iget-object v0, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    if-eqz v0, :cond_205

    iget-object v0, p0, Lcom/android/athome/picker/q;->X:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_205

    iget-object v0, p0, Lcom/android/athome/picker/q;->X:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/g;

    iget-object v1, p0, Lcom/android/athome/picker/q;->ab:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/g;->a(Lcom/android/athome/picker/MediaOutput;)V

    goto/16 :goto_205
.end method
