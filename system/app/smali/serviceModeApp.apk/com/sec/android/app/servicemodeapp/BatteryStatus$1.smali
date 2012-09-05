.class Lcom/sec/android/app/servicemodeapp/BatteryStatus$1;
.super Ljava/util/TimerTask;
.source "BatteryStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/servicemodeapp/BatteryStatus;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/BatteryStatus;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/BatteryStatus;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus$1;->this$0:Lcom/sec/android/app/servicemodeapp/BatteryStatus;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus$1;->this$0:Lcom/sec/android/app/servicemodeapp/BatteryStatus;

    #calls: Lcom/sec/android/app/servicemodeapp/BatteryStatus;->lcdOn_sleeptest()V
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->access$000(Lcom/sec/android/app/servicemodeapp/BatteryStatus;)V

    .line 231
    return-void
.end method
