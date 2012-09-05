.class Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;
.super Ljava/lang/Object;
.source "GyroSensorDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/GyroSensorDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryItem"
.end annotation


# instance fields
.field private countvalue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

.field private xvalue:Ljava/lang/String;

.field private yvalue:Ljava/lang/String;

.field private zvalue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;IFFF)V
    .registers 7
    .parameter
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->countvalue:Ljava/lang/String;

    .line 104
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->xvalue:Ljava/lang/String;

    .line 105
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->yvalue:Ljava/lang/String;

    .line 106
    invoke-static {p5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->zvalue:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->countvalue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueX()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->xvalue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueY()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->yvalue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueZ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->zvalue:Ljava/lang/String;

    return-object v0
.end method
