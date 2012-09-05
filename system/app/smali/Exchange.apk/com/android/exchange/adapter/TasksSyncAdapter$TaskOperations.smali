.class Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;
.super Ljava/util/ArrayList;
.source "TasksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/TasksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskOperations"
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
.field private mCount:I

.field private mResults:[Landroid/content/ContentProviderResult;

.field private mTaskIndexCount:I

.field final synthetic this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;


# direct methods
.method private constructor <init>(Lcom/android/exchange/adapter/TasksSyncAdapter;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1732
    iput-object p1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1735
    iput v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mCount:I

    .line 1738
    iput v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mTaskIndexCount:I

    .line 1740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Lcom/android/exchange/adapter/TasksSyncAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1732
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;)V

    return-void
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)Z
    .registers 3
    .parameter "op"

    .prologue
    .line 1744
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1745
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mCount:I

    .line 1746
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 1732
    check-cast p1, Landroid/content/ContentProviderOperation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    return v0
.end method

.method public addReminder(J)V
    .registers 8
    .parameter "mins"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1762
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "Inside addreminder and going to insert a reminder "

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1766
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v3, :cond_48

    .line 1767
    sget-object v0, Lcom/android/emailcommon/provider/Tasks$TaskReminderAlerts;->SPLANNER_REMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "reminder_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "task_id"

    iget v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mTaskIndexCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1778
    :goto_3c
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "Have to check whether task_id is inserted or taken properly from the tasks table"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1779
    return-void

    .line 1773
    :cond_48
    sget-object v0, Lcom/android/emailcommon/provider/Tasks$TaskReminderAlerts;->REMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "reminder_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "task_id"

    iget v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mTaskIndexCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_3c
.end method

.method public delete(J)V
    .registers 6
    .parameter "id"

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 1796
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    sget-object v1, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->Q1_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1806
    :goto_28
    return-void

    .line 1800
    :cond_29
    sget-object v0, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_28
.end method

.method public execute()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1810
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1811
    :try_start_a
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->isStopped()Z
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_65

    move-result v1

    if-nez v1, :cond_49

    .line 1813
    :try_start_14
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_68

    .line 1814
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Executing "

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->size()I

    move-result v4

    const-string v5, " CPO\'s"

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 1817
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x7f07

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v6, :cond_4b

    .line 1818
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "com.android.calendar"

    invoke-virtual {v1, v3, p0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mResults:[Landroid/content/ContentProviderResult;
    :try_end_49
    .catchall {:try_start_14 .. :try_end_49} :catchall_65
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_49} :catch_5c
    .catch Landroid/content/OperationApplicationException; {:try_start_14 .. :try_end_49} :catch_78

    .line 1836
    :cond_49
    :goto_49
    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_65

    .line 1837
    return-void

    .line 1822
    :cond_4b
    :try_start_4b
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "tasks"

    invoke-virtual {v1, v3, p0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mResults:[Landroid/content/ContentProviderResult;
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_65
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_5b} :catch_5c
    .catch Landroid/content/OperationApplicationException; {:try_start_4b .. :try_end_5b} :catch_78

    goto :goto_49

    .line 1828
    :catch_5c
    move-exception v0

    .line 1830
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5d
    const-string v1, "ExchTasksSyncAdapter"

    const-string v3, "problem inserting task during server update"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 1836
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_65
    move-exception v1

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_65

    throw v1

    .line 1827
    :cond_68
    :try_start_68
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Nothing to execute. isEmpty = true"

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_65
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_77} :catch_5c
    .catch Landroid/content/OperationApplicationException; {:try_start_68 .. :try_end_77} :catch_78

    goto :goto_49

    .line 1831
    :catch_78
    move-exception v0

    .line 1833
    .local v0, e:Landroid/content/OperationApplicationException;
    :try_start_79
    const-string v1, "ExchTasksSyncAdapter"

    const-string v3, "problem inserting task during server update"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_65

    goto :goto_49
.end method

.method public newTask(Landroid/content/ContentProviderOperation;)I
    .registers 3
    .parameter "op"

    .prologue
    .line 1750
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mCount:I

    iput v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mTaskIndexCount:I

    .line 1751
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1752
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mTaskIndexCount:I

    return v0
.end method
