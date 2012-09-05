.class Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$6;
.super Ljava/lang/Object;
.source "MenuCurrencyAdd.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 190
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setKeyboardVisible(Z)V
    invoke-static {v0, p2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;Z)V

    .line 196
    return-void
.end method
