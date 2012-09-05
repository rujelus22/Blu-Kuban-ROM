.class public Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingItem"
.end annotation


# instance fields
.field public mDivideImageVisibled:Z

.field public mEnabled:Z

.field private mMainTitle:Ljava/lang/String;

.field public mMoreArrowImageVisibled:Z

.field public mStateChecked:Z

.field private mSubTitle:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 7
    .parameter
    .parameter "_title"
    .parameter "_subText"
    .parameter "_type"
    .parameter "_enabled"

    .prologue
    const/4 v0, 0x0

    .line 522
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    .line 524
    iput-object p3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 525
    iput p4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mType:I

    .line 526
    iput-boolean p5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mEnabled:Z

    .line 527
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mStateChecked:Z

    .line 528
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mDivideImageVisibled:Z

    .line 529
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mMoreArrowImageVisibled:Z

    .line 530
    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getDivideImageVisible()Z
    .registers 2

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mDivideImageVisibled:Z

    return v0
.end method

.method public getMainTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreArrowImageVisible()Z
    .registers 2

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mMoreArrowImageVisibled:Z

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 563
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mType:I

    return v0
.end method

.method public setChecked(Z)V
    .registers 4
    .parameter "isChecked"

    .prologue
    .line 541
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 542
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mStateChecked:Z

    .line 544
    :cond_7
    return-void
.end method

.method public setDivideImageVisible(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mDivideImageVisibled:Z

    .line 548
    return-void
.end method

.method public setMoreArrowImageVisible(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 551
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mMoreArrowImageVisibled:Z

    .line 552
    return-void
.end method
