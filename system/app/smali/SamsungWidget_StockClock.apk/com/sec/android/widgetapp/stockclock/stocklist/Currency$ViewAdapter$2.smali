.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$2;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->initStockClockView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 2370
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->switchItem()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->access$3200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;)V

    .line 2375
    return-void
.end method
