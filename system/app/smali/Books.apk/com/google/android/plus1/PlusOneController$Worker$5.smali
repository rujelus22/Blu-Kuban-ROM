.class Lcom/google/android/plus1/PlusOneController$Worker$5;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/PlusOneController$Worker;->sync(Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/plus1/PlusOneController$Worker;

.field final synthetic val$completionCallback:Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;

.field final synthetic val$finalException:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$Worker$5;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$Worker$5;->val$completionCallback:Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;

    iput-object p3, p0, Lcom/google/android/plus1/PlusOneController$Worker$5;->val$finalException:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$Worker$5;->val$completionCallback:Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Worker$5;->val$finalException:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;->onSyncFinished(Ljava/lang/Exception;)V

    .line 650
    return-void
.end method
