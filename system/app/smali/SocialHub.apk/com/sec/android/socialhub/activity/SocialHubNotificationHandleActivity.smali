.class public Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;
.super Landroid/app/Activity;
.source "SocialHubNotificationHandleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity$Notification;
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private notification_id:I

.field private reqType:I

.field private spType:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->action:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->filename:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->content:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private buildBundle()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v1, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_VIEW_MODE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    sget-object v1, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_CONTENT_TEXT:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_RESIZE_BITMAP_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "spTypeList"

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->spType:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 106
    const-string v1, "reqCode"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string v1, "reqType"

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->reqType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->reqType:I

    const/16 v2, 0x23

    if-ne v1, v2, :cond_42

    .line 111
    sget-object v1, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_REQUEST_CODE:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    sget-object v1, Lcom/sec/android/socialhub/view/PhotoUploadView;->VIDEO_FILE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_42
    return-object v0
.end method

.method private getData()V
    .registers 7

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 126
    .local v1, intent:Landroid/content/Intent;
    :try_start_4
    const-string v2, "foward_action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->action:Ljava/lang/String;

    .line 127
    const-string v2, "foward_filename"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->filename:Ljava/lang/String;

    .line 128
    const-string v2, "foward_content"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->content:Ljava/lang/String;

    .line 129
    const-string v2, "foward_sptype"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->spType:[I

    .line 130
    const-string v2, "notification_id"

    sget v3, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity$Notification;->INVALID:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->notification_id:I

    .line 131
    const-string v2, "foward_type"

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->reqType:I

    .line 132
    const-string v2, "SocialHubNotificationHandleActivity"

    const-string v3, "getData()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", noti_id - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->notification_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_60} :catch_61

    .line 138
    :goto_60
    return-void

    .line 134
    :catch_61
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 65
    const-string v2, "SocialHubNotificationHandleActivity"

    const-string v3, "onCreate()"

    const-string v4, "START."

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->getData()V

    .line 70
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->action:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 72
    const-string v2, "SocialHubNotificationHandleActivity"

    const-string v3, "onCreate()"

    const-string v4, "action is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->finish()V

    .line 76
    :cond_1f
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->action:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->buildBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 80
    const-string v2, "android.intent.action.socialhub.VIEW"

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 82
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    :cond_3c
    :try_start_3c
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_3f} :catch_4c

    .line 94
    :goto_3f
    const-string v2, "SocialHubNotificationHandleActivity"

    const-string v3, "onCreate()"

    const-string v4, "END."

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;->finish()V

    .line 97
    return-void

    .line 89
    :catch_4c
    move-exception v0

    .line 91
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3f
.end method
