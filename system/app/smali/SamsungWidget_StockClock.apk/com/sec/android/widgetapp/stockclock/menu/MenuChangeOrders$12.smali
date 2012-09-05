.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$12;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V
    .registers 2
    .parameter

    .prologue
    .line 881
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

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

    .line 884
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBMove:Z
    invoke-static {v4, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Z)Z

    .line 885
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 887
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_3c

    :cond_16
    :goto_16
    move v2, v3

    .line 906
    :goto_17
    return v2

    .line 890
    :pswitch_18
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->onItemSelect:Z
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 892
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 893
    .local v0, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 894
    .local v1, y:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->processDragMove(II)V
    invoke-static {v3, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;II)V

    goto :goto_17

    .line 901
    .end local v0           #x:I
    .end local v1           #y:I
    :pswitch_30
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->finalizeDrag()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    .line 902
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->onItemSelect:Z
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$602(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Z)Z

    goto :goto_16

    .line 887
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_30
        :pswitch_18
        :pswitch_30
    .end packed-switch
.end method
