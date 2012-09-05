.class Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc$1;
.super Ljava/lang/Object;
.source "EvSheetGestureProc.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 21
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/16 v1, 0xc

    move v2, p2

    move v4, v3

    move v5, v3

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    move-result v0

    if-ne v0, v7, :cond_19

    move v3, v7

    .line 22
    :cond_19
    return v3
.end method
