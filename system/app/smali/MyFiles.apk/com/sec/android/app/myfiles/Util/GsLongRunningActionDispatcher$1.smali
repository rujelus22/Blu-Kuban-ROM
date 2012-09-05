.class Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$1;
.super Ljava/lang/Object;
.source "GsLongRunningActionDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$1;->this$0:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 87
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, finalError:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$1;->this$0:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    const/4 v2, 0x0

    #calls: Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->onLongRunningActionFinished(Ljava/lang/Void;Ljava/lang/Exception;)V
    invoke-static {v1, v2, v0}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->access$000(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;Ljava/lang/Void;Ljava/lang/Exception;)V

    .line 89
    return-void
.end method
