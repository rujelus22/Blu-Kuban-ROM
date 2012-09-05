.class public Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;
.super Ljava/lang/Object;
.source "ProgramMonitorState.java"


# static fields
.field public static isCpuWarning:Z

.field static sRunningCount:I

.field static sWarningCpu:Z

.field public static warningLevel:Ljava/lang/String;

.field public static warningMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 7
    sput v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->sRunningCount:I

    .line 8
    sput-boolean v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->sWarningCpu:Z

    .line 9
    sput-boolean v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->isCpuWarning:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRunningPackageCount()I
    .registers 1

    .prologue
    .line 14
    sget v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->sRunningCount:I

    return v0
.end method

.method static setCpuData(Landroid/os/Bundle;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 22
    const-string v0, "warning"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->isCpuWarning:Z

    .line 23
    const-string v0, "warning_level"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->warningLevel:Ljava/lang/String;

    .line 24
    const-string v0, "warning_msg"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->warningMsg:Ljava/lang/String;

    .line 26
    const-string v0, "ProgramMonitorState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCpuWarning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->isCpuWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " warningLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->warningLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " warningMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->warningMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method static setRunningPackageCount(I)V
    .registers 1
    .parameter "count"

    .prologue
    .line 18
    sput p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->sRunningCount:I

    .line 19
    return-void
.end method
