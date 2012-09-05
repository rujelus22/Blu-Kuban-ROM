.class Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3$1;
.super Ljava/lang/Object;
.source "GsLongRunningActionDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;

.field final synthetic val$finalError:Ljava/lang/Exception;

.field final synthetic val$finalResult:Ljava/lang/Void;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;Ljava/lang/Void;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3$1;->this$1:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3$1;->val$finalResult:Ljava/lang/Void;

    iput-object p3, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3$1;->val$finalError:Ljava/lang/Exception;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3$1;->this$1:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;->this$0:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3$1;->val$finalResult:Ljava/lang/Void;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3$1;->val$finalError:Ljava/lang/Exception;

    #calls: Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->onLongRunningActionFinished(Ljava/lang/Void;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->access$000(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;Ljava/lang/Void;Ljava/lang/Exception;)V

    .line 128
    return-void
.end method
