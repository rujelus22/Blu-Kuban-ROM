.class Lcom/sec/android/app/servicemodeapp/LogFileList$1;
.super Landroid/os/Handler;
.source "LogFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/LogFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/LogFileList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/LogFileList;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/LogFileList$1;->this$0:Lcom/sec/android/app/servicemodeapp/LogFileList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_16

    .line 119
    :goto_5
    return-void

    .line 107
    :sswitch_6
    const-string v0, "LogFileList"

    const-string v1, "Ril dump Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 112
    :sswitch_e
    const-string v0, "LogFileList"

    const-string v1, "EVENT_TICK!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 103
    :sswitch_data_16
    .sparse-switch
        0x3e9 -> :sswitch_e
        0x3f1 -> :sswitch_6
    .end sparse-switch
.end method
