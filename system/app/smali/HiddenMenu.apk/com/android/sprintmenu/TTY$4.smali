.class Lcom/android/sprintmenu/TTY$4;
.super Landroid/os/Handler;
.source "TTY.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/TTY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/TTY;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/TTY;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/sprintmenu/TTY$4;->this$0:Lcom/android/sprintmenu/TTY;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_18

    .line 244
    :goto_5
    return-void

    .line 235
    :sswitch_6
    iget-object v0, p0, Lcom/android/sprintmenu/TTY$4;->this$0:Lcom/android/sprintmenu/TTY;

    #calls: Lcom/android/sprintmenu/TTY;->handleQueryTtyResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/sprintmenu/TTY;->access$100(Lcom/android/sprintmenu/TTY;Landroid/os/Message;)V

    .line 236
    iget-object v0, p0, Lcom/android/sprintmenu/TTY$4;->this$0:Lcom/android/sprintmenu/TTY;

    invoke-virtual {v0}, Lcom/android/sprintmenu/TTY;->onResume()V

    goto :goto_5

    .line 239
    :sswitch_11
    iget-object v0, p0, Lcom/android/sprintmenu/TTY$4;->this$0:Lcom/android/sprintmenu/TTY;

    invoke-virtual {v0}, Lcom/android/sprintmenu/TTY;->onResume()V

    goto :goto_5

    .line 233
    nop

    :sswitch_data_18
    .sparse-switch
        0x2bc -> :sswitch_6
        0x320 -> :sswitch_11
    .end sparse-switch
.end method
