.class Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;
.super Ljava/lang/Thread;
.source "VoiceListOptionShareMultiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileSharedThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mShareArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


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
    .line 330
    .local p1, checkedIdArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 331
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mShareArrayList:Ljava/util/ArrayList;

    .line 332
    iput-object p2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mHandler:Landroid/os/Handler;

    .line 333
    iput-object p3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mContext:Landroid/content/Context;

    .line 334
    return-void
.end method

.method private ShareFiles()V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 349
    const-string v5, "VoiceListOptionShareMultiActivity"

    const-string v6, "SharedFiles : Start"

    invoke-static {v5, v6}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mShareArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->getSelectedFile(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, file:[Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mShareArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [J

    .line 354
    .local v3, ids:[J
    array-length v5, v3

    if-le v5, v7, :cond_3d

    .line 355
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mShareArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 357
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 358
    .local v1, i:I
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 359
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_21

    .line 362
    :cond_37
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->multipleSend(Landroid/content/Context;[J[Ljava/lang/String;)V

    .line 369
    .end local v1           #i:I
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_3c
    :goto_3c
    return-void

    .line 364
    :cond_3d
    array-length v5, v3

    if-ne v5, v7, :cond_3c

    .line 365
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mShareArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v8

    .line 366
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mContext:Landroid/content/Context;

    aget-wide v6, v3, v8

    aget-object v8, v0, v8

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->singleSend(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_3c
.end method

.method private getSelectedFile(Ljava/util/ArrayList;)[Ljava/lang/String;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v1, file_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_22

    .line 375
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getFileName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 379
    .end local v3           #title:Ljava/lang/String;
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 381
    .local v0, file:[Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 382
    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setWakeLock(Landroid/content/Context;Z)V

    .line 340
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->ShareFiles()V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mShareArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setWakeLock(Landroid/content/Context;Z)V

    .line 345
    const-string v0, "VoiceListOptionShareMultiActivity"

    const-string v1, "SharedFiles : Finish"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method
