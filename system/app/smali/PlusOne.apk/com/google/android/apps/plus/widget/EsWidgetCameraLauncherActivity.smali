.class public Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "EsWidgetCameraLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_36

    .line 69
    :goto_3
    return-void

    .line 43
    :pswitch_4
    const/4 v4, -0x1

    if-ne p2, v4, :cond_20

    .line 45
    :try_start_7
    const-string v4, "camera-p.jpg"

    invoke-static {p0, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->insertCameraPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, mediaLocation:Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 49
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 50
    .local v2, photoUri:Landroid/net/Uri;
    const/4 v4, 0x0

    invoke-static {p0, v4, v2}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 52
    .local v3, postActivityIntent:Landroid/content/Intent;
    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_20} :catch_24

    .line 61
    .end local v1           #mediaLocation:Ljava/lang/String;
    .end local v2           #photoUri:Landroid/net/Uri;
    .end local v3           #postActivityIntent:Landroid/content/Intent;
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->finish()V

    goto :goto_3

    .line 55
    :catch_24
    move-exception v0

    .line 56
    .local v0, ex:Ljava/io/FileNotFoundException;
    const v4, 0x7f070121

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_20

    .line 41
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const-string v1, "camera-p.jpg"

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, cameraIntent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 34
    return-void
.end method
