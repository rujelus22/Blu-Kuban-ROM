.class Lcom/sec/android/app/servicemodeapp/BatteryRead$1$1;
.super Ljava/lang/Object;
.source "BatteryRead.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/servicemodeapp/BatteryRead$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/servicemodeapp/BatteryRead$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/BatteryRead$1;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead$1$1;->this$1:Lcom/sec/android/app/servicemodeapp/BatteryRead$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead$1$1;->this$1:Lcom/sec/android/app/servicemodeapp/BatteryRead$1;

    iget-object v1, v1, Lcom/sec/android/app/servicemodeapp/BatteryRead$1;->this$0:Lcom/sec/android/app/servicemodeapp/BatteryRead;

    #calls: Lcom/sec/android/app/servicemodeapp/BatteryRead;->printCurrentBatteryInfo()V
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->access$000(Lcom/sec/android/app/servicemodeapp/BatteryRead;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 58
    :goto_7
    return-void

    .line 55
    :catch_8
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
