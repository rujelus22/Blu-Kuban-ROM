.class Lcom/sec/android/app/myfiles/ListEmptyActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ListEmptyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ListEmptyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ListEmptyActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ListEmptyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListEmptyActivity$1;->this$0:Lcom/sec/android/app/myfiles/ListEmptyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 46
    const-string v0, "ListEmptyActivity"

    const-string v1, "onReceive - ACTION_MEDIA_MOUNTED"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->hasReadableStorage()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListEmptyActivity$1;->this$0:Lcom/sec/android/app/myfiles/ListEmptyActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListEmptyActivity;->finish()V

    .line 50
    :cond_1e
    return-void
.end method
