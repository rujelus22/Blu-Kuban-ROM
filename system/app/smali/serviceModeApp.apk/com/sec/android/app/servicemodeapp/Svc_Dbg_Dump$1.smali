.class Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$1;
.super Landroid/os/Handler;
.source "Svc_Dbg_Dump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$1;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_16

    .line 245
    :goto_5
    return-void

    .line 221
    :sswitch_6
    const-string v0, "SvcDbgDump"

    const-string v1, "Svc dump Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 231
    :sswitch_e
    const-string v0, "SvcDbgDump"

    const-string v1, "EVENT_TICK!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 213
    :sswitch_data_16
    .sparse-switch
        0x3e9 -> :sswitch_e
        0x3f1 -> :sswitch_6
    .end sparse-switch
.end method
