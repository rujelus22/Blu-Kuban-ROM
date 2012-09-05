.class Lcom/arcsoft/quickview/QuickViewActivity$7;
.super Landroid/os/Handler;
.source "QuickViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/QuickViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/QuickViewActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$7;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 582
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 591
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 592
    return-void

    .line 585
    :pswitch_9
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$7;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->finish()V

    goto :goto_5

    .line 582
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
