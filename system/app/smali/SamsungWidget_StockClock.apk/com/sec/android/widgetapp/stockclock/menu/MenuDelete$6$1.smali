.class Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6$1;
.super Ljava/lang/Object;
.source "MenuDelete.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;)V
    .registers 2
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, idle_refresh:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->sendBroadcast(Landroid/content/Intent;)V

    .line 546
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 547
    return-void
.end method
