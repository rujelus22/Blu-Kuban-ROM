.class public abstract Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.source "SocialHubPhotoHandleActivity.java"


# instance fields
.field protected mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    return-void
.end method

.method private initLayout()V
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->getPhotoUploadView()Lcom/sec/android/socialhub/view/PhotoUploadView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    .line 99
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {p0, p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->getPhotoDialog(Landroid/content/Context;)Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setDialog(Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    new-instance v1, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity$1;-><init>(Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setOnImageLoadCompleteListener(Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;)V

    .line 121
    return-void
.end method

.method private removeResizedFile()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_11

    .line 181
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    if-eqz v0, :cond_11

    .line 183
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 186
    :cond_11
    return-void
.end method


# virtual methods
.method public doUploadPhoto([ILjava/lang/String;)I
    .registers 17
    .parameter "spList"
    .parameter "fail_action"

    .prologue
    .line 196
    const/4 v12, -0x1

    .line 198
    .local v12, ret:I
    if-nez p1, :cond_e

    .line 200
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "doUploadPhoto()"

    const-string v2, "SP List is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 242
    .end local v12           #ret:I
    .local v13, ret:I
    :goto_d
    return v13

    .line 208
    .end local v13           #ret:I
    .restart local v12       #ret:I
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 210
    .local v9, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->getRequestManager()Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getContentText()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->uploadData(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v12

    .line 224
    if-ltz v12, :cond_43

    .line 233
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->setResult(I)V

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->finish()V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_43} :catch_45

    .end local v9           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_43
    :goto_43
    move v13, v12

    .line 242
    .end local v12           #ret:I
    .restart local v13       #ret:I
    goto :goto_d

    .line 237
    .end local v13           #ret:I
    .restart local v12       #ret:I
    :catch_45
    move-exception v11

    .line 239
    .local v11, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_43
.end method

.method public doUploadVideo([ILjava/lang/String;)I
    .registers 20
    .parameter "spType"
    .parameter "fail_action"

    .prologue
    .line 252
    const/4 v15, -0x1

    .line 254
    .local v15, ret:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getFilePath()Ljava/io/File;

    move-result-object v14

    .line 255
    .local v14, filePath:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getFileName()Ljava/lang/String;

    move-result-object v13

    .line 257
    .local v13, fileName:Ljava/lang/String;
    if-eqz v14, :cond_15

    if-nez v13, :cond_21

    .line 259
    :cond_15
    const-string v1, "SocialHubCallbackHandleActivity"

    const-string v2, "doUploadPhoto()"

    const-string v3, "filepath or filename is null!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v15

    .line 302
    .end local v15           #ret:I
    .local v16, ret:I
    :goto_20
    return v16

    .line 268
    .end local v16           #ret:I
    .restart local v15       #ret:I
    :cond_21
    const/high16 v1, 0x1000

    :try_start_23
    invoke-static {v14, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 270
    .local v10, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->getRequestManager()Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getContentText()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v1 .. v11}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->uploadData(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v15

    .line 284
    if-ltz v15, :cond_54

    .line 293
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->setResult(I)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->finish()V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_54} :catch_57

    .end local v10           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_54
    :goto_54
    move/from16 v16, v15

    .line 302
    .end local v15           #ret:I
    .restart local v16       #ret:I
    goto :goto_20

    .line 297
    .end local v16           #ret:I
    .restart local v15       #ret:I
    :catch_57
    move-exception v12

    .line 299
    .local v12, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_54
.end method

.method public getPhotoDialog(Landroid/content/Context;)Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;
    .registers 3
    .parameter "context"

    .prologue
    .line 144
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
    .line 131
    return-void
.end method

.method protected onDiscard(Z)V
    .registers 2
    .parameter "bShowToast"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->removeResizedFile()V

    .line 174
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onDiscard(Z)V

    .line 175
    return-void
.end method

.method protected onGetInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 73
    if-eqz p1, :cond_2a

    .line 75
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_1f

    .line 77
    sget-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_VIEW_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setSelectedImageState(Z)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setSavedInstanceState(Landroid/os/Bundle;)V

    .line 93
    :cond_1f
    :goto_1f
    return-void

    .line 85
    :cond_20
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "onGetInstanceState()"

    const-string v2, "photo view mode is false"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 91
    :cond_2a
    const-string v0, "SocialHubCallbackHandleActivity"

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
    .line 156
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->setEnableButtonZero(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->buttonCheck()V

    .line 158
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_c

    .line 63
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    :cond_c
    return-void
.end method

.method public onStartPhotoLoad()V
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->setEnableButtonZero(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->buttonCheck()V

    .line 167
    return-void
.end method

.method public setLayout(I)V
    .registers 2
    .parameter "layout"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->setLayout(I)V

    .line 52
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->initLayout()V

    .line 53
    return-void
.end method
