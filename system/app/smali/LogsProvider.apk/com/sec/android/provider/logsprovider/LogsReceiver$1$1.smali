.class Lcom/sec/android/provider/logsprovider/LogsReceiver$1$1;
.super Ljava/lang/Object;
.source "LogsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/provider/logsprovider/LogsReceiver$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/provider/logsprovider/LogsReceiver$1;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/provider/logsprovider/LogsReceiver$1;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$1;->this$0:Lcom/sec/android/provider/logsprovider/LogsReceiver$1;

    iput-object p2, p0, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$1;->val$context:Landroid/content/Context;

    #calls: Lcom/sec/android/provider/logsprovider/LogsReceiver;->updateSnsData(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/sec/android/provider/logsprovider/LogsReceiver;->access$000(Landroid/content/Context;)V

    .line 72
    return-void
.end method
