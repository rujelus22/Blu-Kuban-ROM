.class Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)V
    .registers 2
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 627
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 628
    .local v1, r:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    #getter for: Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->access$000(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 629
    :try_start_8
    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    #getter for: Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->access$000(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_34

    move-result v2

    if-eqz v2, :cond_24

    .line 631
    :try_start_14
    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    #getter for: Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->access$000(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_34
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1d} :catch_37

    .line 639
    :goto_1d
    :try_start_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_34

    .line 640
    if-eqz v1, :cond_0

    .line 641
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 637
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    #getter for: Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->access$000(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    goto :goto_1d

    .line 639
    :catchall_34
    move-exception v2

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_34

    throw v2

    .line 632
    :catch_37
    move-exception v2

    goto :goto_1d
.end method
