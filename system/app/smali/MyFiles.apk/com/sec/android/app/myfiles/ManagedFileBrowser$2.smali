.class Lcom/sec/android/app/myfiles/ManagedFileBrowser$2;
.super Landroid/content/BroadcastReceiver;
.source "ManagedFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$2;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 291
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$2;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$700(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$2;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->finish()V

    .line 295
    :cond_29
    return-void
.end method
