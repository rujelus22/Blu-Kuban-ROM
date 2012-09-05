.class Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;
.super Landroid/content/BroadcastReceiver;
.source "WCMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.android.app.clockpackage.world.WORLD_ADDCITY_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    const/4 v2, 0x1

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2Create(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$000(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Z)V

    .line 273
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$100(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 277
    :goto_1a
    return-void

    .line 276
    :cond_1b
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$100(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_1a
.end method
