.class Lcom/android/email/activity/MessageWebView$1;
.super Landroid/os/Handler;
.source "MessageWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageWebView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageWebView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/email/activity/MessageWebView$1;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    .line 113
    :goto_5
    :pswitch_5
    return-void

    .line 96
    :pswitch_6
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$1;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->onScrollChangeWebView()V

    goto :goto_5

    .line 100
    :pswitch_c
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$1;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->onSizeChangeWebView()V

    goto :goto_5

    .line 104
    :pswitch_12
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$1;->this$0:Lcom/android/email/activity/MessageWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->onScaleChangeWebView(Z)V

    goto :goto_5

    .line 109
    :pswitch_19
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$1;->this$0:Lcom/android/email/activity/MessageWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->onScaleChangeWebView(Z)V

    goto :goto_5

    .line 94
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_5
        :pswitch_12
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_19
    .end packed-switch
.end method
