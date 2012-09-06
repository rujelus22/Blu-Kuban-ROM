.class Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;
.super Ljava/lang/Thread;
.source "AndroidVoiceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactRebuildThread"
.end annotation


# static fields
.field private static final MIN_MILLIS_BETWEEN_REBUILDS:J = 0x1388L


# instance fields
.field private rebuildAgain:Z

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V
    .registers 3
    .parameter

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->rebuildAgain:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1315
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V

    return-void
.end method


# virtual methods
.method public clearRebuildAgain()V
    .registers 2

    .prologue
    .line 1346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->rebuildAgain:Z

    .line 1347
    return-void
.end method

.method public rebuildAgain()V
    .registers 2

    .prologue
    .line 1342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->rebuildAgain:Z

    .line 1343
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 1322
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->rebuildAgain:Z

    if-eqz v1, :cond_3f

    .line 1323
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->rebuildAgain:Z

    .line 1324
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_10

    .line 1325
    const-string v1, "ContactRebuildThread: contacts changed, refreshing."

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1327
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->rebuildContactInfos()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->noteContactsRebuilt()V
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1100(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V

    .line 1329
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->rebuildAgain:Z

    if-eqz v1, :cond_0

    .line 1331
    const-wide/16 v1, 0x1388

    :try_start_23
    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_0

    .line 1332
    :catch_27
    move-exception v0

    .line 1333
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContactRebuildThread sleep() interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1338
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3f
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactRebuildThreadFinished()V
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1200(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V

    .line 1339
    return-void
.end method
