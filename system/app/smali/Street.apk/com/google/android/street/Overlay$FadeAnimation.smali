.class Lcom/google/android/street/Overlay$FadeAnimation;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimation"
.end annotation


# instance fields
.field private mLabelOpacity:I

.field private mLabelState:I

.field private mLabelStateStartTime:J


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 1488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1489
    invoke-virtual {p0, p1}, Lcom/google/android/street/Overlay$FadeAnimation;->reset(Z)V

    .line 1490
    return-void
.end method


# virtual methods
.method public computeLabelOpacity(ZJ)J
    .registers 14
    .parameter "visible"
    .parameter "currentTime"

    .prologue
    .line 1521
    iget-wide v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    sub-long v0, p2, v6

    .line 1522
    .local v0, delta:J
    iget v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    packed-switch v6, :pswitch_data_ea

    .line 1608
    const-wide/16 v6, 0x0

    :goto_b
    return-wide v6

    .line 1524
    :pswitch_c
    iget v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    const/high16 v7, 0x1

    if-ne v6, v7, :cond_1f

    .line 1525
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1526
    const/high16 v6, 0x1

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1527
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1528
    const-wide/16 v6, 0x7d0

    add-long/2addr v6, p2

    goto :goto_b

    .line 1530
    :cond_1f
    const/4 v6, 0x4

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1531
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1532
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1533
    const-wide/16 v6, 0x0

    goto :goto_b

    .line 1536
    :pswitch_2a
    if-eqz p1, :cond_32

    .line 1537
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1538
    const-wide/16 v6, 0x7d0

    add-long/2addr v6, p2

    goto :goto_b

    .line 1540
    :cond_32
    const-wide/16 v6, 0x7d0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_3e

    .line 1541
    iget-wide v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    const-wide/16 v8, 0x7d0

    add-long/2addr v6, v8

    goto :goto_b

    .line 1543
    :cond_3e
    const-wide/16 v6, 0x7d0

    sub-long v2, v0, v6

    .line 1544
    .local v2, fadeDelta:J
    const-wide/16 v6, 0x190

    cmp-long v6, v2, v6

    if-gez v6, :cond_5e

    .line 1545
    const/4 v6, 0x3

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1546
    sub-long v6, p2, v2

    iput-wide v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1547
    const-wide/32 v6, 0x10000

    const-wide/16 v8, 0x190

    sub-long/2addr v8, v2

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    move-wide v6, p2

    .line 1550
    goto :goto_b

    .line 1552
    :cond_5e
    const/4 v6, 0x4

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1553
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1554
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1555
    const-wide/16 v6, 0x0

    goto :goto_b

    .line 1561
    .end local v2           #fadeDelta:J
    :pswitch_69
    const-wide/16 v6, 0x190

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1562
    .restart local v2       #fadeDelta:J
    if-eqz p1, :cond_8f

    .line 1564
    const-wide/16 v6, 0xc8

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x190

    div-long v4, v6, v8

    .line 1566
    .local v4, fadeInToDo:J
    sub-long v6, p2, v4

    iput-wide v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1567
    const/4 v6, 0x2

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1568
    const-wide/32 v6, 0x10000

    mul-long/2addr v6, v4

    const-wide/16 v8, 0xc8

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    move-wide v6, p2

    .line 1570
    goto/16 :goto_b

    .line 1572
    .end local v4           #fadeInToDo:J
    :cond_8f
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_a2

    .line 1573
    const-wide/32 v6, 0x10000

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    move-wide v6, p2

    .line 1576
    goto/16 :goto_b

    .line 1578
    :cond_a2
    const/4 v6, 0x4

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1579
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1580
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1581
    const-wide/16 v6, 0x0

    goto/16 :goto_b

    .line 1587
    .end local v2           #fadeDelta:J
    :pswitch_ae
    const-wide/16 v6, 0xc8

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1588
    .restart local v2       #fadeDelta:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_cd

    .line 1589
    const-wide/32 v6, 0x10000

    const-wide/16 v8, 0xc8

    sub-long/2addr v8, v2

    mul-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    move-wide v6, p2

    .line 1592
    goto/16 :goto_b

    .line 1594
    :cond_cd
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1595
    const/high16 v6, 0x1

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1596
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1597
    const-wide/16 v6, 0x7d0

    add-long/2addr v6, p2

    goto/16 :goto_b

    .line 1601
    .end local v2           #fadeDelta:J
    :pswitch_db
    if-eqz p1, :cond_e5

    .line 1602
    const/4 v6, 0x2

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1603
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    move-wide v6, p2

    .line 1604
    goto/16 :goto_b

    .line 1606
    :cond_e5
    const-wide/16 v6, 0x0

    goto/16 :goto_b

    .line 1522
    nop

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_c
        :pswitch_2a
        :pswitch_ae
        :pswitch_69
        :pswitch_db
    .end packed-switch
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 1509
    iget v0, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    return v0
.end method

.method public isTransparent()Z
    .registers 2

    .prologue
    .line 1500
    iget v0, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public reset(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 1493
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1494
    iput v2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1495
    if-eqz p1, :cond_e

    const/high16 v0, 0x1

    :goto_b
    iput v0, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1497
    return-void

    :cond_e
    move v0, v2

    .line 1495
    goto :goto_b
.end method
