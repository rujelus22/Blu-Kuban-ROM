.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$15;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;
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
    .line 1948
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1951
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1952
    .local v0, intentMarket:Landroid/content/Intent;
    const-string v1, "gototap"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1953
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setResult(ILandroid/content/Intent;)V

    .line 1954
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->finish()V

    .line 1955
    return-void
.end method
