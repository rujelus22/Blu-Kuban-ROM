.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$7;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;
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
    .line 660
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 663
    const/16 v1, 0x17

    if-ne v1, p2, :cond_6

    .line 668
    :cond_5
    :goto_5
    return v0

    .line 665
    :cond_6
    const/16 v1, 0x42

    if-eq v1, p2, :cond_5

    .line 668
    const/4 v0, 0x0

    goto :goto_5
.end method
