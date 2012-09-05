.class Lcom/sec/android/app/music/common/util/BatteryChecker$4;
.super Ljava/lang/Object;
.source "BatteryChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/util/BatteryChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/util/BatteryChecker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/util/BatteryChecker;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker$4;->this$0:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker$4;->this$0:Lcom/sec/android/app/music/common/util/BatteryChecker;

    #getter for: Lcom/sec/android/app/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->access$200(Lcom/sec/android/app/music/common/util/BatteryChecker;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mLowBattery:run() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker$4;->this$0:Lcom/sec/android/app/music/common/util/BatteryChecker;

    iget-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker$4;->this$0:Lcom/sec/android/app/music/common/util/BatteryChecker;

    #getter for: Lcom/sec/android/app/music/common/util/BatteryChecker;->mContext:Lcom/sec/android/app/music/common/util/OnLowBatteryListener;
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->access$100(Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/OnLowBatteryListener;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->showLowBatteryMsg(Landroid/content/Context;)V

    .line 235
    return-void
.end method
