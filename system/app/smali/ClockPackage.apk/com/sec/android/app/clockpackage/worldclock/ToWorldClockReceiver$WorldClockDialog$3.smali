.class Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "ToWorldClockReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$3;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$3;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->this$0:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->ACTION_WORLDCLOCK_DIALOG_DISMISS:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->access$000(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 162
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$3;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->this$0:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->ACTION_WORLDCLOCK_DIALOG_DISMISS:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->access$000(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 163
    const-string v0, "ToWorldClockReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_WORLDCLOCK_DIALOG_DISMISS / dialog_state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->access$300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->access$300()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 169
    const-string v0, "ToWorldClockReceiver"

    const-string v1, "dialog_state true / dismissDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$3;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->dismissDialog()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->access$100(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)V

    .line 176
    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$3;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->access$400(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 177
    return-void

    .line 164
    :cond_68
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 165
    const-string v0, "ToWorldClockReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_SCREEN_OFF / dialog_state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->access$300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 172
    :cond_91
    const-string v0, "ToWorldClockReceiver"

    const-string v1, "dialog_state false / dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$3;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->dismiss()V

    goto :goto_5e
.end method
