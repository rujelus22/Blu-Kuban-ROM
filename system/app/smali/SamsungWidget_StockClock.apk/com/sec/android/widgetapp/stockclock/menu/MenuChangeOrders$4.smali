.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$4;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->cancelRun()V

    .line 176
    return-void
.end method
