.class Lcom/sec/android/app/clockpackage/worldclock/WCDST$1;
.super Landroid/content/BroadcastReceiver;
.source "WCDST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCDST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDST;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCDST;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDST;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDST;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->access$000(Lcom/sec/android/app/clockpackage/worldclock/WCDST;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    .line 192
    :goto_8
    return-void

    .line 190
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDST;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->access$000(Lcom/sec/android/app/clockpackage/worldclock/WCDST;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_8
.end method
