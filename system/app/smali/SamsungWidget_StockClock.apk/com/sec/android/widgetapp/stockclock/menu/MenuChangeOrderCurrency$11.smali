.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$11;
.super Ljava/lang/Object;
.source "MenuChangeOrderCurrency.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V
    .registers 2
    .parameter

    .prologue
    .line 864
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "view"
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 867
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBMove:Z
    invoke-static {v4, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$2602(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Z)Z

    .line 868
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDragView:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$2700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 870
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_46

    :cond_16
    :goto_16
    move v2, v3

    .line 892
    :goto_17
    return v2

    .line 873
    :pswitch_18
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->onItemSelect:Z
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 875
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 876
    .local v0, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 877
    .local v1, y:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->processDragMove(II)V
    invoke-static {v3, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$2100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;II)V

    goto :goto_17

    .line 882
    .end local v0           #x:I
    .end local v1           #y:I
    :pswitch_30
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->onItemSelect:Z
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$702(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Z)Z

    .line 883
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->finalizeDrag()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    goto :goto_16

    .line 887
    :pswitch_3b
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->onItemSelect:Z
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$702(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Z)Z

    .line 888
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->finalizeDrag()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    goto :goto_16

    .line 870
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_30
        :pswitch_18
        :pswitch_3b
    .end packed-switch
.end method
