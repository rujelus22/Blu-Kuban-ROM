.class public Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
.super Ljava/lang/Object;
.source "CradleHomeSettingsTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;
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

.field public mSubtiteVisibled:Z

.field public mToggleButtonBackVisibled:Z

.field private mType:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8
    .parameter
    .parameter "_title"
    .parameter "_subText"
    .parameter "_type"
    .parameter "_enabled"

    .prologue
    const/4 v1, 0x0

    .line 926
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 927
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mMainTitle:Ljava/lang/String;

    .line 928
    iput-object p3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 929
    iput p4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mType:I

    .line 930
    iput-boolean p5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mEnabled:Z

    .line 931
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mStateChecked:Z

    .line 932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mSubtiteVisibled:Z

    .line 933
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mToggleButtonBackVisibled:Z

    .line 934
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mDivideImageVisibled:Z

    .line 935
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mMoreArrowImageVisibled:Z

    .line 937
    return-void
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mMainTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreArrowImageVisible()Z
    .registers 2

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mMoreArrowImageVisibled:Z

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleButtonBackVisible()Z
    .registers 2

    .prologue
    .line 984
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mToggleButtonBackVisibled:Z

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 980
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mType:I

    return v0
.end method

.method public setChecked(Z)V
    .registers 4
    .parameter "isChecked"

    .prologue
    .line 952
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 953
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mStateChecked:Z

    .line 955
    :cond_7
    return-void
.end method

.method public setDivideImageVisible(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 963
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mDivideImageVisibled:Z

    .line 964
    return-void
.end method

.method public setMoreArrowImageVisible(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 967
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mMoreArrowImageVisibled:Z

    .line 968
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "subString"

    .prologue
    .line 940
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 941
    return-void
.end method

.method public setSubTitleVisibled(Z)V
    .registers 2
    .parameter "subtitleVisibled"

    .prologue
    .line 948
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mSubtiteVisibled:Z

    .line 949
    return-void
.end method

.method public setToggleButtonBackVisbile(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 958
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mToggleButtonBackVisibled:Z

    .line 959
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setDivideImageVisible(Z)V

    .line 960
    return-void
.end method
