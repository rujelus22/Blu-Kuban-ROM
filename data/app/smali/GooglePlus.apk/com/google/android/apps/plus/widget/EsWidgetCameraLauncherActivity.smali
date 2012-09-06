.class public Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "EsWidgetCameraLauncherActivity.java"


# instance fields
.field private mInsertCameraPhotoRequestId:Ljava/lang/Integer;

.field private mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity$1;-><init>(Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->insertCameraPhoto(Ljava/lang/String;)V

    return-void
.end method

.method private insertCameraPhoto(Ljava/lang/String;)V
    .registers 10
    .parameter "mediaLocation"

    .prologue
    const/4 v1, 0x0

    .line 119
    if-eqz p1, :cond_27

    .line 120
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 121
    .local v5, photoUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    const-wide/16 v2, 0x0

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 123
    .local v0, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-static {p0, v1, v0}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;)Landroid/content/Intent;

    move-result-object v7

    .line 125
    .local v7, postActivityIntent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    .end local v0           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v5           #photoUri:Landroid/net/Uri;
    .end local v7           #postActivityIntent:Landroid/content/Intent;
    :goto_1d
    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->dismissDialog(I)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->finish()V

    .line 133
    return-void

    .line 128
    :cond_27
    const v1, 0x7f0801b6

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1d
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 99
    packed-switch p1, :pswitch_data_26

    .line 116
    :goto_3
    return-void

    .line 101
    :pswitch_4
    const/4 v1, -0x1

    if-ne p2, v1, :cond_22

    .line 102
    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->showDialog(I)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 104
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v1, "camera-p.jpg"

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->insertCameraPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    goto :goto_3

    .line 107
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->finish()V

    goto :goto_3

    .line 99
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    if-nez p1, :cond_10

    .line 55
    const-string v1, "camera-p.jpg"

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, cameraIntent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    .end local v0           #cameraIntent:Landroid/content/Intent;
    :cond_f
    :goto_f
    return-void

    .line 58
    :cond_10
    const-string v1, "insert_camera_photo_req_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 59
    const-string v1, "insert_camera_photo_req_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    goto :goto_f
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter "dialogId"
    .parameter "args"

    .prologue
    .line 137
    const v0, 0x7f09003e

    if-ne p1, v0, :cond_a

    .line 138
    invoke-static {p0}, Lcom/google/android/apps/plus/util/ImageUtils;->createInsertCameraPhotoDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 140
    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_9
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 83
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    .line 73
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getLastCameraMediaLocation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->insertCameraPhoto(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    .line 77
    :cond_2b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 90
    const-string v0, "insert_camera_photo_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    :cond_12
    return-void
.end method
