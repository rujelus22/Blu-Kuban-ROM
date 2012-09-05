.class Lcom/arcsoft/widget/QuickView$1;
.super Landroid/os/Handler;
.source "QuickView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/QuickView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/QuickView;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/QuickView;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/arcsoft/widget/QuickView$1;->this$0:Lcom/arcsoft/widget/QuickView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 165
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 166
    return-void

    .line 159
    :pswitch_9
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$1;->this$0:Lcom/arcsoft/widget/QuickView;

    const/4 v1, 0x1

    #setter for: Lcom/arcsoft/widget/QuickView;->mRespondTiltEvent:Z
    invoke-static {v0, v1}, Lcom/arcsoft/widget/QuickView;->access$002(Lcom/arcsoft/widget/QuickView;Z)Z

    goto :goto_5

    .line 156
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
