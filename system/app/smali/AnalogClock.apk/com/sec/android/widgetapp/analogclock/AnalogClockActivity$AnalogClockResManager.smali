.class public Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;
.super Ljava/lang/Object;
.source "AnalogClockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnalogClockResManager"
.end annotation


# instance fields
.field private mHourImageViewId:I

.field private mHourResourceId:I

.field private mLayoutId:I

.field private mLayoutViewId:I

.field private mMinImageViewId:I

.field private mMinResourceId:I

.field private mSecImageViewId:I

.field private mSecResourceId:I

.field final synthetic this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter "type"

    .prologue
    const/high16 v5, 0x7f09

    const/high16 v4, 0x7f03

    const v3, 0x7f020004

    const v2, 0x7f020003

    const v1, 0x7f020002

    .line 437
    iput-object p1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 439
    if-nez p2, :cond_2e

    .line 440
    iput v4, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mLayoutId:I

    .line 441
    iput v5, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mLayoutViewId:I

    .line 443
    const v0, 0x7f090002

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mHourImageViewId:I

    .line 444
    const v0, 0x7f090004

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mMinImageViewId:I

    .line 445
    const v0, 0x7f090003

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mSecImageViewId:I

    .line 447
    iput v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mHourResourceId:I

    .line 448
    iput v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mMinResourceId:I

    .line 449
    iput v3, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mSecResourceId:I

    .line 499
    :cond_2d
    :goto_2d
    return-void

    .line 451
    :cond_2e
    const-string v0, "modern"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 452
    const v0, 0x7f030001

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mLayoutId:I

    .line 453
    const v0, 0x7f090005

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mLayoutViewId:I

    .line 455
    const v0, 0x7f090007

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mHourImageViewId:I

    .line 456
    const v0, 0x7f090009

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mMinImageViewId:I

    .line 457
    const v0, 0x7f090008

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mSecImageViewId:I

    .line 459
    const v0, 0x7f02000d

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mHourResourceId:I

    .line 460
    const v0, 0x7f02000e

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mMinResourceId:I

    .line 461
    const v0, 0x7f02000f

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mSecResourceId:I

    goto :goto_2d

    .line 463
    :cond_5f
    const-string v0, "classic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 464
    iput v4, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mLayoutId:I

    .line 465
    iput v5, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mLayoutViewId:I

    .line 467
    const v0, 0x7f090002

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mHourImageViewId:I

    .line 468
    const v0, 0x7f090004

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mMinImageViewId:I

    .line 469
    const v0, 0x7f090003

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mSecImageViewId:I

    .line 471
    iput v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mHourResourceId:I

    .line 472
    iput v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mMinResourceId:I

    .line 473
    iput v3, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mSecResourceId:I

    goto :goto_2d

    .line 475
    :cond_81
    const-string v0, "simple"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 476
    const v0, 0x7f030003

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mLayoutId:I

    .line 477
    const v0, 0x7f09000f

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mLayoutViewId:I

    .line 479
    const v0, 0x7f090011

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mHourImageViewId:I

    .line 480
    const v0, 0x7f090013

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mMinImageViewId:I

    .line 481
    const v0, 0x7f090012

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mSecImageViewId:I

    .line 483
    const v0, 0x7f020013

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mHourResourceId:I

    .line 484
    const v0, 0x7f020014

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mMinResourceId:I

    .line 485
    const v0, 0x7f020015

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mSecResourceId:I

    goto/16 :goto_2d

    .line 487
    :cond_b3
    const-string v0, "unique"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 488
    const v0, 0x7f030004

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mLayoutId:I

    .line 489
    const v0, 0x7f090014

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mLayoutViewId:I

    .line 491
    const v0, 0x7f090016

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mHourImageViewId:I

    .line 492
    const v0, 0x7f090018

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mMinImageViewId:I

    .line 493
    const v0, 0x7f090017

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mSecImageViewId:I

    .line 495
    const v0, 0x7f020018

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mHourResourceId:I

    .line 496
    const v0, 0x7f020019

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mMinResourceId:I

    .line 497
    const v0, 0x7f02001a

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mSecResourceId:I

    goto/16 :goto_2d
.end method


# virtual methods
.method public getHourImageViewId()I
    .registers 2

    .prologue
    .line 504
    iget v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mHourImageViewId:I

    return v0
.end method

.method public getHourResourceId()I
    .registers 2

    .prologue
    .line 508
    iget v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mHourResourceId:I

    return v0
.end method

.method public getLayoutId()I
    .registers 2

    .prologue
    .line 501
    iget v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mLayoutId:I

    return v0
.end method

.method public getLayoutViewId()I
    .registers 2

    .prologue
    .line 502
    iget v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mLayoutViewId:I

    return v0
.end method

.method public getMinImageViewId()I
    .registers 2

    .prologue
    .line 505
    iget v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mMinImageViewId:I

    return v0
.end method

.method public getMinResourceId()I
    .registers 2

    .prologue
    .line 509
    iget v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mMinResourceId:I

    return v0
.end method

.method public getSecImageViewId()I
    .registers 2

    .prologue
    .line 506
    iget v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mSecImageViewId:I

    return v0
.end method

.method public getSecResourceId()I
    .registers 2

    .prologue
    .line 510
    iget v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->mSecResourceId:I

    return v0
.end method
