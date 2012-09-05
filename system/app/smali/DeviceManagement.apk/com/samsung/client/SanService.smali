.class public Lcom/samsung/client/SanService;
.super Landroid/app/Service;
.source "SanService.java"


# static fields
.field public static mSanWl:Landroid/os/PowerManager$WakeLock;

.field public static needCheckHomeScreen:Z

.field private static started:Z


# instance fields
.field private checkActivities:Ljava/lang/Runnable;

.field thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/client/SanService;->started:Z

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/client/SanService;->needCheckHomeScreen:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/SanService;->thread:Ljava/lang/Thread;

    .line 63
    new-instance v0, Lcom/samsung/client/SanService$1;

    invoke-direct {v0, p0}, Lcom/samsung/client/SanService$1;-><init>(Lcom/samsung/client/SanService;)V

    iput-object v0, p0, Lcom/samsung/client/SanService;->checkActivities:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/client/SanService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/client/SanService;->san_empty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/samsung/client/SanService;->started:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    sput-boolean p0, Lcom/samsung/client/SanService;->started:Z

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/client/SanService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/client/SanService;->checkHomeScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/client/SanService;)Lcom/samsung/client/TslcmnSan$TslSanMsg;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/client/SanService;->next_san_msg()Lcom/samsung/client/TslcmnSan$TslSanMsg;

    move-result-object v0

    return-object v0
.end method

.method private checkHomeScreen()Z
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 183
    sget-boolean v8, Lcom/samsung/client/SanService;->needCheckHomeScreen:Z

    if-nez v8, :cond_f

    .line 184
    const-string v8, "TAG"

    const-string v10, "SCREEN OFF: dont check Home Screen"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 211
    :goto_e
    return v8

    .line 188
    :cond_f
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/samsung/client/SanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 189
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v1, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 191
    .local v7, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v7, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 192
    .local v6, rt:Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v8, "TaskManager"

    iget-object v11, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v8, "TaskManager"

    iget-object v11, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/samsung/client/SanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 196
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, i:Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const/high16 v8, 0x1

    invoke-virtual {v5, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 201
    .local v4, lst:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 202
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_56
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 203
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 204
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 205
    const-string v8, "RESULT"

    const-string v10, "HOME SCREEN"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 206
    goto :goto_e

    .line 208
    :cond_7b
    const-string v8, "HomeManager"

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v8, "HomeManager"

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_8a
    move v8, v10

    .line 211
    goto :goto_e
.end method

.method private next_san_msg()Lcom/samsung/client/TslcmnSan$TslSanMsg;
    .registers 2

    .prologue
    .line 219
    invoke-static {p0}, Lcom/samsung/client/SANStorage;->next_san_msg(Landroid/content/Context;)Lcom/samsung/client/TslcmnSan$TslSanMsg;

    move-result-object v0

    return-object v0
.end method

.method private san_empty()Z
    .registers 2

    .prologue
    .line 215
    invoke-static {p0}, Lcom/samsung/client/SANStorage;->isEmpty(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 33
    const-string v0, "SAN_SERVICE"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 38
    const-string v0, "SAN_SERVICE"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 45
    const-string v1, "SANService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart(): intent_action = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-eqz p1, :cond_2f

    const-string v0, "com.samsung.client.INIT_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 49
    :cond_2f
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->onInit()V

    .line 61
    :cond_36
    :goto_36
    return-void

    :cond_37
    move-object v0, p1

    .line 45
    goto :goto_16

    .line 53
    :cond_39
    const-string v0, "SANService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In on Start: started = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/client/SanService;->started:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-boolean v0, Lcom/samsung/client/SanService;->started:Z

    if-nez v0, :cond_36

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/client/SanService;->started:Z

    .line 56
    const-string v0, "SANService"

    const-string v1, "Starting thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/client/SanService;->checkActivities:Ljava/lang/Runnable;

    const-string v3, "checkActivities"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/client/SanService;->thread:Ljava/lang/Thread;

    .line 59
    iget-object v0, p0, Lcom/samsung/client/SanService;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_36
.end method
