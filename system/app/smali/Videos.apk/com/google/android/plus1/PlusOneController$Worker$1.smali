.class Lcom/google/android/plus1/PlusOneController$Worker$1;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/PlusOneController$Worker;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/plus1/PlusOneController$Worker;

.field final synthetic val$operations:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController$Worker;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$Worker$1;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$Worker$1;->val$operations:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$Worker$1;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOneController$Worker;->this$0:Lcom/google/android/plus1/PlusOneController;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Worker$1;->val$operations:Ljava/util/List;

    #calls: Lcom/google/android/plus1/PlusOneController;->onLoadedOperations(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/google/android/plus1/PlusOneController;->access$1000(Lcom/google/android/plus1/PlusOneController;Ljava/util/List;)V

    .line 462
    return-void
.end method
