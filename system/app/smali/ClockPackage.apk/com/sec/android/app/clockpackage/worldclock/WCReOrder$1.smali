.class Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$1;
.super Landroid/content/BroadcastReceiver;
.source "WCReOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mAdapter:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->access$000(Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;)Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    .line 232
    :goto_8
    return-void

    .line 231
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mAdapter:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->access$000(Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;)Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->notifyDataSetChanged()V

    goto :goto_8
.end method
