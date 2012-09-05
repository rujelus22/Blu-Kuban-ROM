.class Lcom/arcsoft/quickview/QuickViewActivity$21;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 2279
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$21;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 2284
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 2291
    :cond_6
    :goto_6
    return v1

    .line 2286
    :pswitch_7
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$21;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2287
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$21;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/arcsoft/widget/QuickView;->setAnimationStatus(Z)V

    goto :goto_6

    .line 2284
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method
