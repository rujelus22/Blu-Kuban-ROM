.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$1;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->makeTab(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2192
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$1;->val$view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 5
    .parameter "arg"

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mViewPosition:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$600(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    .line 2197
    return-void
.end method
