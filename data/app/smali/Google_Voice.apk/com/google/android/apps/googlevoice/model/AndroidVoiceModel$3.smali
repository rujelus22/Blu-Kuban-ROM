.class Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;
.super Ljava/lang/Object;
.source "AndroidVoiceModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->saveConversationsAndLabelsToDatabaseInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

.field final synthetic val$conversationBufsById:Ljava/util/Hashtable;

.field final synthetic val$conversationIdsByLabel:Ljava/util/List;

.field final synthetic val$labelBufs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Ljava/util/Hashtable;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;->val$conversationBufsById:Ljava/util/Hashtable;

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;->val$labelBufs:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;->val$conversationIdsByLabel:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 718
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->databaseLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$000(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_7} :catch_17

    .line 719
    :try_start_7
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;->val$conversationBufsById:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;->val$labelBufs:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;->val$conversationIdsByLabel:Ljava/util/List;

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->writeToDatabase(Ljava/util/Hashtable;Ljava/util/List;Ljava/util/List;)V

    .line 720
    monitor-exit v2

    .line 725
    return-void

    .line 720
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    :try_start_16
    throw v1
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_17} :catch_17

    .line 721
    :catch_17
    move-exception v0

    .line 722
    .local v0, e:Ljava/lang/OutOfMemoryError;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->memoryUtils:Lcom/google/android/apps/googlevoice/util/MemoryUtils;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$100(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Lcom/google/android/apps/googlevoice/util/MemoryUtils;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/util/MemoryUtils;->onOutOfMemory(Ljava/lang/Throwable;)V

    .line 723
    throw v0
.end method
