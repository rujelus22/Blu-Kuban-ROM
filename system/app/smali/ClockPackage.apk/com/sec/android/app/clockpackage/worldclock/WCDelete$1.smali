.class Lcom/sec/android/app/clockpackage/worldclock/WCDelete$1;
.super Landroid/content/BroadcastReceiver;
.source "WCDelete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->access$000(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    .line 124
    :goto_8
    return-void

    .line 123
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->access$000(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_8
.end method
