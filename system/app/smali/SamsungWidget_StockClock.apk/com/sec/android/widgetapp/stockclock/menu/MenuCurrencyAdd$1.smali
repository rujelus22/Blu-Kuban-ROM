.class Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$1;
.super Ljava/lang/Object;
.source "MenuCurrencyAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->init()V
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
    .line 125
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 129
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->refreshSearchHintText()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V

    .line 130
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$100(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 131
    return-void
.end method
