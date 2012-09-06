.class Lcom/google/android/finsky/library/Libraries$5;
.super Ljava/lang/Object;
.source "Libraries.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/Libraries;->notifyLibraryChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/Libraries;

.field final synthetic val$library:Lcom/google/android/finsky/library/AccountLibrary;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/library/AccountLibrary;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/android/finsky/library/Libraries$5;->this$0:Lcom/google/android/finsky/library/Libraries;

    iput-object p2, p0, Lcom/google/android/finsky/library/Libraries$5;->val$library:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 241
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries$5;->this$0:Lcom/google/android/finsky/library/Libraries;

    #getter for: Lcom/google/android/finsky/library/Libraries;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/library/Libraries;->access$600(Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 242
    :try_start_7
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries$5;->this$0:Lcom/google/android/finsky/library/Libraries;

    #getter for: Lcom/google/android/finsky/library/Libraries;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/library/Libraries;->access$600(Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/Libraries$Listener;

    .line 243
    .local v1, listener:Lcom/google/android/finsky/library/Libraries$Listener;
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries$5;->val$library:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/library/Libraries$Listener;->onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V

    goto :goto_11

    .line 245
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/finsky/library/Libraries$Listener;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_26
    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 246
    return-void
.end method
