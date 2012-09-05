.class Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;
.super Ljava/lang/Thread;
.source "VoiceListOptionDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileOperationThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "progressHandler"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, checkedIdArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 305
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->mDeleteArrayList:Ljava/util/ArrayList;

    .line 306
    iput-object p2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->mHandler:Landroid/os/Handler;

    .line 307
    iput-object p3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->mContext:Landroid/content/Context;

    .line 308
    return-void
.end method

.method private DeleteFiles()V
    .registers 7

    .prologue
    .line 323
    const-string v4, "VoiceListOptionDeleteActivity"

    const-string v5, "DeleteFiles : Start"

    invoke-static {v4, v5}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :try_start_7
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->mDeleteArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 327
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 328
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 339
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_19
    :goto_19
    return-void

    .line 331
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 332
    .local v1, id:J
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getCurrentPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v2, v5}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->deleteFile(Landroid/content/Context;JLjava/lang/String;)Z

    .line 333
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_33

    goto :goto_d

    .line 335
    .end local v1           #id:J
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catch_33
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    const-string v4, "VoiceListOptionDeleteActivity"

    const-string v5, "DeleteFiles : is failed. "

    invoke-static {v4, v5, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setWakeLock(Landroid/content/Context;Z)V

    .line 314
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->DeleteFiles()V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->mDeleteArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setWakeLock(Landroid/content/Context;Z)V

    .line 319
    const-string v0, "VoiceListOptionDeleteActivity"

    const-string v1, "DeleteFiles : Finish"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method
