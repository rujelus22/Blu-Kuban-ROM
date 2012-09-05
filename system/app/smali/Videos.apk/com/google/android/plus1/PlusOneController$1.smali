.class Lcom/google/android/plus1/PlusOneController$1;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/PlusOneController;->addPlusOneListener(Ljava/util/Set;Lcom/google/android/plus1/PlusOneController$ValueListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/PlusOneController;

.field final synthetic val$uris:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController;Ljava/util/Set;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$1;->this$0:Lcom/google/android/plus1/PlusOneController;

    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$1;->val$uris:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$1;->this$0:Lcom/google/android/plus1/PlusOneController;

    #getter for: Lcom/google/android/plus1/PlusOneController;->mWorker:Lcom/google/android/plus1/PlusOneController$Worker;
    invoke-static {v0}, Lcom/google/android/plus1/PlusOneController;->access$100(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneController$Worker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$1;->val$uris:Ljava/util/Set;

    const/4 v2, 0x0

    #calls: Lcom/google/android/plus1/PlusOneController$Worker;->refreshPlusOnes(Ljava/util/Set;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/plus1/PlusOneController$Worker;->access$200(Lcom/google/android/plus1/PlusOneController$Worker;Ljava/util/Set;Z)V

    .line 140
    return-void
.end method
