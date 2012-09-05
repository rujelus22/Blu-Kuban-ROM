.class Lcom/google/android/plus1/PlusOneController$6;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/PlusOneController;->sync(Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/PlusOneController;

.field final synthetic val$completionCallback:Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$6;->this$0:Lcom/google/android/plus1/PlusOneController;

    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$6;->val$completionCallback:Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$6;->this$0:Lcom/google/android/plus1/PlusOneController;

    #getter for: Lcom/google/android/plus1/PlusOneController;->mWorker:Lcom/google/android/plus1/PlusOneController$Worker;
    invoke-static {v0}, Lcom/google/android/plus1/PlusOneController;->access$100(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneController$Worker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$6;->val$completionCallback:Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;

    #calls: Lcom/google/android/plus1/PlusOneController$Worker;->sync(Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V
    invoke-static {v0, v1}, Lcom/google/android/plus1/PlusOneController$Worker;->access$500(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V

    .line 314
    return-void
.end method
