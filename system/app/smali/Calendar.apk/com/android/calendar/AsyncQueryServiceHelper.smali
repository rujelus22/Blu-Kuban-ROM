.class public Lcom/android/calendar/AsyncQueryServiceHelper;
.super Landroid/app/IntentService;
.source "AsyncQueryServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    }
.end annotation


# static fields
.field private static final sWorkQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/android/calendar/AsyncQueryService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    sput-object v0, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 239
    const-string v0, "AsyncQueryServiceHelper"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 49
    const-class v0, Lcom/android/calendar/AsyncQueryService;

    iput-object v0, p0, Lcom/android/calendar/AsyncQueryServiceHelper;->mService:Ljava/lang/Class;

    .line 240
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 49
    const-class v0, Lcom/android/calendar/AsyncQueryService;

    iput-object v0, p0, Lcom/android/calendar/AsyncQueryServiceHelper;->mService:Ljava/lang/Class;

    .line 236
    return-void
.end method

.method public static cancelOperation(I)I
    .registers 5
    .parameter "token"

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, canceled:I
    sget-object v3, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v3

    .line 219
    :try_start_4
    sget-object v2, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 220
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    iget v2, v2, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    if-ne v2, p0, :cond_a

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 226
    :cond_20
    monitor-exit v3

    .line 231
    return v0

    .line 226
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;>;"
    :catchall_22
    move-exception v2

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public static queueOperation(Landroid/content/Context;Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->calculateScheduledTime()V

    .line 163
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v1

    .line 164
    :try_start_6
    sget-object v0, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 166
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_1c

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/AsyncQueryServiceHelper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 169
    return-void

    .line 166
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .prologue
    .line 361
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 362
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 370
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 17
    .parameter "intent"

    .prologue
    .line 249
    sget-object v2, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v2

    .line 255
    :cond_3
    :try_start_3
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 256
    monitor-exit v2

    .line 346
    :cond_c
    :goto_c
    return-void

    .line 257
    :cond_d
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_33

    .line 258
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 259
    .local v9, first:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    #getter for: Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J
    invoke-static {v9}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_59

    move-result-wide v13

    sub-long v11, v3, v13

    .line 260
    .local v11, waitTime:J
    const-wide/16 v3, 0x0

    cmp-long v1, v11, v3

    if-lez v1, :cond_33

    .line 262
    :try_start_2e
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_59
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_33} :catch_d5

    .line 268
    .end local v9           #first:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    .end local v11           #waitTime:J
    :cond_33
    :goto_33
    :try_start_33
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 269
    .local v6, args:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    if-eqz v6, :cond_3

    .line 274
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_59

    .line 280
    iget-object v0, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 281
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_c

    .line 283
    iget v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    packed-switch v1, :pswitch_data_d8

    .line 335
    :goto_47
    iget-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    iget v2, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 336
    .local v10, reply:Landroid/os/Message;
    iput-object v6, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    iget v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    iput v1, v10, Landroid/os/Message;->arg1:I

    .line 344
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c

    .line 274
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #args:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    .end local v10           #reply:Landroid/os/Message;
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1

    .line 287
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #args:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    :pswitch_5c
    :try_start_5c
    iget-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 294
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_6f

    .line 295
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6f} :catch_72

    .line 302
    :cond_6f
    :goto_6f
    iput-object v7, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_47

    .line 297
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_72
    move-exception v8

    .line 298
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "AsyncQuery"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v7, 0x0

    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_6f

    .line 306
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/Exception;
    :pswitch_7e
    iget-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_47

    .line 310
    :pswitch_89
    iget-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    iget-object v3, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_47

    .line 315
    :pswitch_9c
    iget-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    iget-object v3, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_47

    .line 320
    :pswitch_ad
    :try_start_ad
    iget-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->authority:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cpo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b7} :catch_b8
    .catch Landroid/content/OperationApplicationException; {:try_start_ad .. :try_end_b7} :catch_c6

    goto :goto_47

    .line 321
    :catch_b8
    move-exception v8

    .line 322
    .local v8, e:Landroid/os/RemoteException;
    const-string v1, "AsyncQuery"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v1, 0x0

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_47

    .line 324
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_c6
    move-exception v8

    .line 325
    .local v8, e:Landroid/content/OperationApplicationException;
    const-string v1, "AsyncQuery"

    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x0

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto/16 :goto_47

    .line 263
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #args:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    .end local v8           #e:Landroid/content/OperationApplicationException;
    .restart local v9       #first:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    .restart local v11       #waitTime:J
    :catch_d5
    move-exception v1

    goto/16 :goto_33

    .line 283
    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_7e
        :pswitch_89
        :pswitch_9c
        :pswitch_ad
    .end packed-switch
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 353
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 354
    return-void
.end method
