.class Lcom/google/android/apps/plus/hangout/GCommApp$1;
.super Landroid/content/BroadcastReceiver;
.source "GCommApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/GCommApp;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$1;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

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

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 158
    :cond_c
    :goto_c
    return-void

    .line 153
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$1;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$1;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #calls: Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingAndDisconnect()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$300(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    .line 157
    const/16 v0, 0x36

    invoke-static {p1, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    goto :goto_c
.end method
