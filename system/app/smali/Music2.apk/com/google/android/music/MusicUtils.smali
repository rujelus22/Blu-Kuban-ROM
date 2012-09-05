.class public Lcom/google/android/music/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MusicUtils$LogEntry;,
        Lcom/google/android/music/MusicUtils$QueryCallback;,
        Lcom/google/android/music/MusicUtils$ServiceBinder;,
        Lcom/google/android/music/MusicUtils$ServiceToken;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static sAsyncQueryWorker:Lcom/google/android/music/Worker;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/google/android/music/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

.field private static sLogPtr:I

.field private static sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

.field private static sOrientationSwitchCount:I

.field static sPlaylistObserver:Landroid/database/ContentObserver;

.field private static sPlaylists:Lcom/google/android/music/AsyncCursor;

.field private static sProcessName:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProcessNameRetrieved:Z

.field public static sService:Lcom/google/android/music/IMusicPlaybackService;

.field private static sTime:Landroid/text/format/Time;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 86
    const-string v0, "MusicUtils"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/MusicUtils;->LOGV:Z

    .line 187
    sput-object v4, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 576
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    sput-object v0, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 695
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/google/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 696
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/android/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 931
    const/16 v0, 0xc8

    new-array v0, v0, [Lcom/google/android/music/MusicUtils$LogEntry;

    sput-object v0, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    .line 932
    sput v3, Lcom/google/android/music/MusicUtils;->sLogPtr:I

    .line 933
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sTime:Landroid/text/format/Time;

    .line 1034
    sput v3, Lcom/google/android/music/MusicUtils;->sOrientationSwitchCount:I

    .line 1118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sProcessName:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1119
    sput-boolean v3, Lcom/google/android/music/MusicUtils;->sProcessNameRetrieved:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/music/AsyncCursor;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    return-object v0
.end method

.method static synthetic access$100()Landroid/text/format/Time;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/music/MusicUtils;->sTime:Landroid/text/format/Time;

    return-object v0
.end method

.method public static assertUiThread()V
    .registers 2

    .prologue
    .line 1062
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1063
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not in UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :cond_16
    return-void
.end method

.method public static bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 205
    move-object v1, v0

    .line 207
    :goto_2
    if-eqz p0, :cond_c

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_2

    .line 211
    :cond_c
    new-instance v2, Landroid/content/ContextWrapper;

    invoke-direct {v2, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 212
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 213
    new-instance v1, Lcom/google/android/music/MusicUtils$ServiceBinder;

    invoke-direct {v1, p1}, Lcom/google/android/music/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 214
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 215
    sget-object v0, Lcom/google/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v0, Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-direct {v0, v2}, Lcom/google/android/music/MusicUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 219
    :goto_3c
    return-object v0

    .line 218
    :cond_3d
    const-string v1, "Music"

    const-string v2, "Failed to bind to service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 223
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-direct {v1, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 225
    new-instance v0, Lcom/google/android/music/MusicUtils$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/google/android/music/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 226
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 227
    sget-object v2, Lcom/google/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v0, Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 231
    :goto_30
    return-object v0

    .line 230
    :cond_31
    const-string v0, "Music"

    const-string v1, "Failed to bind to service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public static bundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8
    .parameter "extras1"
    .parameter "extras2"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 876
    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 889
    :cond_6
    :goto_6
    return v2

    .line 878
    :cond_7
    if-eqz p0, :cond_b

    if-nez p1, :cond_d

    :cond_b
    move v2, v3

    .line 879
    goto :goto_6

    .line 880
    :cond_d
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    if-eq v4, v5, :cond_19

    move v2, v3

    .line 881
    goto :goto_6

    .line 884
    :cond_19
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 885
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/music/MusicUtils;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    move v2, v3

    .line 886
    goto :goto_6
.end method

.method public static cancelAsync(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 624
    sget-object v0, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    invoke-virtual {v0, p0}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 625
    return-void
.end method

.method public static checkMainThread(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "message"

    .prologue
    .line 656
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 657
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_29

    .line 662
    const-string v1, "MusicUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(NOT A CRASHING EXCEPTION, strictly logging): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    :cond_29
    return-void
.end method

.method public static closePlaylistCursor()V
    .registers 1

    .prologue
    .line 540
    sget-object v0, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    if-eqz v0, :cond_9

    .line 541
    sget-object v0, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncCursor;->close()V

    .line 543
    :cond_9
    return-void
.end method

.method public static copyPlaylistCursor(Landroid/database/MatrixCursor;J)V
    .registers 10
    .parameter "cursor"
    .parameter "exludeId"

    .prologue
    .line 546
    sget-object v4, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    monitor-enter v4

    .line 547
    :try_start_3
    sget-object v3, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/google/android/music/AsyncCursor;->moveToPosition(I)Z

    .line 548
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    .line 549
    .local v2, row:[Ljava/lang/Object;
    :cond_c
    :goto_c
    sget-object v3, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncCursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 550
    sget-object v3, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/music/AsyncCursor;->getLong(I)J

    move-result-wide v0

    .line 551
    .local v0, id:J
    cmp-long v3, v0, p1

    if-eqz v3, :cond_c

    .line 552
    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    .line 553
    const/4 v3, 0x1

    sget-object v5, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/music/AsyncCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 554
    invoke-virtual {p0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_c

    .line 557
    .end local v0           #id:J
    .end local v2           #row:[Ljava/lang/Object;
    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v3

    .restart local v2       #row:[Ljava/lang/Object;
    :cond_37
    :try_start_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    .line 558
    return-void
.end method

.method static declared-synchronized debugDump(Ljava/io/PrintWriter;)V
    .registers 6
    .parameter "out"

    .prologue
    .line 953
    const-class v4, Lcom/google/android/music/MusicUtils;

    monitor-enter v4

    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    :try_start_4
    sget-object v3, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    array-length v3, v3

    if-ge v1, v3, :cond_22

    .line 954
    sget v3, Lcom/google/android/music/MusicUtils;->sLogPtr:I

    add-int v2, v3, v1

    .line 955
    .local v2, idx:I
    sget-object v3, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    array-length v3, v3

    if-lt v2, v3, :cond_16

    .line 956
    sget-object v3, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    array-length v3, v3

    sub-int/2addr v2, v3

    .line 958
    :cond_16
    sget-object v3, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    aget-object v0, v3, v2

    .line 959
    .local v0, entry:Lcom/google/android/music/MusicUtils$LogEntry;
    if-eqz v0, :cond_1f

    .line 960
    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicUtils$LogEntry;->dump(Ljava/io/PrintWriter;)V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_24

    .line 953
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 963
    .end local v0           #entry:Lcom/google/android/music/MusicUtils$LogEntry;
    .end local v2           #idx:I
    :cond_22
    monitor-exit v4

    return-void

    .line 953
    :catchall_24
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static declared-synchronized debugLog(Ljava/lang/Object;)V
    .registers 10
    .parameter "o"

    .prologue
    .line 937
    const-class v2, Lcom/google/android/music/MusicUtils;

    monitor-enter v2

    :try_start_3
    new-instance v0, Lcom/google/android/music/MusicUtils$LogEntry;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicUtils$LogEntry;-><init>(Ljava/lang/Object;)V

    .line 938
    .local v0, newEntry:Lcom/google/android/music/MusicUtils$LogEntry;
    sget-object v1, Lcom/google/android/music/MusicUtils;->sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

    if-eqz v1, :cond_36

    sget-object v1, Lcom/google/android/music/MusicUtils;->sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

    iget-object v1, v1, Lcom/google/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-wide v3, v0, Lcom/google/android/music/MusicUtils$LogEntry;->time:J

    sget-object v1, Lcom/google/android/music/MusicUtils;->sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

    iget-wide v5, v1, Lcom/google/android/music/MusicUtils$LogEntry;->time:J

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_36

    .line 940
    sget-object v1, Lcom/google/android/music/MusicUtils;->sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

    iget-wide v3, v1, Lcom/google/android/music/MusicUtils$LogEntry;->count:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/google/android/music/MusicUtils$LogEntry;->count:J

    .line 941
    sget-object v1, Lcom/google/android/music/MusicUtils;->sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

    iget-wide v3, v0, Lcom/google/android/music/MusicUtils$LogEntry;->time:J

    iput-wide v3, v1, Lcom/google/android/music/MusicUtils$LogEntry;->time:J
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_4f

    .line 950
    :cond_34
    :goto_34
    monitor-exit v2

    return-void

    .line 944
    :cond_36
    :try_start_36
    sget-object v1, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    sget v3, Lcom/google/android/music/MusicUtils;->sLogPtr:I

    aput-object v0, v1, v3

    .line 945
    sput-object v0, Lcom/google/android/music/MusicUtils;->sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

    .line 946
    sget v1, Lcom/google/android/music/MusicUtils;->sLogPtr:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/music/MusicUtils;->sLogPtr:I

    .line 947
    sget v1, Lcom/google/android/music/MusicUtils;->sLogPtr:I

    sget-object v3, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    array-length v3, v3

    if-lt v1, v3, :cond_34

    .line 948
    const/4 v1, 0x0

    sput v1, Lcom/google/android/music/MusicUtils;->sLogPtr:I
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_4f

    goto :goto_34

    .line 937
    .end local v0           #newEntry:Lcom/google/android/music/MusicUtils$LogEntry;
    :catchall_4f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getCurrentAlbumId()J
    .registers 3

    .prologue
    .line 345
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_15

    .line 347
    :try_start_4
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 352
    .local v0, e:Landroid/os/RemoteException;
    :goto_a
    return-wide v1

    .line 348
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_b
    move-exception v0

    .line 349
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    :cond_15
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public static getCurrentArtistId()J
    .registers 3

    .prologue
    .line 356
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_15

    .line 358
    :try_start_4
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getArtistId()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 363
    .local v0, e:Landroid/os/RemoteException;
    :goto_a
    return-wide v1

    .line 359
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_b
    move-exception v0

    .line 360
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    :cond_15
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public static getMediaListIntent(Landroid/content/Context;Lcom/google/android/music/medialist/MediaList;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 795
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 796
    const-string v1, "medialist"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 798
    return-object v0
.end method

.method public static getNowPlayingListIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 778
    sget-object v3, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v3, :cond_d

    .line 779
    const-string v3, "MusicUtils"

    const-string v4, "service not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_c
    :goto_c
    return-object v2

    .line 783
    :cond_d
    :try_start_d
    sget-object v3, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v3}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    .line 784
    .local v1, mediaList:Lcom/google/android/music/medialist/MediaList;
    if-eqz v1, :cond_c

    .line 787
    invoke-static {p0, v1}, Lcom/google/android/music/MusicUtils;->getMediaListIntent(Landroid/content/Context;Lcom/google/android/music/medialist/MediaList;)Landroid/content/Intent;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_1a

    move-result-object v2

    goto :goto_c

    .line 788
    .end local v1           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :catch_1a
    move-exception v0

    .line 789
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MusicUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public static getPlaylistCount()I
    .registers 2

    .prologue
    .line 511
    sget-object v1, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    monitor-enter v1

    .line 512
    :try_start_3
    sget-object v0, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncCursor;->getCount()I

    move-result v0

    monitor-exit v1

    return v0

    .line 513
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1122
    sget-object v3, Lcom/google/android/music/MusicUtils;->sProcessName:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 1123
    :try_start_4
    sget-boolean v0, Lcom/google/android/music/MusicUtils;->sProcessNameRetrieved:Z

    if-eqz v0, :cond_12

    .line 1124
    sget-object v0, Lcom/google/android/music/MusicUtils;->sProcessName:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v3

    .line 1146
    :goto_11
    return-object v0

    .line 1126
    :cond_12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/music/MusicUtils;->sProcessNameRetrieved:Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_35

    .line 1131
    :try_start_15
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v4, "/proc/self/cmdline"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_61
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_21} :catch_43

    .line 1132
    :try_start_21
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1133
    sget-object v4, Lcom/google/android/music/MusicUtils;->sProcessName:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_74
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2e} :catch_76

    .line 1139
    if-eqz v2, :cond_33

    .line 1140
    :try_start_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_38

    .line 1144
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v3

    goto :goto_11

    .line 1147
    :catchall_35
    move-exception v0

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v0

    .line 1142
    :catch_38
    move-exception v1

    .line 1143
    :try_start_39
    const-string v2, "MusicUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_35

    goto :goto_33

    .line 1135
    :catch_43
    move-exception v0

    move-object v2, v1

    .line 1136
    :goto_45
    :try_start_45
    const-string v4, "MusicUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_74

    .line 1139
    if-eqz v2, :cond_53

    .line 1140
    :try_start_50
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_56

    .line 1146
    :cond_53
    :goto_53
    :try_start_53
    monitor-exit v3

    move-object v0, v1

    goto :goto_11

    .line 1142
    :catch_56
    move-exception v0

    .line 1143
    const-string v2, "MusicUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_35

    goto :goto_53

    .line 1138
    :catchall_61
    move-exception v0

    move-object v2, v1

    .line 1139
    :goto_63
    if-eqz v2, :cond_68

    .line 1140
    :try_start_65
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    .line 1144
    :cond_68
    :goto_68
    :try_start_68
    throw v0

    .line 1142
    :catch_69
    move-exception v1

    .line 1143
    const-string v2, "MusicUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_68 .. :try_end_73} :catchall_35

    goto :goto_68

    .line 1138
    :catchall_74
    move-exception v0

    goto :goto_63

    .line 1135
    :catch_76
    move-exception v0

    goto :goto_45
.end method

.method public static getRefreshDelay(Landroid/view/View;)J
    .registers 8
    .parameter "view"

    .prologue
    .line 1084
    if-nez p0, :cond_8

    .line 1085
    const-wide v3, 0x7fffffffffffffffL

    .line 1101
    :goto_7
    return-wide v3

    .line 1087
    :cond_8
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1088
    .local v2, dims:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1089
    const-wide/32 v3, 0x249f0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    div-long v0, v3, v5

    .line 1090
    .local v0, delay:J
    const-wide/16 v3, 0x7d

    cmp-long v3, v0, v3

    if-gez v3, :cond_24

    .line 1091
    const-wide/16 v3, 0x64

    goto :goto_7

    .line 1092
    :cond_24
    const-wide/16 v3, 0xc8

    cmp-long v3, v0, v3

    if-gez v3, :cond_2d

    .line 1093
    const-wide/16 v3, 0x7d

    goto :goto_7

    .line 1094
    :cond_2d
    const-wide/16 v3, 0xfa

    cmp-long v3, v0, v3

    if-gez v3, :cond_36

    .line 1095
    const-wide/16 v3, 0xc8

    goto :goto_7

    .line 1096
    :cond_36
    const-wide/16 v3, 0x1f4

    cmp-long v3, v0, v3

    if-gez v3, :cond_3f

    .line 1097
    const-wide/16 v3, 0xfa

    goto :goto_7

    .line 1098
    :cond_3f
    const-wide/16 v3, 0x3e8

    cmp-long v3, v0, v3

    if-gez v3, :cond_48

    .line 1099
    const-wide/16 v3, 0x1f4

    goto :goto_7

    .line 1101
    :cond_48
    const-wide/16 v3, 0x3e8

    goto :goto_7
.end method

.method public static hasCount(Landroid/database/Cursor;)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 1151
    if-nez p0, :cond_4

    .line 1152
    const/4 v0, 0x0

    .line 1160
    .end local p0
    :goto_3
    return v0

    .line 1154
    .restart local p0
    :cond_4
    instance-of v0, p0, Lcom/google/android/music/AsyncCursor;

    if-eqz v0, :cond_f

    .line 1155
    check-cast p0, Lcom/google/android/music/AsyncCursor;

    .end local p0
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->hasCount()Z

    move-result v0

    goto :goto_3

    .line 1157
    .restart local p0
    :cond_f
    instance-of v0, p0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_1a

    .line 1158
    check-cast p0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .end local p0
    invoke-virtual {p0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->hasCount()Z

    move-result v0

    goto :goto_3

    .line 1160
    .restart local p0
    :cond_1a
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static isPlaying()Z
    .registers 3

    .prologue
    .line 324
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_15

    .line 326
    :try_start_4
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 331
    .local v0, e:Landroid/os/RemoteException;
    :goto_a
    return v1

    .line 327
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_b
    move-exception v0

    .line 328
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static isRingtoneEnabled(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1112
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "music_enable_ringtone_editor"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 1115
    if-eqz v1, :cond_18

    invoke-virtual {p1}, Lcom/google/android/music/jumper/MusicPreferences;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public static isStreaming()Z
    .registers 3

    .prologue
    .line 334
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_15

    .line 336
    :try_start_4
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isStreaming()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 341
    .local v0, e:Landroid/os/RemoteException;
    :goto_a
    return v1

    .line 337
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_b
    move-exception v0

    .line 338
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static isUnknown(Ljava/lang/String;)Z
    .registers 2
    .parameter "name"

    .prologue
    .line 184
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "<unknown>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static makeSongAndAlbumCountLabel(Landroid/content/Context;ZII)Ljava/lang/String;
    .registers 15
    .parameter "context"
    .parameter "forAccessibility"
    .parameter "numSongs"
    .parameter "numAlbums"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 172
    .local v4, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_20

    const v3, 0x7f0c0001

    .line 173
    .local v3, nSongsResId:I
    :goto_c
    if-eqz p1, :cond_23

    const v2, 0x7f0c0003

    .line 174
    .local v2, nAlbumsResId:I
    :goto_11
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v3, p2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, songCountText:Ljava/lang/String;
    if-ge p3, v10, :cond_27

    .line 180
    .end local v5           #songCountText:Ljava/lang/String;
    :goto_1f
    return-object v5

    .line 172
    .end local v2           #nAlbumsResId:I
    .end local v3           #nSongsResId:I
    :cond_20
    const/high16 v3, 0x7f0c

    goto :goto_c

    .line 173
    .restart local v3       #nSongsResId:I
    :cond_23
    const v2, 0x7f0c0002

    goto :goto_11

    .line 178
    .restart local v2       #nAlbumsResId:I
    .restart local v5       #songCountText:Ljava/lang/String;
    :cond_27
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v2, p3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, albumCountText:Ljava/lang/String;
    const/high16 v6, 0x7f0d

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v8

    aput-object v0, v7, v9

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, combined:Ljava/lang/String;
    move-object v5, v1

    .line 180
    goto :goto_1f
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v7, 0xe10

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 699
    cmp-long v2, p1, v7

    if-gez v2, :cond_4d

    const v2, 0x7f0d0009

    :goto_c
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/google/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 707
    sget-object v1, Lcom/google/android/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 708
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p1, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 709
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 710
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 711
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 712
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 714
    sget-object v2, Lcom/google/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 699
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    :cond_4d
    const v2, 0x7f0d000a

    goto :goto_c
.end method

.method public static openPlaylistCursor(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 520
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v3, v0

    .line 522
    .local v3, cols:[Ljava/lang/String;
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    .line 525
    new-instance v0, Lcom/google/android/music/MusicUtils$1;

    sget-object v1, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicUtils$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sPlaylistObserver:Landroid/database/ContentObserver;

    .line 534
    sget-object v0, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    sget-object v1, Lcom/google/android/music/MusicUtils;->sPlaylistObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 535
    return-void
.end method

.method public static playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V
    .registers 7
    .parameter "fragment"
    .parameter "list"
    .parameter "position"
    .parameter "showPlaybackActivity"

    .prologue
    .line 739
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v1, :cond_c

    .line 740
    const-string v1, "MusicUtils"

    const-string v2, "service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_b
    :goto_b
    return-void

    .line 744
    :cond_c
    :try_start_c
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1, p1, p2}, Lcom/google/android/music/IMusicPlaybackService;->openAndPlay(Lcom/google/android/music/medialist/SongList;I)V

    .line 745
    if-eqz p3, :cond_b

    .line 746
    invoke-static {p0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Lcom/google/android/music/activitymanagement/MusicFragment;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_b

    .line 748
    :catch_17
    move-exception v0

    .line 749
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public static playMediaList(Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;IZ)V
    .registers 7
    .parameter "stateController"
    .parameter "list"
    .parameter "position"
    .parameter "showPlaybackActivity"

    .prologue
    .line 755
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v1, :cond_c

    .line 756
    const-string v1, "MusicUtils"

    const-string v2, "service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_b
    :goto_b
    return-void

    .line 760
    :cond_c
    :try_start_c
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1, p1, p2}, Lcom/google/android/music/IMusicPlaybackService;->openAndPlay(Lcom/google/android/music/medialist/SongList;I)V

    .line 761
    if-eqz p3, :cond_b

    .line 762
    invoke-static {p0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_b

    .line 764
    :catch_17
    move-exception v0

    .line 765
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 672
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 673
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_9

    move-object v1, v7

    .line 683
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_8
    return-object v1

    .line 677
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_9
    const-string v1, "Query on main thread"

    invoke-static {p0, v1}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 679
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v1

    goto :goto_8

    .line 680
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_18
    move-exception v6

    .line 682
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    const-string v1, "MusicUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedOperationException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 683
    goto :goto_8
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/MusicUtils$QueryCallback;)V
    .registers 17
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "cb"

    .prologue
    .line 636
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    .line 638
    .local v7, replyHandler:Landroid/os/Handler;
    sget-object v9, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    new-instance v0, Lcom/google/android/music/MusicUtils$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/music/MusicUtils$2;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/music/MusicUtils$QueryCallback;)V

    invoke-virtual {v9, v0}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 651
    return-void
.end method

.method public static requestSync(Lcom/google/android/music/jumper/MusicPreferences;Z)V
    .registers 6
    .parameter "prefs"
    .parameter "userInitiated"

    .prologue
    const/4 v3, 0x1

    .line 861
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 862
    .local v0, account:Landroid/accounts/Account;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 863
    .local v1, extras:Landroid/os/Bundle;
    if-eqz p1, :cond_16

    .line 864
    const-string v2, "expedited"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 865
    const-string v2, "force"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 867
    :cond_16
    const-string v2, "com.google.android.music.MusicContent"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_28

    .line 868
    const-string v2, "com.google.android.music.MusicContent"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 870
    :cond_28
    return-void
.end method

.method public static runAsync(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 583
    sget-object v0, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/utils/async/TraceableRunnable;

    invoke-direct {v1, p0}, Lcom/google/android/music/utils/async/TraceableRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 584
    return-void
.end method

.method public static runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V
    .registers 4
    .parameter "runner"

    .prologue
    .line 588
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 590
    .local v0, callbackHandler:Landroid/os/Handler;
    sget-object v1, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/utils/async/CallbackRunnable;

    invoke-direct {v2, v0, p0}, Lcom/google/android/music/utils/async/CallbackRunnable;-><init>(Landroid/os/Handler;Lcom/google/android/music/utils/async/AsyncRunner;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 591
    return-void
.end method

.method public static runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;IZ)V
    .registers 7
    .parameter "runner"
    .parameter "type"
    .parameter "cancelPrevious"

    .prologue
    .line 606
    if-eqz p2, :cond_5

    .line 607
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->cancelAsync(I)V

    .line 610
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 612
    .local v0, callbackHandler:Landroid/os/Handler;
    sget-object v2, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    new-instance v3, Lcom/google/android/music/utils/async/CallbackRunnable;

    invoke-direct {v3, v0, p0}, Lcom/google/android/music/utils/async/CallbackRunnable;-><init>(Landroid/os/Handler;Lcom/google/android/music/utils/async/AsyncRunner;)V

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 614
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 615
    sget-object v2, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    invoke-virtual {v2, v1}, Lcom/google/android/music/Worker;->sendMessage(Landroid/os/Message;)Z

    .line 616
    return-void
.end method

.method public static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 897
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 898
    const/4 v0, 0x1

    .line 902
    :goto_5
    return v0

    .line 899
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    .line 900
    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 902
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static setRingtone(Landroid/content/Context;Lcom/google/android/music/store/IStoreService;JLjava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "storeService"
    .parameter "musicId"
    .parameter "title"

    .prologue
    .line 1188
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 1256
    :cond_4
    :goto_4
    return-void

    .line 1191
    :cond_5
    sget-object v6, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v0, Lcom/google/android/music/MusicUtils$4;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/MusicUtils$4;-><init>(Lcom/google/android/music/store/IStoreService;JLjava/lang/String;Landroid/content/Context;)V

    invoke-static {v6, v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_4
.end method

.method public static shopFor(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "query"

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "music_shop_url"

    invoke-static {v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, shopUrl:Ljava/lang/String;
    if-nez v2, :cond_12

    .line 725
    const-string v2, "https://market.android.com/search?q=%s&c=music&featured=MUSIC_STORE_SEARCH"

    .line 727
    :cond_12
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 728
    .local v1, shopUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 729
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.vending"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 731
    const v3, 0x8000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 732
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 733
    return-void
.end method

.method public static showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "quantity"
    .parameter "name"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 562
    if-ltz p1, :cond_22

    .line 563
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0006

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p2, v4, v6

    invoke-virtual {v2, v3, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, text:Ljava/lang/String;
    :goto_1a
    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 570
    return-void

    .line 566
    .end local v1           #text:Ljava/lang/String;
    :cond_22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, message:Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/Object;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_1a
.end method

.method public static shuffleAll(Lcom/google/android/music/medialist/SongList;)V
    .registers 4
    .parameter "songsToShuffle"

    .prologue
    .line 395
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_10

    .line 397
    :try_start_4
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/music/IMusicPlaybackService;->setShuffleMode(I)V

    .line 398
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    const/4 v2, -0x1

    invoke-interface {v1, p0, v2}, Lcom/google/android/music/IMusicPlaybackService;->openAndPlay(Lcom/google/android/music/medialist/SongList;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    .line 403
    :cond_10
    :goto_10
    return-void

    .line 399
    :catch_11
    move-exception v0

    .line 400
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public static startMediaPlayer(Lcom/google/android/music/activitymanagement/MusicFragment;)V
    .registers 2
    .parameter "musicFragment"

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 771
    return-void
.end method

.method public static startMediaPlayer(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 1
    .parameter "musicStateController"

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startNowPlayingScreen()V

    .line 775
    return-void
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    .line 1165
    .local v3, size:I
    new-array v0, v3, [I

    .line 1167
    .local v0, arr:[I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1168
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v3, :cond_1c

    .line 1169
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v1

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1171
    :cond_1c
    return-object v0
.end method

.method public static unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V
    .registers 5
    .parameter "token"

    .prologue
    .line 235
    if-nez p0, :cond_a

    .line 236
    const-string v2, "MusicUtils"

    const-string v3, "Trying to unbind with null token"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_9
    :goto_9
    return-void

    .line 239
    :cond_a
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 240
    .local v0, cw:Landroid/content/ContextWrapper;
    sget-object v2, Lcom/google/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/MusicUtils$ServiceBinder;

    .line 241
    .local v1, sb:Lcom/google/android/music/MusicUtils$ServiceBinder;
    if-nez v1, :cond_1e

    .line 242
    const-string v2, "MusicUtils"

    const-string v3, "Trying to unbind for unknown Context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 255
    :cond_1e
    invoke-virtual {v1, v0}, Lcom/google/android/music/MusicUtils$ServiceBinder;->unbindFromServiceAfterServiceConnected(Landroid/content/ContextWrapper;)V

    .line 256
    sget-object v2, Lcom/google/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 259
    const/4 v2, 0x0

    sput-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    goto :goto_9
.end method
