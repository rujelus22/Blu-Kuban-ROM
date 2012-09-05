.class Lcom/android/sprintmenu/RTN$1;
.super Landroid/os/Handler;
.source "RTN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/RTN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/RTN;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/RTN;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/sprintmenu/RTN$1;->this$0:Lcom/android/sprintmenu/RTN;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 106
    :goto_5
    return-void

    .line 103
    :pswitch_6
    const-string v0, "RTN"

    const-string v1, "GET_CFG_EXEC response incoming!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 101
    :pswitch_data_e
    .packed-switch 0x7ce
        :pswitch_6
    .end packed-switch
.end method
