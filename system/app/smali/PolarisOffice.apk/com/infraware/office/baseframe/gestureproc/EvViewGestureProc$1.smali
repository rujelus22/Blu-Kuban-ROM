.class Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;
.super Ljava/lang/Object;
.source "EvViewGestureProc.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;

.field private final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;

    iput p2, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;->val$offset:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 15
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v2, 0x28

    const/4 v1, 0x6

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 32
    packed-switch p2, :pswitch_data_5c

    .line 47
    :cond_22
    :goto_22
    return v3

    .line 34
    :pswitch_23
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;->val$offset:I

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    move v3, v10

    .line 35
    goto :goto_22

    .line 37
    :pswitch_2f
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;->val$offset:I

    neg-int v4, v4

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    move v3, v10

    .line 38
    goto :goto_22

    .line 40
    :pswitch_3c
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;

    iget-object v4, v0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;->val$offset:I

    neg-int v7, v0

    move v5, v1

    move v6, v2

    move v8, v3

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    move v3, v10

    .line 41
    goto :goto_22

    .line 43
    :pswitch_4c
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;

    iget-object v4, v0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v7, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;->val$offset:I

    move v5, v1

    move v6, v2

    move v8, v3

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    move v3, v10

    .line 44
    goto :goto_22

    .line 32
    nop

    :pswitch_data_5c
    .packed-switch 0x13
        :pswitch_2f
        :pswitch_23
        :pswitch_3c
        :pswitch_4c
    .end packed-switch
.end method
