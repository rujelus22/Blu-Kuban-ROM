.class Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;
.super Ljava/lang/Object;
.source "EvSheetViewGestureProc.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;

.field private final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;

    iput p2, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;->val$offset:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v2, 0x28

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 26
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 27
    packed-switch p2, :pswitch_data_5a

    :cond_21
    move v1, v3

    .line 42
    :goto_22
    return v1

    .line 29
    :pswitch_23
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;->val$offset:I

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    goto :goto_22

    .line 32
    :pswitch_2e
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;

    iget-object v4, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;->val$offset:I

    neg-int v8, v0

    move v5, v3

    move v6, v2

    move v7, v3

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    goto :goto_22

    .line 35
    :pswitch_3d
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;

    iget-object v4, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v5, 0x2

    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;->val$offset:I

    neg-int v7, v0

    move v6, v2

    move v8, v3

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    goto :goto_22

    .line 38
    :pswitch_4c
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;

    iget-object v4, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v5, 0x3

    iget v7, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;->val$offset:I

    move v6, v2

    move v8, v3

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    goto :goto_22

    .line 27
    :pswitch_data_5a
    .packed-switch 0x13
        :pswitch_2e
        :pswitch_23
        :pswitch_3d
        :pswitch_4c
    .end packed-switch
.end method
