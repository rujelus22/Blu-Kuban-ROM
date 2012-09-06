.class public Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;
.super Ljava/util/ArrayList;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/CalendarSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CalendarOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/ContentProviderOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mCount:I

.field private mEventStart:I

.field private mResults:[Landroid/content/ContentProviderResult;

.field final synthetic this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;


# direct methods
.method protected constructor <init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1331
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    iput v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 1334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;

    .line 1335
    iput v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    return-void
.end method

.method static synthetic access$700(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)[Landroid/content/ContentProviderResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-object v0
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)Z
    .registers 3
    .parameter "op"

    .prologue
    .line 1339
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 1341
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 1331
    check-cast p1, Landroid/content/ContentProviderOperation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    return v0
.end method

.method public delete(JLjava/lang/String;)V
    .registers 8
    .parameter "id"
    .parameter "syncId"

    .prologue
    .line 1433
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1438
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "original_sync_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1442
    return-void
.end method

.method public execute()V
    .registers 7

    .prologue
    .line 1445
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1446
    :try_start_9
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->isStopped()Z
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_43

    move-result v1

    if-nez v1, :cond_38

    .line 1448
    :try_start_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    .line 1449
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Executing "

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->size()I

    move-result v4

    const-string v5, " CPO\'s"

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 1450
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "com.android.calendar"

    invoke-virtual {v1, v3, p0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_38} :catch_3a
    .catch Landroid/content/OperationApplicationException; {:try_start_13 .. :try_end_38} :catch_46

    .line 1461
    :cond_38
    :goto_38
    :try_start_38
    monitor-exit v2

    .line 1462
    return-void

    .line 1453
    :catch_3a
    move-exception v0

    .line 1455
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EasCalendarSyncAdapter"

    const-string v3, "problem inserting event during server update"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 1461
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_43
    move-exception v1

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_43

    throw v1

    .line 1456
    :catch_46
    move-exception v0

    .line 1458
    .local v0, e:Landroid/content/OperationApplicationException;
    :try_start_47
    const-string v1, "EasCalendarSyncAdapter"

    const-string v3, "problem inserting event during server update"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_43

    goto :goto_38
.end method

.method public newAttendee(Landroid/content/ContentValues;)V
    .registers 3
    .parameter "cv"

    .prologue
    .line 1357
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    .line 1358
    return-void
.end method

.method public newAttendee(Landroid/content/ContentValues;I)V
    .registers 6
    .parameter "cv"
    .parameter "eventStart"

    .prologue
    .line 1361
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1365
    return-void
.end method

.method public newDelete(JLjava/lang/String;)I
    .registers 5
    .parameter "id"
    .parameter "serverId"

    .prologue
    .line 1351
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 1352
    .local v0, offset:I
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->delete(JLjava/lang/String;)V

    .line 1353
    return v0
.end method

.method public newEvent(Landroid/content/ContentProviderOperation;)I
    .registers 3
    .parameter "op"

    .prologue
    .line 1345
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    iput v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    .line 1346
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1347
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    return v0
.end method

.method public newException(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "cv"

    .prologue
    .line 1374
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1377
    return-void
.end method

.method public newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1380
    sget-object v0, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_id"

    iget v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1386
    return-void
.end method

.method public newReminder(I)V
    .registers 3
    .parameter "mins"

    .prologue
    .line 1429
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(II)V

    .line 1430
    return-void
.end method

.method public newReminder(II)V
    .registers 6
    .parameter "mins"
    .parameter "eventStart"

    .prologue
    .line 1420
    sget-object v0, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "minutes"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1426
    return-void
.end method

.method public updatedAttendee(Landroid/content/ContentValues;J)V
    .registers 7
    .parameter "cv"
    .parameter "id"

    .prologue
    .line 1368
    const-string v0, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1369
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1371
    return-void
.end method

.method public updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15
    .parameter "name"
    .parameter "value"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 1390
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1100()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "event_id=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1393
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 1395
    .local v7, extendedPropertyId:J
    if-eqz v6, :cond_32

    .line 1397
    :try_start_24
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1398
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_5a

    move-result-wide v7

    .line 1401
    :cond_2f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1406
    :cond_32
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_5f

    .line 1407
    sget-object v0, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1417
    :goto_59
    return-void

    .line 1401
    :catchall_5a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1415
    :cond_5f
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59
.end method
