.class public Lcom/sec/android/socialhub/activity/SocialHubDataHandleActivity;
.super Landroid/app/Activity;
.source "SocialHubDataHandleActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 61
    sparse-switch p1, :sswitch_data_3a

    .line 72
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubDataHandleActivity;->finish()V

    .line 74
    const-string v0, "SocialHubDataHandleActivity"

    const-string v1, "onActivityResult()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 64
    :sswitch_24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.im.action.remove_account"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubDataHandleActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6

    .line 68
    :sswitch_2f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.im.action.chat_closed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubDataHandleActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6

    .line 61
    :sswitch_data_3a
    .sparse-switch
        0x64 -> :sswitch_2f
        0xc8 -> :sswitch_24
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubDataHandleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 32
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.im.action.SOCIALHUB_APP_IM_UPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, im_intent:Landroid/content/Intent;
    const-string v3, "intentType"

    const-string v4, "intentType"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    const-string v3, "id_array"

    const-string v4, "id_array"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v3, "action"

    const-string v4, "action"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    const-string v3, "action"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, action:I
    packed-switch v0, :pswitch_data_46

    .line 51
    :goto_39
    :pswitch_39
    return-void

    .line 43
    :pswitch_3a
    const/16 v3, 0xc8

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/socialhub/activity/SocialHubDataHandleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_39

    .line 47
    :pswitch_40
    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/socialhub/activity/SocialHubDataHandleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_39

    .line 40
    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_40
        :pswitch_39
        :pswitch_39
        :pswitch_3a
    .end packed-switch
.end method
