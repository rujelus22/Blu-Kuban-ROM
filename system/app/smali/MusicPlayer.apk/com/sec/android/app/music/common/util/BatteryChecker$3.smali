.class Lcom/sec/android/app/music/common/util/BatteryChecker$3;
.super Ljava/lang/Object;
.source "BatteryChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/util/BatteryChecker;->showLowBatteryMsg(Landroid/content/Context;)V
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
    .line 212
    iput-object p1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker$3;->this$0:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker$3;->this$0:Lcom/sec/android/app/music/common/util/BatteryChecker;

    #getter for: Lcom/sec/android/app/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->access$000(Lcom/sec/android/app/music/common/util/BatteryChecker;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker$3;->this$0:Lcom/sec/android/app/music/common/util/BatteryChecker;

    #getter for: Lcom/sec/android/app/music/common/util/BatteryChecker;->mContext:Lcom/sec/android/app/music/common/util/OnLowBatteryListener;
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->access$100(Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/OnLowBatteryListener;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    .line 218
    return-void
.end method
