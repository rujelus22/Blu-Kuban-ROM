.class public Lcom/google/android/apps/docs/docsuploader/UploadQueueService;
.super Lcom/google/android/apps/docs/GuiceService;
.source "UploadQueueService.java"


# instance fields
.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LZC;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Landroid/app/NotificationManager;
    .annotation runtime Lanr;
    .end annotation
.end field

.field final a:Landroid/os/IBinder;

.field public a:LdO;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LtT;",
            ">;"
        }
    .end annotation
.end field

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LtF;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LtN;

.field public a:LtW;

.field public a:Lta;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/docs/GuiceService;-><init>()V

    .line 47
    new-instance v0, LtN;

    invoke-direct {v0}, LtN;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtN;

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtW;

    .line 293
    new-instance v0, LtV;

    invoke-direct {v0, p0}, LtV;-><init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Landroid/os/IBinder;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 221
    const/high16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    const/high16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 223
    const/4 v0, 0x0

    const/high16 v1, 0x800

    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 225
    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LdO;

    invoke-virtual {v0, p2}, LdO;->a(Ljava/lang/String;)LdL;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, LdL;->a()Lnk;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;Ljava/lang/String;Lnk;)Landroid/content/Intent;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/google/android/apps/docs/providers/DocListProvider;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const/high16 v1, 0x5000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    return-object v0
.end method

.method public static a(Landroid/content/Context;LXy;)Landroid/content/ServiceConnection;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LXy",
            "<",
            "Lcom/google/android/apps/docs/docsuploader/UploadQueueService;",
            ">;)",
            "Landroid/content/ServiceConnection;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    new-instance v0, LtU;

    invoke-direct {v0, p1}, LtU;-><init>(LXy;)V

    .line 321
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 322
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 325
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Lck;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Llu;

    invoke-interface {v0, p1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_d

    .line 187
    iget-object v1, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LHW;

    invoke-interface {v1, v0}, LHW;->a(LkG;)V

    .line 189
    :cond_d
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtW;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtN;

    invoke-virtual {v0}, LtN;->a()Z

    move-result v0

    if-nez v0, :cond_19

    .line 193
    new-instance v0, LtW;

    invoke-direct {v0, p0}, LtW;-><init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtW;

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtW;

    invoke-virtual {v0}, LtW;->start()V

    .line 196
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtW;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    .line 192
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()LtN;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtN;

    return-object v0
.end method

.method public a()V
    .registers 18

    .prologue
    .line 249
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtN;

    invoke-virtual {v1}, LtN;->a()Z

    move-result v1

    if-nez v1, :cond_c0

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtN;

    invoke-virtual {v1}, LtN;->a()LtZ;

    move-result-object v15

    .line 252
    invoke-virtual {v15}, LtZ;->a()LtB;

    move-result-object v9

    .line 253
    invoke-virtual {v9}, LtB;->c()Ljava/lang/String;

    move-result-object v4

    .line 254
    iget-boolean v7, v15, LtZ;->a:Z

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 257
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 260
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v16

    .line 262
    invoke-virtual {v9}, LtB;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v9}, LtB;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, LtB;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, LtB;->a()Z

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 267
    new-instance v5, LtM;

    new-instance v10, LLi;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Landroid/app/NotificationManager;

    invoke-direct {v10, v2}, LLi;-><init>(Landroid/app/NotificationManager;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Llu;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LHW;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object v6, v11

    move-object/from16 v7, v16

    move-object v11, v4

    invoke-direct/range {v5 .. v14}, LtM;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;LtB;LLh;Ljava/lang/String;Llu;LHW;Landroid/content/Context;)V

    .line 271
    new-instance v1, LtY;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v5, v15}, LtY;-><init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;Lua;LtZ;)V

    .line 274
    const-string v2, "UploadQueueService"

    const-string v3, "Starting upload of %s, account=%s, convert=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v9}, LtB;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v9}, LtB;->a()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Lta;

    invoke-interface {v2, v4, v15, v1}, Lta;->a(Ljava/lang/String;LtZ;Lua;)V

    .line 279
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LtT;

    .line 282
    invoke-interface {v1}, LtT;->e()V

    goto :goto_b0

    .line 286
    :cond_c0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LtT;

    .line 287
    invoke-interface {v1}, LtT;->f()V

    goto :goto_c8

    .line 289
    :cond_d8
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "LtZ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtN;

    invoke-virtual {v0, p1}, LtN;->a(Ljava/util/Collection;)V

    .line 138
    return-void
.end method

.method public a(LtT;)V
    .registers 3
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/google/android/apps/docs/GuiceService;->onCreate()V

    .line 133
    const-string v0, "UploadQueueService"

    const-string v1, "upload queue service started"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 239
    const-string v0, "UploadQueueService"

    const-string v1, "stopped service"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-super {p0}, Lcom/google/android/apps/docs/GuiceService;->onDestroy()V

    .line 241
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/docs/GuiceService;->onStartCommand(Landroid/content/Intent;II)I

    .line 231
    const-string v0, "UploadQueueService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x1

    return v0
.end method
