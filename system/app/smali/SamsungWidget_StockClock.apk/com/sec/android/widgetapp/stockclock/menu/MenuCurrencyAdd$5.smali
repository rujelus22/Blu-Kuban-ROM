.class Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$5;
.super Ljava/lang/Object;
.source "MenuCurrencyAdd.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 173
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$5;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$5;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->search()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$500(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V

    .line 183
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 178
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 175
    return-void
.end method
