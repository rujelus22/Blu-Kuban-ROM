.class Lcom/google/android/plus1/PlusOneController$Worker$7;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/PlusOneController$Worker;->refreshOptedInFromSource(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/PlusOneStore;)Lcom/google/android/plus1/PlusOneStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/plus1/PlusOneController$Worker;

.field final synthetic val$finalException:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController$Worker;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$Worker$7;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$Worker$7;->val$finalException:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$Worker$7;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOneController$Worker;->this$0:Lcom/google/android/plus1/PlusOneController;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Worker$7;->val$finalException:Ljava/lang/Exception;

    #calls: Lcom/google/android/plus1/PlusOneController;->publishOptedInError(Ljava/lang/Exception;)V
    invoke-static {v0, v1}, Lcom/google/android/plus1/PlusOneController;->access$1600(Lcom/google/android/plus1/PlusOneController;Ljava/lang/Exception;)V

    .line 692
    return-void
.end method
