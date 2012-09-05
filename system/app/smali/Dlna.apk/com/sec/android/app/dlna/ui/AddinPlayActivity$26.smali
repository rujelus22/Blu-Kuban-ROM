.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$26;
.super Landroid/content/BroadcastReceiver;
.source "AddinPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/AddinPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$26;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1647
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : Kill!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$26;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handleStop()V

    .line 1649
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$26;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->finish()V

    .line 1650
    return-void
.end method
