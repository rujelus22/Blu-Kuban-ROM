.class Lcom/android/sprintmenu/RTN_Reset$1;
.super Landroid/content/BroadcastReceiver;
.source "RTN_Reset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/RTN_Reset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/RTN_Reset;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/RTN_Reset;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/sprintmenu/RTN_Reset$1;->this$0:Lcom/android/sprintmenu/RTN_Reset;

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

    .line 119
    const-string v1, "ODB_RETURNVAL"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 120
    const-string v1, "ODB_RETURNVAL"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/sprintmenu/RTN_Reset$1;->this$0:Lcom/android/sprintmenu/RTN_Reset;

    #getter for: Lcom/android/sprintmenu/RTN_Reset;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sprintmenu/RTN_Reset;->access$000(Lcom/android/sprintmenu/RTN_Reset;)Landroid/os/Handler;

    move-result-object v2

    if-ne v0, v3, :cond_1d

    const/16 v1, 0x12

    :goto_19
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    .end local v0           #ret:I
    :cond_1c
    return-void

    .line 121
    .restart local v0       #ret:I
    :cond_1d
    const/16 v1, 0x11

    goto :goto_19
.end method
