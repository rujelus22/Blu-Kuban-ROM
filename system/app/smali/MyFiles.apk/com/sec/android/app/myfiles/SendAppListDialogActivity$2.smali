.class Lcom/sec/android/app/myfiles/SendAppListDialogActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SendAppListDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$2;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$2;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->finish()V

    .line 113
    :cond_11
    return-void
.end method