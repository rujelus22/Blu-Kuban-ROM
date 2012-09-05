.class Lcom/sec/android/app/myfiles/MainActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/MainActivity;->setSdEjectReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/myfiles/MainActivity$3;->this$0:Lcom/sec/android/app/myfiles/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity$3;->this$0:Lcom/sec/android/app/myfiles/MainActivity;

    #getter for: Lcom/sec/android/app/myfiles/MainActivity;->mIsActivityaunched:Z
    invoke-static {v0}, Lcom/sec/android/app/myfiles/MainActivity;->access$100(Lcom/sec/android/app/myfiles/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity$3;->this$0:Lcom/sec/android/app/myfiles/MainActivity;

    const v1, 0x7f090049

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    :cond_16
    const-string v0, "MyFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity : BroadcastReceiver - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-boolean v0, Lcom/sec/android/app/myfiles/Utils;->mSdCardMounted:Z

    if-eqz v0, :cond_46

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/myfiles/Utils;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    :cond_46
    sget-boolean v0, Lcom/sec/android/app/myfiles/Utils;->mUsbMounted:Z

    if-eqz v0, :cond_83

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/myfiles/Utils;->mUsbStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 147
    :cond_5a
    const-string v0, "MyFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity : BroadcastReceiver - External : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity$3;->this$0:Lcom/sec/android/app/myfiles/MainActivity;

    #getter for: Lcom/sec/android/app/myfiles/MainActivity;->mMainView:Lcom/sec/android/app/myfiles/MainActivityView;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/MainActivity;->access$200(Lcom/sec/android/app/myfiles/MainActivity;)Lcom/sec/android/app/myfiles/MainActivityView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/MainActivityView;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_96

    .line 186
    :cond_83
    :goto_83
    return-void

    .line 150
    :pswitch_84
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/AllFileBrowser;->refreshActivity(Z)V

    goto :goto_83

    .line 153
    :pswitch_8a
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->refreshActivity(Z)V

    goto :goto_83

    .line 156
    :pswitch_90
    sget-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->refreshActivity(Z)V

    goto :goto_83

    .line 148
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_84
        :pswitch_8a
        :pswitch_90
    .end packed-switch
.end method
