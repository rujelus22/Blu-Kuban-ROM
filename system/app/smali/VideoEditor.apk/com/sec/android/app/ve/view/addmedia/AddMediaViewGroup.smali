.class public Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;
.super Landroid/widget/FrameLayout;
.source "AddMediaViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;


# static fields
.field private static _instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    sput-object p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    .line 40
    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sput-object p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    .line 34
    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 5
    .parameter "aContext"

    .prologue
    .line 51
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030001

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    return-void
.end method

.method public launchImagePickerView()V
    .registers 3

    .prologue
    .line 120
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->makePreViewOperationInVisible(I)V

    .line 121
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 122
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeAllKeyEventsCallbacks()V

    .line 124
    :cond_11
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 125
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->launchImageThumbnails()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    .line 131
    :cond_1e
    :goto_1e
    return-void

    .line 126
    :catch_1f
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ignore error ---->"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const-string v1, "ignore error <----"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public launchMusicPickerView(I)V
    .registers 4
    .parameter "aMusicType"

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 78
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeAllKeyEventsCallbacks()V

    .line 80
    :cond_d
    if-nez p1, :cond_14

    .line 81
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->makePreViewOperationInVisible(I)V

    .line 91
    :goto_13
    return-void

    .line 83
    :cond_14
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->makePreViewOperationInVisible(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_13

    .line 84
    :catch_19
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Error Ignore -->"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const-string v1, "Error Ignore <--"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public launchVideoPickerView(I)V
    .registers 4
    .parameter "aThumbnailType"

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->makePreViewOperationInVisible(I)V

    .line 106
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 107
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeAllKeyEventsCallbacks()V

    .line 109
    :cond_10
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 110
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->launchVideoThumbnails()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 115
    :cond_1d
    :goto_1d
    return-void

    .line 111
    :catch_1e
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method public makePreViewOperationInVisible(I)V
    .registers 8
    .parameter "aType"

    .prologue
    const v5, 0x7f0b0098

    const v4, 0x7f0b0097

    const v3, 0x7f0b0093

    const v2, 0x7f0b0092

    const/16 v1, 0x8

    .line 221
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    if-nez v0, :cond_15

    .line 243
    :cond_14
    :goto_14
    return-void

    .line 224
    :cond_15
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 226
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 227
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_34
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 230
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_49
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 233
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_5e
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_69
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 241
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inflateMediaPickerView(I)V

    goto :goto_14
.end method

.method public makePreViewOperationVisible()V
    .registers 7

    .prologue
    const v5, 0x7f0b0098

    const v4, 0x7f0b0097

    const v3, 0x7f0b0093

    const v2, 0x7f0b0092

    const/4 v1, 0x0

    .line 184
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    if-nez v0, :cond_14

    .line 213
    :cond_13
    :goto_13
    return-void

    .line 187
    :cond_14
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 189
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 192
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :goto_3e
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 197
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :goto_53
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 202
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :goto_68
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 210
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updatePreviewOnDone()V

    goto :goto_13

    .line 194
    :cond_76
    const-string v0, "findViewById(R.id.VideoPreview) is null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_3e

    .line 199
    :cond_7c
    const-string v0, "findViewById(R.id.play) is null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_53

    .line 204
    :cond_82
    const-string v0, "findViewById(R.id.previewTimeParent) is null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_68

    .line 207
    :cond_88
    const-string v0, "findViewById(R.id.PreviewViewLayout) is null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_68
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public removeAddMediaSubTitle()V
    .registers 2

    .prologue
    .line 174
    const-string v0, "AddMediaViewGroup removeAddMediaSubTitle"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 175
    const v0, 0x7f0b00e2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->removeView(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method public removeMySelf(Landroid/view/View;I)V
    .registers 6
    .parameter "aView"
    .parameter "isMusicLaunch"

    .prologue
    const/4 v2, 0x1

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing View in AddMediView Group -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 144
    if-eqz p1, :cond_2d

    .line 146
    const-string v0, "This is inside removeMySelf and removing view"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 149
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->removeMediaView(Landroid/view/View;)V

    .line 153
    :cond_2d
    if-eqz p2, :cond_35

    .line 160
    if-ne p2, v2, :cond_36

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->launchMusicPickerView(I)V

    .line 170
    :cond_35
    :goto_35
    return-void

    .line 168
    :cond_36
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->launchMusicPickerView(I)V

    goto :goto_35
.end method
