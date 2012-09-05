.class public Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;
.super Landroid/app/Activity;
.source "SocialHubPhotoChooserActivity.java"


# instance fields
.field private miSpType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;->miSpType:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 56
    const-string v0, "SocialHubPhotoChooserActivity"

    const-string v1, "onActivityResult()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    packed-switch p1, :pswitch_data_3e

    .line 83
    :goto_2a
    :pswitch_2a
    return-void

    .line 64
    :pswitch_2b
    packed-switch p2, :pswitch_data_56

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;->finish()V

    goto :goto_2a

    .line 67
    :pswitch_32
    invoke-static {p0, p1, p3}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->onHandleResult(Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_2a

    .line 77
    :pswitch_36
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;->setResult(I)V

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;->finish()V

    goto :goto_2a

    .line 58
    nop

    :pswitch_data_3e
    .packed-switch 0x4
        :pswitch_36
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    .line 64
    :pswitch_data_56
    .packed-switch -0x1
        :pswitch_32
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sp"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;->miSpType:I

    .line 29
    const-string v1, "SocialHubPhotoChooserActivity"

    const-string v2, "onCreate()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;->miSpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , Context - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;->miSpType:I

    if-ne v1, v5, :cond_3e

    .line 33
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;->finish()V

    .line 48
    :goto_3d
    return-void

    .line 37
    :cond_3e
    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;->miSpType:I

    invoke-static {p0, v1}, Lcom/sec/android/socialhub/dialog/PhotoDialogFactory;->getDialog(Landroid/content/Context;I)Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    move-result-object v0

    .line 38
    .local v0, dialog:Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;
    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->setOnDismisListener(Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogDismissListener;)V

    .line 46
    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->showDialog()V

    goto :goto_3d
.end method
