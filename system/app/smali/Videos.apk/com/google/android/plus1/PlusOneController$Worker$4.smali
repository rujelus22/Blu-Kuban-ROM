.class Lcom/google/android/plus1/PlusOneController$Worker$4;
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

.field final synthetic val$op:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$Worker$4;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$Worker$4;->val$op:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$Worker$4;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOneController$Worker;->this$0:Lcom/google/android/plus1/PlusOneController;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Worker$4;->val$op:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;

    #calls: Lcom/google/android/plus1/PlusOneController;->onRemovedOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    invoke-static {v0, v1}, Lcom/google/android/plus1/PlusOneController;->access$1300(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 552
    return-void
.end method
