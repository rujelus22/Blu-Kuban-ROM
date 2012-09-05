.class Lcom/sec/android/app/myfiles/RenameFileBrowser$2;
.super Landroid/content/BroadcastReceiver;
.source "RenameFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/RenameFileBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/RenameFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser$2;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser$2;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/RenameFileBrowser;->currentPreudoFolder:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->access$200(Lcom/sec/android/app/myfiles/RenameFileBrowser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser$2;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->finish()V

    .line 157
    :cond_1d
    return-void
.end method
