.class public Lcom/android/email/activity/AddTextSelectorAdapter;
.super Lcom/android/email/activity/IconListAdapter;
.source "AddTextSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AddTextSelectorAdapter$AddTextListItem;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    invoke-static {p1}, Lcom/android/email/activity/AddTextSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 60
    return-void
.end method

.method private static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z
    .registers 7
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "menuId"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/activity/IconListAdapter$IconListItem;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    invoke-static {p0, p1}, Lcom/android/email/activity/utils/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 121
    invoke-static {p0, p1}, Lcom/android/email/EmailUtility;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_15

    .line 123
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0, p4}, Lcom/android/email/activity/AddTextSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 124
    const/4 v1, 0x1

    .line 128
    .end local v0           #appIcon:Landroid/graphics/drawable/Drawable;
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .parameter
    .parameter "title"
    .parameter "appIcon"
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/activity/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/email/activity/AddTextSelectorAdapter$AddTextListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/email/activity/AddTextSelectorAdapter$AddTextListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 147
    .local v0, temp:Lcom/android/email/activity/AddTextSelectorAdapter$AddTextListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/activity/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x7f080207

    const/4 v3, 0x5

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v1, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 76
    .local v0, ModelName:Ljava/lang/String;
    const-string v2, "com.sec.android.app.gallery3d"

    invoke-static {p0, v2, v1, v4, v3}, Lcom/android/email/activity/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v2

    if-nez v2, :cond_22

    .line 78
    const-string v2, "com.cooliris.media"

    invoke-static {p0, v2, v1, v4, v3}, Lcom/android/email/activity/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v2

    if-nez v2, :cond_22

    .line 80
    const-string v2, "com.sec.android.gallery3d"

    invoke-static {p0, v2, v1, v4, v3}, Lcom/android/email/activity/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 85
    :cond_22
    const-string v2, "com.android.contacts"

    const v3, 0x7f080201

    const/4 v4, 0x0

    invoke-static {p0, v2, v1, v3, v4}, Lcom/android/email/activity/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 98
    const-string v2, "com.android.calendar"

    const v3, 0x7f0802b6

    const/4 v4, 0x2

    invoke-static {p0, v2, v1, v3, v4}, Lcom/android/email/activity/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 102
    const-string v2, "com.sec.android.app.memo"

    const v3, 0x7f080203

    const/4 v4, 0x3

    invoke-static {p0, v2, v1, v3, v4}, Lcom/android/email/activity/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 105
    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    const v3, 0x7f080205

    const/4 v4, 0x6

    invoke-static {p0, v2, v1, v3, v4}, Lcom/android/email/activity/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 108
    const-string v2, "com.sec.android.app.snotebook"

    const v3, 0x7f080206

    const/16 v4, 0x9

    invoke-static {p0, v2, v1, v3, v4}, Lcom/android/email/activity/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 111
    const-string v2, "com.google.android.apps.maps"

    const v3, 0x7f08020d

    const/4 v4, 0x4

    invoke-static {p0, v2, v1, v3, v4}, Lcom/android/email/activity/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 114
    return-object v1
.end method


# virtual methods
.method public buttonToCommand(I)I
    .registers 4
    .parameter "whichButton"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AddTextSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AddTextSelectorAdapter$AddTextListItem;

    .line 66
    .local v0, item:Lcom/android/email/activity/AddTextSelectorAdapter$AddTextListItem;
    invoke-virtual {v0}, Lcom/android/email/activity/AddTextSelectorAdapter$AddTextListItem;->getCommand()I

    move-result v1

    return v1
.end method
