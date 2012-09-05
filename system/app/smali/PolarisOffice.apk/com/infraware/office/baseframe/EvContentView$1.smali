.class Lcom/infraware/office/baseframe/EvContentView$1;
.super Landroid/os/Handler;
.source "EvContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvContentView;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvContentView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvContentView$1;->this$0:Lcom/infraware/office/baseframe/EvContentView;

    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 42
    :cond_5
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    return-void

    .line 38
    :pswitch_9
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView$1;->this$0:Lcom/infraware/office/baseframe/EvContentView;

    iget v0, v0, Lcom/infraware/office/baseframe/EvContentView;->mWidth:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView$1;->this$0:Lcom/infraware/office/baseframe/EvContentView;

    iget v0, v0, Lcom/infraware/office/baseframe/EvContentView;->mHeight:I

    if-eqz v0, :cond_5

    .line 39
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView$1;->this$0:Lcom/infraware/office/baseframe/EvContentView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvContentView;->changeScreenSize()V

    goto :goto_5

    .line 36
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
