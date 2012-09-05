.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$8;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->regEventUpdateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V
    .registers 2
    .parameter

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->executeRefresh()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    .line 1348
    return-void
.end method
