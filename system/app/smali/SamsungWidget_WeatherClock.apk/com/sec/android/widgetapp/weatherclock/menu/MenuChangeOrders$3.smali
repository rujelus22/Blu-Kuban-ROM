.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$3;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->doneRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    const v1, 0x7f09001a

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 185
    return-void
.end method
