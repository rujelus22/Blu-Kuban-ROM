.class public Lcom/android/email/activity/AddAttachmentSelectorAdapter;
.super Lcom/android/email/activity/IconListAdapter;
.source "AddAttachmentSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 105
    invoke-static {p1}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 107
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
    .line 188
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    invoke-static {p0, p1}, Lcom/android/email/activity/utils/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 189
    invoke-static {p0, p1}, Lcom/android/email/EmailUtility;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_15

    .line 191
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0, p4}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 192
    const/4 v1, 0x1

    .line 196
    .end local v0           #appIcon:Landroid/graphics/drawable/Drawable;
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z
    .registers 8
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "menuId"
    .parameter "icondId"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/activity/IconListAdapter$IconListItem;",
            ">;III)Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    invoke-static {p0, p1}, Lcom/android/email/activity/utils/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_19

    .line 204
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0, p5}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 205
    const/4 v1, 0x1

    .line 209
    .end local v0           #appIcon:Landroid/graphics/drawable/Drawable;
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
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
    .line 214
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 215
    .local v0, temp:Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .registers 8
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
    const v5, 0x7f080207

    const/4 v4, 0x4

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 123
    .local v6, ModelName:Ljava/lang/String;
    const-string v0, "com.sec.android.app.myfiles"

    const v1, 0x7f080200

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 126
    const-string v0, "com.sec.android.app.gallery3d"

    invoke-static {p0, v0, v2, v5, v4}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_29

    .line 128
    const-string v0, "com.cooliris.media"

    invoke-static {p0, v0, v2, v5, v4}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_29

    .line 130
    const-string v0, "com.sec.android.gallery3d"

    invoke-static {p0, v0, v2, v5, v4}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 135
    :cond_29
    const-string v0, "com.sec.android.app.camera"

    const v1, 0x7f080208

    const/4 v3, 0x5

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 138
    const-string v1, "com.sec.android.app.myfiles"

    const v3, 0x7f080209

    const v4, 0x7f02001a

    const/4 v5, 0x6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 141
    const-string v1, "com.sec.android.app.camera"

    const v3, 0x7f08020a

    const v4, 0x7f02000c

    const/4 v5, 0x7

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 145
    const-string v1, "com.sec.android.app.myfiles"

    const v3, 0x7f08020b

    const v4, 0x7f020009

    const/16 v5, 0x9

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 148
    const-string v0, "com.sec.android.app.voicerecorder"

    const v1, 0x7f08020c

    const/16 v3, 0x10

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 163
    const-string v0, "com.android.calendar"

    const v1, 0x7f0802b6

    const/4 v3, 0x2

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 167
    const-string v0, "com.android.contacts"

    const v1, 0x7f080201

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 170
    const-string v0, "com.sec.android.app.memo"

    const v1, 0x7f080203

    const/4 v3, 0x3

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 173
    const-string v0, "com.sec.android.widgetapp.diotek.smemo"

    const v1, 0x7f080205

    const/16 v3, 0x11

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 176
    const-string v0, "com.sec.android.app.snotebook"

    const v1, 0x7f080206

    const/16 v3, 0x15

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 179
    const-string v0, "com.android.task"

    const v1, 0x7f0801fe

    const/16 v3, 0x13

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 182
    return-object v2
.end method


# virtual methods
.method public buttonToCommand(I)I
    .registers 4
    .parameter "whichButton"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;

    .line 113
    .local v0, item:Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;
    invoke-virtual {v0}, Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;->getCommand()I

    move-result v1

    return v1
.end method
