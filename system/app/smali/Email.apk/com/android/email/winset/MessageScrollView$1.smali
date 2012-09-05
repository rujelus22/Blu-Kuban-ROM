.class Lcom/android/email/winset/MessageScrollView$1;
.super Landroid/os/Handler;
.source "MessageScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/winset/MessageScrollView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/winset/MessageScrollView;


# direct methods
.method constructor <init>(Lcom/android/email/winset/MessageScrollView;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/email/winset/MessageScrollView$1;->this$0:Lcom/android/email/winset/MessageScrollView;

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

    .line 110
    :goto_5
    :pswitch_5
    return-void

    .line 106
    :pswitch_6
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView$1;->this$0:Lcom/android/email/winset/MessageScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    goto :goto_5

    .line 101
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
