.class public abstract Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;
.super Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;
.source "SocialHubThreeButtonPhotoHandleActivity.java"


# instance fields
.field protected mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    return-void
.end method

.method private initLayout()V
    .registers 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->getPhotoUploadView()Lcom/sec/android/socialhub/view/PhotoUploadView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    .line 100
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {p0, p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->getPhotoDialog(Landroid/content/Context;)Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setDialog(Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    new-instance v1, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity$1;-><init>(Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setOnImageLoadCompleteListener(Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;)V

    .line 122
    return-void
.end method

.method private removeResizedFile()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_11

    .line 182
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    if-eqz v0, :cond_11

    .line 184
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 187
    :cond_11
    return-void
.end method


# virtual methods
.method public doUploadPhoto([ILjava/lang/String;)I
    .registers 17
    .parameter "spList"
    .parameter "fail_action"

    .prologue
    .line 197
    const/4 v12, -0x1

    .line 199
    .local v12, ret:I
    if-nez p1, :cond_e

    .line 201
    const-string v0, "CommonTwoButtonActivity"

    const-string v1, "doUploadPhoto()"

    const-string v2, "SP List is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 243
    .end local v12           #ret:I
    .local v13, ret:I
    :goto_d
    return v13

    .line 209
    .end local v13           #ret:I
    .restart local v12       #ret:I
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 211
    .local v9, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->getRequestManager()Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getContentText()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->uploadData(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v12

    .line 225
    if-ltz v12, :cond_43

    .line 234
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->setResult(I)V

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->finish()V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_43} :catch_45

    .end local v9           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_43
    :goto_43
    move v13, v12

    .line 243
    .end local v12           #ret:I
    .restart local v13       #ret:I
    goto :goto_d

    .line 238
    .end local v13           #ret:I
    .restart local v12       #ret:I
    :catch_45
    move-exception v11

    .line 240
    .local v11, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_43
.end method

.method public getPhotoDialog(Landroid/content/Context;)Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;
    .registers 3
    .parameter "context"

    .prologue
    .line 145
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/sec/android/socialhub/dialog/PhotoDialogFactory;->getDialog(Landroid/content/Context;I)Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPhotoUploadView()Lcom/sec/android/socialhub/view/PhotoUploadView;
.end method

.method protected onChangeViewMode(Z)V
    .registers 2
    .parameter "bImage"

    .prologue
    .line 132
    return-void
.end method

.method protected onDiscard(Z)V
    .registers 2
    .parameter "bShowToast"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->removeResizedFile()V

    .line 175
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->onDiscard(Z)V

    .line 176
    return-void
.end method

.method protected onGetInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 74
    if-eqz p1, :cond_2a

    .line 76
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_1f

    .line 78
    sget-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_VIEW_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 80
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setSelectedImageState(Z)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setSavedInstanceState(Landroid/os/Bundle;)V

    .line 94
    :cond_1f
    :goto_1f
    return-void

    .line 86
    :cond_20
    const-string v0, "CommonTwoButtonActivity"

    const-string v1, "onGetInstanceState()"

    const-string v2, "photo view mode is false"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 92
    :cond_2a
    const-string v0, "CommonTwoButtonActivity"

    const-string v1, "onGetInstanceState()"

    const-string v2, "savedInstanceState is null"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public onPhotoLoadComplete(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V
    .registers 4
    .parameter "info"
    .parameter "bSuccess"
    .parameter "errorResource"

    .prologue
    .line 157
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->setEnableButtonZero(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->buttonCheck()V

    .line 159
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_c

    .line 64
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 66
    :cond_c
    return-void
.end method

.method public onStartPhotoLoad()V
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->setEnableButtonZero(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->buttonCheck()V

    .line 168
    return-void
.end method

.method public setLayout(I)V
    .registers 2
    .parameter "layout"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->setLayout(I)V

    .line 53
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->initLayout()V

    .line 54
    return-void
.end method
