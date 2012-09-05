.class Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$2;
.super Landroid/content/BroadcastReceiver;
.source "BtVisibilityFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$2;->this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$2;->this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->currentPreudoFolder:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->access$000(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$2;->this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->finish()V

    .line 139
    :cond_1d
    return-void
.end method
