.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$1;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->onCreate(Landroid/os/Bundle;)V
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
    .line 154
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->doneRun(Landroid/view/View;)V

    .line 158
    return-void
.end method
