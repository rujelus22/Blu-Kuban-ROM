.class public Lcom/vlingo/client/VlingoApplicationService;
.super Landroid/app/Service;
.source "VlingoApplicationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVITY_STATE_CHANGED:Ljava/lang/String; = "com.vlingo.client.app.action.ACTIVITY_STATE_CHANGED"

.field public static final ACTION_APPLICATION_STATE_CHANGED:Ljava/lang/String; = "com.vlingo.client.app.action.APPLICATION_STATE_CHANGED"

.field public static final ACTION_CLOSE_APPLICATION:Ljava/lang/String; = "com.vlingo.client.app.action.CLOSE_APPLICATION"

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.vlingo.client.app.extra.STATE"

.field private static final ITERATIONS:I = 0x1e

.field private static final MSG_ACTIVITY_STATE:I = 0x1

.field private static final MSG_CLOSE_APP:I = 0x2

.field private static final RESUME_WAIT:I = 0x32

.field public static final STATE_HIDDEN:I = 0x0

.field public static final STATE_SHOWN:I = 0x1

.field private static final VLINGO_PKG_PREFIX:Ljava/lang/String; = "com.vlingo"

.field private static volatile mLastState:I


# instance fields
.field private volatile mServiceHandler:Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, -0x1

    sput v0, Lcom/vlingo/client/VlingoApplicationService;->mLastState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 49
    sget v0, Lcom/vlingo/client/VlingoApplicationService;->mLastState:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    sput p0, Lcom/vlingo/client/VlingoApplicationService;->mLastState:I

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Lcom/vlingo/client/VlingoApplicationService;->isAppInForegroundInternal()Z

    move-result v0

    return v0
.end method

.method public static isAppInForeground()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 198
    sget v1, Lcom/vlingo/client/VlingoApplicationService;->mLastState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isAppInForegroundInternal()Z
    .registers 7

    .prologue
    .line 211
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 212
    .local v4, processId:I
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 213
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 214
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 215
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 216
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 217
    .local v1, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_18

    .line 220
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_30

    .line 221
    const/4 v5, 0x1

    .line 226
    .end local v1           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_2f
    return v5

    :cond_30
    const/4 v5, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 167
    const/4 v1, -0x1

    sput v1, Lcom/vlingo/client/VlingoApplicationService;->mLastState:I

    .line 168
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VAS Worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 170
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/VlingoApplicationService;->mServiceLooper:Landroid/os/Looper;

    .line 171
    new-instance v1, Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;

    iget-object v2, p0, Lcom/vlingo/client/VlingoApplicationService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;-><init>(Lcom/vlingo/client/VlingoApplicationService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vlingo/client/VlingoApplicationService;->mServiceHandler:Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;

    .line 172
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vlingo/client/VlingoApplicationService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 191
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x1

    .line 179
    .local v2, msgType:I
    const-string v3, "com.vlingo.client.app.action.CLOSE_APPLICATION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 180
    const/4 v2, 0x2

    .line 182
    :cond_e
    iget-object v3, p0, Lcom/vlingo/client/VlingoApplicationService;->mServiceHandler:Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;

    invoke-virtual {v3, v2}, Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 183
    .local v1, msg:Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 184
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    iget-object v3, p0, Lcom/vlingo/client/VlingoApplicationService;->mServiceHandler:Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;

    invoke-virtual {v3, v1}, Lcom/vlingo/client/VlingoApplicationService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    const/4 v3, 0x3

    return v3
.end method
