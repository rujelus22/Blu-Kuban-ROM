.class public Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;
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

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8
    .parameter
    .parameter "_title"
    .parameter "_subText"
    .parameter "_type"
    .parameter "_enabled"

    .prologue
    const/4 v1, 0x0

    .line 1148
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1149
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    .line 1150
    iput-object p3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 1151
    iput p4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mType:I

    .line 1152
    iput-boolean p5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mEnabled:Z

    .line 1153
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mStateChecked:Z

    .line 1154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mSubtiteVisibled:Z

    .line 1155
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mToggleButtonBackVisibled:Z

    .line 1156
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mDivideImageVisibled:Z

    .line 1157
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mMoreArrowImageVisibled:Z

    .line 1159
    return-void
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreArrowImageVisible()Z
    .registers 2

    .prologue
    .line 1214
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mMoreArrowImageVisibled:Z

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleButtonBackVisible()Z
    .registers 2

    .prologue
    .line 1206
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mToggleButtonBackVisibled:Z

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 1202
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mType:I

    return v0
.end method

.method public setChecked(Z)V
    .registers 4
    .parameter "isChecked"

    .prologue
    .line 1174
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1175
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mStateChecked:Z

    .line 1177
    :cond_7
    return-void
.end method

.method public setDivideImageVisible(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 1185
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mDivideImageVisibled:Z

    .line 1186
    return-void
.end method

.method public setMoreArrowImageVisible(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 1189
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mMoreArrowImageVisibled:Z

    .line 1190
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "subString"

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 1163
    return-void
.end method

.method public setSubTitleVisibled(Z)V
    .registers 2
    .parameter "subtitleVisibled"

    .prologue
    .line 1170
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mSubtiteVisibled:Z

    .line 1171
    return-void
.end method

.method public setToggleButtonBackVisbile(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 1180
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mToggleButtonBackVisibled:Z

    .line 1181
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setDivideImageVisible(Z)V

    .line 1182
    return-void
.end method
