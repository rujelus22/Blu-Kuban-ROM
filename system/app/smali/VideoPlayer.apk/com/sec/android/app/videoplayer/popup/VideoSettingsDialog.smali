.class public Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;
.super Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
.source "VideoSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingListAdapter;,
        Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private getBrightString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getBrightnessLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getColorToneString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getColorTone()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 138
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 132
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 134
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 136
    :pswitch_21
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 130
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_21
        :pswitch_17
    .end packed-switch
.end method

.method private getOutDoorString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getOutdoorVisibility()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ListAdapter;
    .registers 5

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;>;"
    new-instance v1, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f080013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;->getBrightString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;->getColorToneString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;->getOutDoorString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingListAdapter;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method protected createOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 52
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$1;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;)V

    return-object v0
.end method

.method protected setDialogId()V
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->dialogId:I

    .line 29
    return-void
.end method

.method protected setDialogTitle(Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter "dialogBuilder"

    .prologue
    .line 48
    const v0, 0x7f080011

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 49
    return-void
.end method
