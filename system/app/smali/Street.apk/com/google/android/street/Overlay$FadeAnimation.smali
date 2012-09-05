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
    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1411
    invoke-virtual {p0, p1}, Lcom/google/android/street/Overlay$FadeAnimation;->reset(Z)V

    .line 1412
    return-void
.end method


# virtual methods
.method public computeLabelOpacity(ZJ)J
    .registers 14
    .parameter "visible"
    .parameter "currentTime"

    .prologue
    .line 1443
    iget-wide v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    sub-long v0, p2, v6

    .line 1444
    .local v0, delta:J
    iget v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    packed-switch v6, :pswitch_data_ea

    .line 1530
    const-wide/16 v6, 0x0

    :goto_b
    return-wide v6

    .line 1446
    :pswitch_c
    iget v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    const/high16 v7, 0x1

    if-ne v6, v7, :cond_1f

    .line 1447
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1448
    const/high16 v6, 0x1

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1449
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1450
    const-wide/16 v6, 0x7d0

    add-long/2addr v6, p2

    goto :goto_b

    .line 1452
    :cond_1f
    const/4 v6, 0x4

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1453
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1454
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1455
    const-wide/16 v6, 0x0

    goto :goto_b

    .line 1458
    :pswitch_2a
    if-eqz p1, :cond_32

    .line 1459
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1460
    const-wide/16 v6, 0x7d0

    add-long/2addr v6, p2

    goto :goto_b

    .line 1462
    :cond_32
    const-wide/16 v6, 0x7d0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_3e

    .line 1463
    iget-wide v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    const-wide/16 v8, 0x7d0

    add-long/2addr v6, v8

    goto :goto_b

    .line 1465
    :cond_3e
    const-wide/16 v6, 0x7d0

    sub-long v2, v0, v6

    .line 1466
    .local v2, fadeDelta:J
    const-wide/16 v6, 0x190

    cmp-long v6, v2, v6

    if-gez v6, :cond_5e

    .line 1467
    const/4 v6, 0x3

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1468
    sub-long v6, p2, v2

    iput-wide v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1469
    const-wide/32 v6, 0x10000

    const-wide/16 v8, 0x190

    sub-long/2addr v8, v2

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    move-wide v6, p2

    .line 1472
    goto :goto_b

    .line 1474
    :cond_5e
    const/4 v6, 0x4

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1475
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1476
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1477
    const-wide/16 v6, 0x0

    goto :goto_b

    .line 1483
    .end local v2           #fadeDelta:J
    :pswitch_69
    const-wide/16 v6, 0x190

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1484
    .restart local v2       #fadeDelta:J
    if-eqz p1, :cond_8f

    .line 1486
    const-wide/16 v6, 0xc8

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x190

    div-long v4, v6, v8

    .line 1488
    .local v4, fadeInToDo:J
    sub-long v6, p2, v4

    iput-wide v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1489
    const/4 v6, 0x2

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1490
    const-wide/32 v6, 0x10000

    mul-long/2addr v6, v4

    const-wide/16 v8, 0xc8

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    move-wide v6, p2

    .line 1492
    goto/16 :goto_b

    .line 1494
    .end local v4           #fadeInToDo:J
    :cond_8f
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_a2

    .line 1495
    const-wide/32 v6, 0x10000

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    move-wide v6, p2

    .line 1498
    goto/16 :goto_b

    .line 1500
    :cond_a2
    const/4 v6, 0x4

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1501
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1502
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1503
    const-wide/16 v6, 0x0

    goto/16 :goto_b

    .line 1509
    .end local v2           #fadeDelta:J
    :pswitch_ae
    const-wide/16 v6, 0xc8

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1510
    .restart local v2       #fadeDelta:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_cd

    .line 1511
    const-wide/32 v6, 0x10000

    const-wide/16 v8, 0xc8

    sub-long/2addr v8, v2

    mul-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    move-wide v6, p2

    .line 1514
    goto/16 :goto_b

    .line 1516
    :cond_cd
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1517
    const/high16 v6, 0x1

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1518
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1519
    const-wide/16 v6, 0x7d0

    add-long/2addr v6, p2

    goto/16 :goto_b

    .line 1523
    .end local v2           #fadeDelta:J
    :pswitch_db
    if-eqz p1, :cond_e5

    .line 1524
    const/4 v6, 0x2

    iput v6, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1525
    iput-wide p2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    move-wide v6, p2

    .line 1526
    goto/16 :goto_b

    .line 1528
    :cond_e5
    const-wide/16 v6, 0x0

    goto/16 :goto_b

    .line 1444
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
    .line 1431
    iget v0, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    return v0
.end method

.method public isTransparent()Z
    .registers 2

    .prologue
    .line 1422
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

    .line 1415
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelStateStartTime:J

    .line 1416
    iput v2, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelState:I

    .line 1417
    if-eqz p1, :cond_e

    const/high16 v0, 0x1

    :goto_b
    iput v0, p0, Lcom/google/android/street/Overlay$FadeAnimation;->mLabelOpacity:I

    .line 1419
    return-void

    :cond_e
    move v0, v2

    .line 1417
    goto :goto_b
.end method
