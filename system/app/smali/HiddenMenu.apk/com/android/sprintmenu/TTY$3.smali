.class Lcom/android/sprintmenu/TTY$3;
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
    .line 210
    iput-object p1, p0, Lcom/android/sprintmenu/TTY$3;->this$0:Lcom/android/sprintmenu/TTY;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 220
    :goto_5
    return-void

    .line 215
    :pswitch_6
    iget-object v1, p0, Lcom/android/sprintmenu/TTY$3;->this$0:Lcom/android/sprintmenu/TTY;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    #calls: Lcom/android/sprintmenu/TTY;->handleQueryTTYModeMessage(Landroid/os/AsyncResult;)I
    invoke-static {v1, v0}, Lcom/android/sprintmenu/TTY;->access$000(Lcom/android/sprintmenu/TTY;Landroid/os/AsyncResult;)I

    goto :goto_5

    .line 213
    :pswitch_data_10
    .packed-switch 0x2bc
        :pswitch_6
    .end packed-switch
.end method
