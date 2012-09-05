.class Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$2;
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
    .line 135
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->changeCountry()V

    .line 139
    return-void
.end method
