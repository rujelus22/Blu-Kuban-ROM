.class Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;
.super Ljava/lang/Object;
.source "AndroidVoiceModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->updateVoicemailPrimaryCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V
    .registers 2
    .parameter

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 1457
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;
    invoke-static {v10}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$200(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->mp3Filter:Ljava/io/FilenameFilter;
    invoke-static {v11}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1500(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/io/FilenameFilter;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 1459
    .local v4, files:[Ljava/io/File;
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getCallIdsForRecentVoicemails()Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1600(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1460
    .local v2, callIdsForRecentVoicemails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    .local v8, primaryCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->fileComparatorByLastModified:Ljava/util/Comparator;
    invoke-static {v10}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1700(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Comparator;

    move-result-object v10

    invoke-static {v4, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1463
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2b
    if-ge v5, v7, :cond_47

    aget-object v3, v0, v5

    .line 1465
    .local v3, file:Ljava/io/File;
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->isPrimaryCache(Ljava/io/File;)Z
    invoke-static {v10, v3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1800(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 1466
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getCallId(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1900(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 1471
    .end local v3           #file:Ljava/io/File;
    :cond_47
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1472
    .local v9, primaryCacheToBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1473
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1474
    .local v1, callId:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;
    invoke-static {v10}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$200(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Landroid/content/Context;

    move-result-object v10

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->recordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$2000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_53

    .line 1478
    .end local v1           #callId:Ljava/lang/String;
    :cond_6d
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1479
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_91

    .line 1480
    new-instance v6, Landroid/content/Intent;

    iget-object v10, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;
    invoke-static {v10}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$200(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1481
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "VOICEMAIL_IDS"

    invoke-virtual {v6, v10, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1483
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;
    invoke-static {v10}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$200(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1485
    .end local v6           #intent:Landroid/content/Intent;
    :cond_91
    return-void
.end method
