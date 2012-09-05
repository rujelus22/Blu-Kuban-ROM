.class public final Lcom/google/android/youtube/googlemobile/common/e;
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

.field private static l:Lcom/google/android/youtube/googlemobile/common/f;

.field private static m:Z

.field private static n:Z

.field private static o:Lcom/google/android/youtube/googlemobile/common/h;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/youtube/googlemobile/common/e;->a:J

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/e;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/e;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/e;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/e;->e:Ljava/lang/String;

    sput v2, Lcom/google/android/youtube/googlemobile/common/e;->f:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/youtube/googlemobile/common/e;->g:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/youtube/googlemobile/common/e;->h:Z

    sput-boolean v2, Lcom/google/android/youtube/googlemobile/common/e;->i:Z

    sput-boolean v2, Lcom/google/android/youtube/googlemobile/common/e;->j:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/e;->k:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/g;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/common/g;-><init>()V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/e;->l:Lcom/google/android/youtube/googlemobile/common/f;

    sput-boolean v2, Lcom/google/android/youtube/googlemobile/common/e;->m:Z

    sput-boolean v2, Lcom/google/android/youtube/googlemobile/common/e;->n:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .registers 1

    const-class v0, Lcom/google/android/youtube/googlemobile/common/e;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    const/16 v4, 0x12c

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

    if-eqz v0, :cond_3f

    sget-object v1, Lcom/google/android/youtube/googlemobile/common/e;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_25
    sget-object v2, Lcom/google/android/youtube/googlemobile/common/e;->e:Ljava/lang/String;

    if-nez v2, :cond_43

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/e;->e:Ljava/lang/String;

    :goto_2b
    sget-object v0, Lcom/google/android/youtube/googlemobile/common/e;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_3e

    sget-object v0, Lcom/google/android/youtube/googlemobile/common/e;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/e;->e:Ljava/lang/String;

    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_5f

    :cond_3f
    invoke-static {p0, p1}, Lcom/google/android/youtube/googlemobile/common/e;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_43
    :try_start_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/youtube/googlemobile/common/e;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/e;->e:Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_43 .. :try_end_5e} :catchall_5f

    goto :goto_2b

    :catchall_5f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0, p1}, Lcom/google/android/youtube/googlemobile/common/e;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/google/android/youtube/googlemobile/common/e;->o:Lcom/google/android/youtube/googlemobile/common/h;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/youtube/googlemobile/common/e;->o:Lcom/google/android/youtube/googlemobile/common/h;

    :cond_6
    return-void
.end method
