.class Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$10;
.super Ljava/lang/Object;
.source "MenuCurrencyAdd.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->regEventSearchButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 585
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_3c

    .line 587
    const/16 v2, 0x42

    if-ne p2, v2, :cond_3c

    .line 589
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$100(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2a

    .line 591
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setKeyboardVisible(Z)V
    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;Z)V

    .line 600
    :goto_29
    return v0

    .line 596
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3c
    move v0, v1

    .line 600
    goto :goto_29
.end method
