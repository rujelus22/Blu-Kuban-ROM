.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$3;
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
    .line 451
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$3;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://m.yahoo.com/samsungwi/finance"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 456
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$3;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->startActivity(Landroid/content/Intent;)V

    .line 457
    return-void
.end method