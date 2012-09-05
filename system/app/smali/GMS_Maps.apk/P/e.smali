.class public LP/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:J

.field private static final b:Ljava/util/Vector;

.field private static final c:Ljava/util/Hashtable;

.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/lang/String;

.field private static f:I

.field private static g:J

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Ljava/lang/StringBuffer;

.field private static l:LP/h;

.field private static m:Z

.field private static n:Z

.field private static o:LP/j;

.field private static p:LP/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, LP/e;->a:J

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, LP/e;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, LP/e;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LP/e;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, LP/e;->e:Ljava/lang/String;

    sput v2, LP/e;->f:I

    const-wide/16 v0, 0x0

    sput-wide v0, LP/e;->g:J

    const/4 v0, 0x1

    sput-boolean v0, LP/e;->h:Z

    sput-boolean v2, LP/e;->i:Z

    sput-boolean v2, LP/e;->j:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, LP/e;->k:Ljava/lang/StringBuffer;

    new-instance v0, LP/i;

    invoke-direct {v0}, LP/i;-><init>()V

    sput-object v0, LP/e;->l:LP/h;

    sput-boolean v2, LP/e;->m:Z

    sput-boolean v2, LP/e;->n:Z

    new-instance v0, LP/g;

    const-string v1, "EVENT_LOG"

    invoke-direct {v0, v1}, LP/g;-><init>(Ljava/lang/String;)V

    sput-object v0, LP/e;->p:LP/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    const/16 v3, 0x12c

    if-nez p0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v1, LP/e;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    sget-object v0, LP/e;->e:Ljava/lang/String;

    if-nez v0, :cond_26

    sput-object p0, LP/e;->e:Ljava/lang/String;

    :goto_e
    sget-object v0, LP/e;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_21

    sget-object v0, LP/e;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LP/e;->e:Ljava/lang/String;

    :cond_21
    monitor-exit v1

    goto :goto_4

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LP/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LP/e;->e:Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_23

    goto :goto_e
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-class v0, LP/e;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LP/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LP/e;->a(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 4

    sget-object v0, LP/e;->o:LP/j;

    if-eqz v0, :cond_9

    sget-object v0, LP/e;->o:LP/j;

    invoke-interface {v0, p0, p1, p2}, LP/j;->a(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_9
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, LP/e;->a(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method
