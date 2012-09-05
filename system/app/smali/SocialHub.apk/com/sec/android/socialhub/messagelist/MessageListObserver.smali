.class public Lcom/sec/android/socialhub/messagelist/MessageListObserver;
.super Landroid/database/ContentObserver;
.source "MessageListObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/messagelist/MessageListObserver$1;,
        Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;
    }
.end annotation


# instance fields
.field private final SYNC_TIME:I

.field private final TAG:Ljava/lang/String;

.field public canRegisterObserver:Z

.field private mContext:Landroid/content/Context;

.field private mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

.field private mProjection:[Ljava/lang/String;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSelection:Ljava/lang/String;

.field mTask:Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

.field private mToken:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/AsyncQueryHandler;)V
    .registers 6
    .parameter "context"
    .parameter "handler"
    .parameter "query"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 25
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mContext:Landroid/content/Context;

    .line 26
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 28
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->SYNC_TIME:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mToken:I

    .line 31
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mSelection:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mProjection:[Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    .line 35
    const-string v0, "MessageListObserver"

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->TAG:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mTask:Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->canRegisterObserver:Z

    .line 44
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->getNewTask()Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mTask:Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->checkRunningActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mToken:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Landroid/content/AsyncQueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method private checkRunningActivity()Z
    .registers 3

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, ret:Z
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 188
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 190
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 191
    const/4 v0, 0x1

    .line 194
    .end local v0           #ret:Z
    :cond_26
    return v0
.end method


# virtual methods
.method public changeQuery(I[Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)V
    .registers 9
    .parameter "token"
    .parameter "projection"
    .parameter "selection"
    .parameter "wrapper"

    .prologue
    .line 89
    const-string v0, "MessageListObserver"

    const-string v1, "changeQuery()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mToken:I

    .line 91
    iput-object p2, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mProjection:[Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mSelection:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    .line 94
    return-void
.end method

.method public getNewTask()Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;
    .registers 3

    .prologue
    .line 83
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;-><init>(Lcom/sec/android/socialhub/messagelist/MessageListObserver;Lcom/sec/android/socialhub/messagelist/MessageListObserver$1;)V

    .line 84
    .local v0, task:Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;
    return-object v0
.end method

.method public onChange(Z)V
    .registers 7
    .parameter "b"

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mTask:Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    if-nez v1, :cond_a

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->getNewTask()Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mTask:Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    .line 59
    :cond_a
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mTask:Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_2b

    .line 61
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mTask:Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/AsyncQueryHandler;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    const-string v1, "MessageListObserver"

    const-string v2, "onChange()"

    const-string v3, "PENDING"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_2a
    return-void

    .line 64
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mTask:Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_44

    .line 66
    const-string v1, "MessageListObserver"

    const-string v2, "onChange()"

    const-string v3, "RUNNING"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_2a

    .line 75
    :catch_3f
    move-exception v0

    .line 77
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_2a

    .line 70
    .end local v0           #e:Ljava/util/concurrent/RejectedExecutionException;
    :cond_44
    :try_start_44
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->getNewTask()Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mTask:Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    .line 71
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mTask:Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/AsyncQueryHandler;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    const-string v1, "MessageListObserver"

    const-string v2, "onChange()"

    const-string v3, "FINISHED"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_44 .. :try_end_60} :catch_3f

    goto :goto_2a
.end method
