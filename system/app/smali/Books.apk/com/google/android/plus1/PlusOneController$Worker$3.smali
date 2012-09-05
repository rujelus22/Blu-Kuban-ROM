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
.method constructor <init>(Lcom/google/android/plus1/PlusOneController$Worker;Ljava/util/Set;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$Worker$3;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$Worker$3;->val$uris:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/plus1/PlusOneController$Worker$3;->val$finalException:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 590
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController$Worker$3;->val$uris:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 591
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController$Worker$3;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iget-object v2, v2, Lcom/google/android/plus1/PlusOneController$Worker;->this$0:Lcom/google/android/plus1/PlusOneController;

    iget-object v3, p0, Lcom/google/android/plus1/PlusOneController$Worker$3;->val$finalException:Ljava/lang/Exception;

    #calls: Lcom/google/android/plus1/PlusOneController;->publishError(Landroid/net/Uri;Ljava/lang/Exception;)V
    invoke-static {v2, v1, v3}, Lcom/google/android/plus1/PlusOneController;->access$1300(Lcom/google/android/plus1/PlusOneController;Landroid/net/Uri;Ljava/lang/Exception;)V

    goto :goto_6

    .line 593
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1c
    return-void
.end method
