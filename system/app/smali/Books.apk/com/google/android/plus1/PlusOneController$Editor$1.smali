.class Lcom/google/android/plus1/PlusOneController$Editor$1;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/PlusOneController$Editor;->addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/plus1/PlusOneController$Editor;

.field final synthetic val$op:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController$Editor;Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$Editor$1;->this$1:Lcom/google/android/plus1/PlusOneController$Editor;

    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$Editor$1;->val$op:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$Editor$1;->this$1:Lcom/google/android/plus1/PlusOneController$Editor;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOneController$Editor;->this$0:Lcom/google/android/plus1/PlusOneController;

    #getter for: Lcom/google/android/plus1/PlusOneController;->mWorker:Lcom/google/android/plus1/PlusOneController$Worker;
    invoke-static {v0}, Lcom/google/android/plus1/PlusOneController;->access$100(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneController$Worker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Editor$1;->val$op:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;

    #calls: Lcom/google/android/plus1/PlusOneController$Worker;->addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    invoke-static {v0, v1}, Lcom/google/android/plus1/PlusOneController$Worker;->access$700(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 478
    return-void
.end method
