.class Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;
.super Ljava/lang/Object;
.source "UiObjectToastMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onCopy()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 503
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/16 v1, 0xd

    const v2, 0x1020021

    const/4 v6, 0x0

    move v4, v3

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 504
    return-void
.end method

.method private onCut()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 506
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/16 v1, 0xd

    const v2, 0x1020020

    const/4 v6, 0x0

    move v4, v3

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 507
    return-void
.end method

.method private onPaste()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 509
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/16 v1, 0xd

    const v2, 0x1020022

    const/4 v6, 0x0

    move v4, v3

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 510
    return-void
.end method

.method private onWikipedia()V
    .registers 3

    .prologue
    .line 513
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oCoreInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetSeparateMarkString_Editor()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, separateMarkString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 515
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->performDictionary(Landroid/app/Activity;Ljava/lang/String;)V

    .line 516
    :cond_15
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "a_oView"

    .prologue
    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 528
    :goto_7
    :pswitch_7
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 529
    return-void

    .line 522
    :pswitch_f
    invoke-direct {p0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;->onCopy()V

    goto :goto_7

    .line 523
    :pswitch_13
    invoke-direct {p0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;->onCut()V

    goto :goto_7

    .line 524
    :pswitch_17
    invoke-direct {p0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;->onPaste()V

    goto :goto_7

    .line 525
    :pswitch_1b
    invoke-direct {p0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;->onWikipedia()V

    goto :goto_7

    .line 520
    nop

    :pswitch_data_20
    .packed-switch 0x7f0c02ee
        :pswitch_17
        :pswitch_7
        :pswitch_13
        :pswitch_f
        :pswitch_1b
    .end packed-switch
.end method
