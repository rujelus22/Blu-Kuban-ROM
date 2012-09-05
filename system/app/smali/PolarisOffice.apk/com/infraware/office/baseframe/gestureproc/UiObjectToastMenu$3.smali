.class Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$3;
.super Ljava/lang/Object;
.source "UiObjectToastMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->create(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$3;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_57

    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$3;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$3;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_57

    .line 175
    :cond_3b
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$3;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 176
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$3;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 177
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$3;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 178
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$3;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 181
    :cond_57
    return v2
.end method
