.class Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1$1;
.super Ljava/lang/Object;
.source "GyroSensorDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1$1;->this$1:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1$1;->this$1:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;

    iget-object v0, v0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    #getter for: Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mValueList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->access$500(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)Ljava/util/List;

    move-result-object v6

    new-instance v0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1$1;->this$1:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1$1;->this$1:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;

    iget-object v2, v2, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    invoke-static {v2}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->access$104(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1$1;->this$1:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;

    iget-object v3, v3, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    #getter for: Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mX:F
    invoke-static {v3}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->access$200(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1$1;->this$1:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;

    iget-object v4, v4, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    #getter for: Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mY:F
    invoke-static {v4}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->access$300(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1$1;->this$1:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;

    iget-object v5, v5, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    #getter for: Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mZ:F
    invoke-static {v5}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->access$400(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;-><init>(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;IFFF)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1$1;->this$1:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;

    iget-object v0, v0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    #getter for: Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mAdaptor:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->access$600(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;->notifyDataSetChanged()V

    .line 81
    return-void
.end method
