.class Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$2;
.super Landroid/content/BroadcastReceiver;
.source "ManagedFileBrowserThumb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$2;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 255
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

    .line 256
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$2;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$700(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$2;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->finish()V

    .line 259
    :cond_29
    return-void
.end method
