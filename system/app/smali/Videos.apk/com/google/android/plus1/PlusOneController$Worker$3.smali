.class Lcom/google/android/plus1/PlusOneController$Worker$3;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/PlusOneController$Worker;->refreshPlusOnesFromSource(Lcom/google/android/plus1/PlusOneReader;Ljava/util/Set;Lcom/google/android/plus1/PlusOneStore;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/plus1/PlusOneController$Worker;

.field final synthetic val$finalException:Ljava/lang/Exception;

.field final synthetic val$uris:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController$Worker;Ljava/lang/Exception;Ljava/util/Set;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$Worker$3;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$Worker$3;->val$finalException:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/google/android/plus1/PlusOneController$Worker$3;->val$uris:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$Worker$3;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOneController$Worker;->this$0:Lcom/google/android/plus1/PlusOneController;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Worker$3;->val$finalException:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController$Worker$3;->val$uris:Ljava/util/Set;

    #calls: Lcom/google/android/plus1/PlusOneController;->dispatchException(Ljava/lang/Exception;Ljava/util/Set;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/plus1/PlusOneController;->access$1200(Lcom/google/android/plus1/PlusOneController;Ljava/lang/Exception;Ljava/util/Set;)V

    .line 515
    return-void
.end method
