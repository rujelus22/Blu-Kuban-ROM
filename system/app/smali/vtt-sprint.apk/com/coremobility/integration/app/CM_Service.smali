.class public Lcom/coremobility/integration/app/CM_Service;
.super Landroid/app/Service;


# static fields
.field public static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Lcom/coremobility/integration/app/CM_Service;

.field private static d:Landroid/os/IBinder;

.field private static e:Z

.field private static h:Landroid/app/PendingIntent;

.field private static i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

.field private static j:Z

.field private static k:Landroid/app/AlarmManager;

.field private static l:Landroid/os/PowerManager;

.field private static m:Landroid/os/PowerManager$WakeLock;

.field private static n:Lcom/coremobility/integration/app/g;

.field private static o:Lcom/coremobility/integration/app/i;

.field private static p:Landroid/os/Looper;

.field private static q:Landroid/os/MessageQueue;

.field private static t:I

.field private static volatile u:Z

.field private static volatile v:Z


# instance fields
.field private f:Lcom/coremobility/integration/app/j;

.field private g:Ljava/util/List;

.field private r:I

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "CM_Service"

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->b:Ljava/lang/String;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->c:Lcom/coremobility/integration/app/CM_Service;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->d:Landroid/os/IBinder;

    sput-boolean v2, Lcom/coremobility/integration/app/CM_Service;->e:Z

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    sput-boolean v2, Lcom/coremobility/integration/app/CM_Service;->j:Z

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->n:Lcom/coremobility/integration/app/g;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->p:Landroid/os/Looper;

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->q:Landroid/os/MessageQueue;

    sput v2, Lcom/coremobility/integration/app/CM_Service;->t:I

    sput-boolean v2, Lcom/coremobility/integration/app/CM_Service;->u:Z

    sput-boolean v2, Lcom/coremobility/integration/app/CM_Service;->v:Z

    sput-boolean v2, Lcom/coremobility/integration/app/CM_Service;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->f:Lcom/coremobility/integration/app/j;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/integration/app/CM_Service;->s:J

    return-void
.end method

.method public static a()Lcom/coremobility/integration/app/CM_Service;
    .registers 1

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->c:Lcom/coremobility/integration/app/CM_Service;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)V
    .registers 4

    if-nez p0, :cond_d

    const/16 v0, 0x17

    const-string v1, "postEvent Intent is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_c
    return-void

    :cond_d
    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_11
    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->n()V

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_25

    goto :goto_c

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/coremobility/integration/app/CM_Service;)V
    .registers 4

    const/4 v2, 0x0

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->e:Z

    if-nez v0, :cond_58

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->q:Landroid/os/MessageQueue;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    sput v0, Lcom/coremobility/integration/app/CM_Service;->t:I

    new-instance v0, Lcom/coremobility/integration/app/g;

    invoke-direct {v0, p0}, Lcom/coremobility/integration/app/g;-><init>(Lcom/coremobility/integration/app/CM_Service;)V

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->n:Lcom/coremobility/integration/app/g;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->e:Z

    monitor-enter p0

    :try_start_1c
    invoke-static {}, Lcom/coremobility/d/a;->a()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->h()Z

    move-result v0

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    move-result-object v1

    iput-object v1, p0, Lcom/coremobility/integration/app/CM_Service;->f:Lcom/coremobility/integration/app/j;

    iget-object v1, p0, Lcom/coremobility/integration/app/CM_Service;->f:Lcom/coremobility/integration/app/j;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/app/j;->a(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_App;->a(Z)V

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_59

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->g()V

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->q:Landroid/os/MessageQueue;

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->n:Lcom/coremobility/integration/app/g;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const/16 v0, 0x17

    const-string v1, "WakeUp service"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->l()V

    invoke-static {}, Lcom/coremobility/integration/d;->a()Lcom/coremobility/integration/d;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v1, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    return-void

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->n()V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_d

    const/16 v0, 0x17

    const-string v1, "postEvent bundle is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_c
    return-void

    :cond_d
    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_11
    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->n()V

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_30

    goto :goto_c

    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_d

    const/16 v0, 0x17

    const-string v1, "postEvent string is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_c
    return-void

    :cond_d
    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_11
    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "String"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->n()V

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_32

    goto :goto_c

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Lcom/coremobility/integration/app/i;
    .registers 1

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    return-object v0
.end method

.method static synthetic b(Lcom/coremobility/integration/app/CM_Service;)V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->e:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->f:Lcom/coremobility/integration/app/j;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->f:Lcom/coremobility/integration/app/j;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/j;->b()V

    iput-object v2, p0, Lcom/coremobility/integration/app/CM_Service;->f:Lcom/coremobility/integration/app/j;

    :cond_15
    monitor-enter p0

    :try_start_16
    invoke-static {}, Lcom/coremobility/d/a;->b()V

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_86

    :cond_1a
    sput-boolean v3, Lcom/coremobility/integration/app/CM_Service;->e:Z

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    :try_start_1f
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->p:Landroid/os/Looper;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->p:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_89

    :cond_29
    iget v0, p0, Lcom/coremobility/integration/app/CM_Service;->r:I

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/app/CM_Service;->stopSelfResult(I)Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    :cond_41
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    if-eqz v0, :cond_5a

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->j:Z

    if-eqz v0, :cond_56

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    if-eqz v0, :cond_56

    sput-boolean v3, Lcom/coremobility/integration/app/CM_Service;->j:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_56
    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    :cond_5a
    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->p:Landroid/os/Looper;

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->q:Landroid/os/MessageQueue;

    if-eqz v0, :cond_71

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->n:Lcom/coremobility/integration/app/g;

    if-eqz v0, :cond_6f

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->q:Landroid/os/MessageQueue;

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->n:Lcom/coremobility/integration/app/g;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->n:Lcom/coremobility/integration/app/g;

    :cond_6f
    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->q:Landroid/os/MessageQueue;

    :cond_71
    iput-object v2, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->m()V

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    if-eqz v0, :cond_83

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->o()V

    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    :cond_83
    sput-object v2, Lcom/coremobility/integration/app/CM_Service;->c:Lcom/coremobility/integration/app/CM_Service;

    return-void

    :catchall_86
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_89
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()I
    .registers 1

    sget v0, Lcom/coremobility/integration/app/CM_Service;->t:I

    return v0
.end method

.method static synthetic c(Lcom/coremobility/integration/app/CM_Service;)V
    .registers 8

    const/4 v4, 0x0

    :cond_1
    sput-boolean v4, Lcom/coremobility/integration/app/CM_Service;->u:Z

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->d()V

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->j:Z

    if-eqz v0, :cond_13

    sput-boolean v4, Lcom/coremobility/integration/app/CM_Service;->j:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_13
    monitor-enter p0

    :try_start_14
    invoke-static {}, Lcom/coremobility/d/a;->c()J

    move-result-wide v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_4f

    sget-boolean v2, Lcom/coremobility/integration/app/CM_Service;->v:Z

    if-nez v2, :cond_27

    sget-boolean v2, Lcom/coremobility/integration/app/CM_Service;->u:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    :cond_27
    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_2b
    sput-boolean v3, Lcom/coremobility/integration/app/CM_Service;->u:Z

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-eqz v3, :cond_4a

    const/4 v3, 0x1

    sput-boolean v3, Lcom/coremobility/integration/app/CM_Service;->j:Z

    sget-object v3, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/app/i;->removeMessages(I)V

    sget-object v3, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v0, v5

    sget-object v5, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_4a
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->o()V

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_2b .. :try_end_4e} :catchall_52

    return-void

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_52
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic d(Lcom/coremobility/integration/app/CM_Service;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    return-object v0
.end method

.method public static d()V
    .registers 2

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-eqz v0, :cond_d

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_13
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_e

    :goto_c
    :try_start_c
    monitor-exit v1

    :cond_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_13

    goto :goto_c

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static f()Z
    .registers 1

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->e:Z

    return v0
.end method

.method public static g()V
    .registers 4

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->n()V

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_59

    if-eqz v0, :cond_f

    :try_start_a
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_59
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_54

    :cond_f
    :goto_f
    :try_start_f
    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->u:Z

    if-nez v0, :cond_52

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->u:Z

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->j:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->j:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    :cond_27
    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    if-nez v0, :cond_52

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.coremobility.app.vnotes.SERVICE_DOPROCESS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    const/16 v0, 0x17

    const-string v2, "wakeup"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_52
    monitor-exit v1

    return-void

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_f .. :try_end_58} :catchall_59

    goto :goto_f

    :catchall_59
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h()V
    .registers 0

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->n()V

    return-void
.end method

.method static synthetic i()Z
    .registers 1

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->e:Z

    return v0
.end method

.method static synthetic j()Lcom/coremobility/integration/app/i;
    .registers 1

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    return-object v0
.end method

.method static synthetic k()Lcom/coremobility/integration/app/CM_Service;
    .registers 1

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->c:Lcom/coremobility/integration/app/CM_Service;

    return-object v0
.end method

.method static synthetic l()Z
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->v:Z

    return v0
.end method

.method static synthetic m()Z
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->j:Z

    return v0
.end method

.method private static n()V
    .registers 4

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_25

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "CM Message wakeup"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/16 v0, 0x17

    const-string v2, "acquire WakeLock"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static o()V
    .registers 4

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->m:Landroid/os/PowerManager$WakeLock;

    const/16 v0, 0x17

    const-string v2, "release WakeLock"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/coremobility/integration/app/f;)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/coremobility/integration/app/f;)V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/app/f;

    if-ne v0, p1, :cond_1a

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_19
    return-void

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final e()J
    .registers 3

    iget-wide v0, p0, Lcom/coremobility/integration/app/CM_Service;->s:J

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->d:Landroid/os/IBinder;

    return-object v0
.end method

.method public declared-synchronized onCreate()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/16 v0, 0x17

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->c:Lcom/coremobility/integration/app/CM_Service;

    if-nez v0, :cond_97

    new-instance v0, Lcom/coremobility/integration/app/h;

    invoke-direct {v0}, Lcom/coremobility/integration/app/h;-><init>()V

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->d:Landroid/os/IBinder;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->j:Z

    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->k:Landroid/app/AlarmManager;

    const-string v0, "power"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->l:Landroid/os/PowerManager;

    new-instance v0, Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    invoke-direct {v0, p0}, Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;-><init>(Lcom/coremobility/integration/app/CM_Service;)V

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    const/4 v0, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.coremobility.app.vnotes.SERVICE_DOPROCESS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/CM_Service;->h:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.coremobility.app.vnotes.SERVICE_DOPROCESS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->i:Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->b:Ljava/lang/String;

    sget v2, Lcom/coremobility/integration/app/CM_App;->c:I

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->p:Landroid/os/Looper;

    if-nez v1, :cond_78

    const/16 v1, 0x17

    const-string v2, "No Looper"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_78
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/coremobility/integration/app/CM_Service;->g:Ljava/util/List;

    new-instance v1, Lcom/coremobility/integration/app/i;

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->p:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/coremobility/integration/app/i;-><init>(Lcom/coremobility/integration/app/CM_Service;Landroid/os/Looper;)V

    sput-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremobility/integration/app/CM_Service;->s:J

    sput-object p0, Lcom/coremobility/integration/app/CM_Service;->c:Lcom/coremobility/integration/app/CM_Service;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->k()V
    :try_end_97
    .catchall {:try_start_1 .. :try_end_97} :catchall_99

    :cond_97
    monitor-exit p0

    return-void

    :catchall_99
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/16 v0, 0x17

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_36

    if-nez v0, :cond_14

    :goto_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_36

    :try_start_17
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.coremobility.app.vnotes.APP_STOPPED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_33

    goto :goto_12

    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1

    throw v0
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStart(Landroid/content/Intent;I)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const/16 v0, 0x17

    const-string v1, "onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iput p2, p0, Lcom/coremobility/integration/app/CM_Service;->r:I

    sget-object v1, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_45

    :try_start_13
    sget-object v0, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    if-nez p1, :cond_20

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :cond_20
    const-string v2, "com.coremobility.app.vnotes.APP_STARTED"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->j()Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/app/i;->sendMessage(Landroid/os/Message;)Z

    :goto_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_42

    monitor-exit p0

    return-void

    :cond_3a
    :try_start_3a
    sget-object v2, Lcom/coremobility/integration/app/CM_Service;->o:Lcom/coremobility/integration/app/i;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v0, v3, v4}, Lcom/coremobility/integration/app/i;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_42

    goto :goto_37

    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v1

    throw v0
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method
