.class Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$7;
.super Ljava/lang/Object;
.source "AndroidVoiceModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->updateVoicemailSecondaryCache()V
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
    .line 1493
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$7;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 1496
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$7;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;
    invoke-static {v9}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 1497
    .local v1, currentTime:J
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$7;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$200(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$7;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->mp3Filter:Ljava/io/FilenameFilter;
    invoke-static {v10}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1500(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/io/FilenameFilter;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 1498
    .local v4, files:[Ljava/io/File;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    .local v8, secondaryCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$7;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->fileComparatorByLastModified:Ljava/util/Comparator;
    invoke-static {v9}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1700(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Comparator;

    move-result-object v9

    invoke-static {v4, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1500
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2f
    if-ge v6, v7, :cond_5e

    aget-object v3, v0, v6

    .line 1501
    .local v3, file:Ljava/io/File;
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$7;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->isPrimaryCache(Ljava/io/File;)Z
    invoke-static {v9, v3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1800(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_4d

    .line 1503
    const-wide v9, 0x9a7ec800L

    sub-long v9, v1, v9

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_50

    .line 1504
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1500
    :cond_4d
    :goto_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 1506
    :cond_50
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$7;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getCallId(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1900(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 1511
    .end local v3           #file:Ljava/io/File;
    :cond_5e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_82

    .line 1512
    const/4 v5, 0x4

    .local v5, i:I
    :goto_66
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_82

    .line 1513
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$7;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$200(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->recordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$2000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1512
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 1516
    .end local v5           #i:I
    :cond_82
    return-void
.end method
