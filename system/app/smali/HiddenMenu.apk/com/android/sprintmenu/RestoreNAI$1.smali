.class Lcom/android/sprintmenu/RestoreNAI$1;
.super Landroid/os/Handler;
.source "RestoreNAI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/RestoreNAI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/RestoreNAI;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/RestoreNAI;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/sprintmenu/RestoreNAI$1;->this$0:Lcom/android/sprintmenu/RestoreNAI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 212
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_32

    .line 268
    :goto_5
    return-void

    .line 248
    :pswitch_6
    const-string v2, "Restore"

    const-string v3, "Restore NAI response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 251
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1d

    .line 253
    const-string v2, "Restore"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 258
    :cond_1d
    const-string v2, "Restore"

    const-string v3, "Success Restore NAI. Reset now~!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v2, p0, Lcom/android/sprintmenu/RestoreNAI$1;->this$0:Lcom/android/sprintmenu/RestoreNAI;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/android/sprintmenu/RestoreNAI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 262
    .local v1, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->systemReboot()V

    goto :goto_5

    .line 212
    :pswitch_data_32
    .packed-switch 0x7cd
        :pswitch_6
    .end packed-switch
.end method
