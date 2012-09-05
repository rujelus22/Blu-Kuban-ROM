.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$12;
.super Ljava/lang/Object;
.source "MenuChangeOrderIndices.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V
    .registers 2
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

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

    .line 885
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBMove:Z
    invoke-static {v4, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$2402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Z)Z

    .line 886
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDragView:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$2500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 888
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_3c

    :cond_16
    :goto_16
    move v2, v3

    .line 907
    :goto_17
    return v2

    .line 891
    :pswitch_18
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->onItemSelect:Z
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 893
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 894
    .local v0, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 895
    .local v1, y:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->processDragMove(II)V
    invoke-static {v3, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$1800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;II)V

    goto :goto_17

    .line 902
    .end local v0           #x:I
    .end local v1           #y:I
    :pswitch_30
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->onItemSelect:Z
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$602(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Z)Z

    .line 903
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->finalizeDrag()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    goto :goto_16

    .line 888
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_30
        :pswitch_18
        :pswitch_30
    .end packed-switch
.end method
