.class Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$1;
.super Landroid/os/Handler;
.source "TwGLSmileMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 75
    :goto_5
    return-void

    .line 69
    :pswitch_6
    const-string v0, "TwGLSmileMenu"

    const-string v1, "Inactivity timer is expired. finish."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->reset()V

    goto :goto_5

    .line 67
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method