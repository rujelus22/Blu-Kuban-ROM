.class public final Lcom/google/android/youtube/googlemobile/masf/f;
.super Lcom/google/android/youtube/googlemobile/common/io/b;


# static fields
.field static b:Lcom/google/android/youtube/googlemobile/masf/f;

.field private static u:I


# instance fields
.field c:Lcom/google/android/youtube/googlemobile/common/c/c;

.field d:Lcom/google/android/youtube/googlemobile/masf/b/a/e;

.field e:Lcom/google/android/youtube/googlemobile/common/async/c;

.field f:Lcom/google/android/youtube/googlemobile/common/io/h;

.field g:Lcom/google/android/youtube/googlemobile/masf/a/d;

.field h:Ljava/lang/String;

.field i:Ljava/util/Vector;

.field j:Ljava/util/Vector;

.field k:Ljava/lang/Object;

.field l:I

.field m:I

.field n:I

.field final o:J

.field final p:J

.field q:J

.field r:J

.field s:Lcom/google/android/youtube/googlemobile/common/c/d;

.field t:Z

.field private v:Lcom/google/android/youtube/googlemobile/masf/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x4e20

    sput v0, Lcom/google/android/youtube/googlemobile/masf/f;->u:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/b;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->i:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->j:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->k:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->l:I

    iput v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->m:I

    iput v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->n:I

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->o:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->p:J

    iput-boolean v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->t:Z

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/a/d;

    const-string v5, "g"

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/googlemobile/masf/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->g:Lcom/google/android/youtube/googlemobile/masf/a/d;

    new-instance v2, Lcom/google/android/youtube/googlemobile/common/b/a;

    invoke-direct {v2}, Lcom/google/android/youtube/googlemobile/common/b/a;-><init>()V

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/c/c;

    const-string v1, "MobileServiceMux TaskRunner"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/youtube/googlemobile/common/c/c;-><init>(Lcom/google/android/youtube/googlemobile/common/b/c;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->c:Lcom/google/android/youtube/googlemobile/common/c/c;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->c:Lcom/google/android/youtube/googlemobile/common/c/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/c;->b()V

    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/b;->a()Lcom/google/android/youtube/googlemobile/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/b;->g()Lcom/google/android/youtube/googlemobile/common/io/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->f:Lcom/google/android/youtube/googlemobile/common/io/h;

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->h:Ljava/lang/String;

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/async/c;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->c:Lcom/google/android/youtube/googlemobile/common/c/c;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/f;->f:Lcom/google/android/youtube/googlemobile/common/io/h;

    const-string v4, "MobileServiceMux AsyncHttpRequestFactory"

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/googlemobile/common/async/c;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;Lcom/google/android/youtube/googlemobile/common/b/c;Lcom/google/android/youtube/googlemobile/common/io/h;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->e:Lcom/google/android/youtube/googlemobile/common/async/c;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->e:Lcom/google/android/youtube/googlemobile/common/async/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/async/c;->a()V

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->c:Lcom/google/android/youtube/googlemobile/common/c/c;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->g:Lcom/google/android/youtube/googlemobile/masf/a/d;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;-><init>(Lcom/google/android/youtube/googlemobile/masf/f;Lcom/google/android/youtube/googlemobile/common/c/c;Lcom/google/android/youtube/googlemobile/masf/a/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->d:Lcom/google/android/youtube/googlemobile/masf/b/a/e;

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/m;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/masf/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->v:Lcom/google/android/youtube/googlemobile/masf/m;

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/c/d;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->c:Lcom/google/android/youtube/googlemobile/common/c/c;

    new-instance v2, Lcom/google/android/youtube/googlemobile/masf/g;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/googlemobile/masf/g;-><init>(Lcom/google/android/youtube/googlemobile/masf/f;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/c/d;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->s:Lcom/google/android/youtube/googlemobile/common/c/d;

    return-void
.end method

.method private a(Lcom/google/android/youtube/googlemobile/masf/a/p;Lcom/google/android/youtube/googlemobile/masf/a/h;)Lcom/google/android/youtube/googlemobile/masf/a/o;
    .registers 13

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/a/p;->j()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/googlemobile/masf/a/i;

    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/h;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/h;->g()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/h;->e()Lcom/google/android/youtube/googlemobile/masf/a/b;

    move-result-object v2

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/youtube/googlemobile/masf/a/i;-><init>(IILcom/google/android/youtube/googlemobile/masf/a/b;)V

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/h;->f()[Lcom/google/android/youtube/googlemobile/masf/a/b;

    move-result-object v6

    const/4 v0, 0x0

    move v2, v0

    :goto_20
    array-length v0, v6

    if-ge v2, v0, :cond_69

    aget-object v7, v6, v2

    invoke-virtual {v7}, Lcom/google/android/youtube/googlemobile/masf/a/b;->e()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "Content-Location"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_65

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/googlemobile/masf/a/i;

    if-nez v1, :cond_61

    invoke-virtual {v7}, Lcom/google/android/youtube/googlemobile/masf/a/b;->e()Ljava/util/Hashtable;

    move-result-object v1

    const-string v8, "X-Masf-Response-Code"

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v8, Lcom/google/android/youtube/googlemobile/masf/a/i;

    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/h;->d()I

    move-result v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v8, v9, v1, v7}, Lcom/google/android/youtube/googlemobile/masf/a/i;-><init>(IILcom/google/android/youtube/googlemobile/masf/a/b;)V

    invoke-virtual {v5, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_20

    :cond_61
    invoke-virtual {v1, v7}, Lcom/google/android/youtube/googlemobile/masf/a/i;->a(Lcom/google/android/youtube/googlemobile/masf/a/b;)V

    goto :goto_5d

    :cond_65
    invoke-virtual {v4, v7}, Lcom/google/android/youtube/googlemobile/masf/a/i;->a(Lcom/google/android/youtube/googlemobile/masf/a/b;)V

    goto :goto_5d

    :cond_69
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->k:Ljava/lang/Object;

    monitor-enter v2

    :goto_70
    :try_start_70
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/a/i;

    iget-object v6, p0, Lcom/google/android/youtube/googlemobile/masf/f;->v:Lcom/google/android/youtube/googlemobile/masf/m;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/i;->a()Lcom/google/android/youtube/googlemobile/masf/a/h;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Lcom/google/android/youtube/googlemobile/masf/m;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_89
    .catchall {:try_start_70 .. :try_end_89} :catchall_8a

    goto :goto_70

    :catchall_8a
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_8d
    :try_start_8d
    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8a

    invoke-virtual {v4}, Lcom/google/android/youtube/googlemobile/masf/a/i;->a()Lcom/google/android/youtube/googlemobile/masf/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .registers 1

    sget-object v0, Lcom/google/android/youtube/googlemobile/masf/f;->b:Lcom/google/android/youtube/googlemobile/masf/f;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/google/android/youtube/googlemobile/masf/f;->b:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-object v0, v0, Lcom/google/android/youtube/googlemobile/masf/f;->e:Lcom/google/android/youtube/googlemobile/common/async/c;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/google/android/youtube/googlemobile/masf/f;->b:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-object v0, v0, Lcom/google/android/youtube/googlemobile/masf/f;->e:Lcom/google/android/youtube/googlemobile/common/async/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/async/c;->b()V

    :cond_11
    sget-object v0, Lcom/google/android/youtube/googlemobile/masf/f;->b:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-object v0, v0, Lcom/google/android/youtube/googlemobile/masf/f;->c:Lcom/google/android/youtube/googlemobile/common/c/c;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/google/android/youtube/googlemobile/masf/f;->b:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-object v0, v0, Lcom/google/android/youtube/googlemobile/masf/f;->c:Lcom/google/android/youtube/googlemobile/common/c/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/c;->c()V

    :cond_1e
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/youtube/googlemobile/masf/f;->b:Lcom/google/android/youtube/googlemobile/masf/f;

    :cond_21
    return-void
.end method

.method private a(Lcom/google/android/youtube/googlemobile/masf/a/m;Lcom/google/android/youtube/googlemobile/masf/a/o;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/a/m;->i()Lcom/google/android/youtube/googlemobile/masf/a/n;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/googlemobile/masf/a/n;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;Lcom/google/android/youtube/googlemobile/masf/a/o;)V

    :cond_9
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/f;->c()[Lcom/google/android/youtube/googlemobile/masf/j;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_18
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_10

    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/o;->h()V

    :goto_f
    return-void

    :catch_10
    move-exception v0

    :try_start_11
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_18

    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/o;->h()V

    goto :goto_f

    :catchall_18
    move-exception v0

    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/o;->h()V

    throw v0
.end method

.method private a(Lcom/google/android/youtube/googlemobile/masf/a/m;Ljava/lang/Exception;)V
    .registers 8

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/a/m;->f()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/a/m;->e()J

    move-result-wide v0

    new-instance v2, Lcom/google/android/youtube/googlemobile/masf/h;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/google/android/youtube/googlemobile/masf/h;-><init>(Lcom/google/android/youtube/googlemobile/masf/f;Lcom/google/android/youtube/googlemobile/masf/a/m;Z)V

    new-instance v3, Lcom/google/android/youtube/googlemobile/common/c/d;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/f;->c:Lcom/google/android/youtube/googlemobile/common/c/c;

    invoke-direct {v3, v4, v2}, Lcom/google/android/youtube/googlemobile/common/c/d;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0, v1}, Lcom/google/android/youtube/googlemobile/common/c/d;->a(J)V

    invoke-virtual {v3}, Lcom/google/android/youtube/googlemobile/common/c/d;->e()V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/a/m;->i()Lcom/google/android/youtube/googlemobile/masf/a/n;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/googlemobile/masf/a/n;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;Ljava/lang/Exception;)V

    goto :goto_1d
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/masf/f;)V
    .registers 10

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->j:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v5, v1, [Lcom/google/android/youtube/googlemobile/masf/a/m;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->j:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->j:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_50

    :try_start_16
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->g:Lcom/google/android/youtube/googlemobile/masf/a/d;

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/masf/a/d;->b()I

    move-result v3

    const/4 v1, 0x0

    move v4, v1

    :goto_23
    array-length v1, v5

    if-ge v4, v1, :cond_84

    aget-object v2, v5, v4

    instance-of v1, v2, Lcom/google/android/youtube/googlemobile/masf/a/p;

    if-eqz v1, :cond_5b

    move-object v0, v2

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/a/p;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/masf/a/p;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5b

    iget-object v7, p0, Lcom/google/android/youtube/googlemobile/masf/f;->k:Ljava/lang/Object;

    monitor-enter v7
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_39} :catch_56

    :try_start_39
    iget-object v8, p0, Lcom/google/android/youtube/googlemobile/masf/f;->v:Lcom/google/android/youtube/googlemobile/masf/m;

    invoke-virtual {v8, v1}, Lcom/google/android/youtube/googlemobile/masf/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v7
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_53

    if-eqz v1, :cond_5b

    const/4 v7, 0x0

    :try_start_43
    aput-object v7, v5, v4

    check-cast v1, Lcom/google/android/youtube/googlemobile/masf/a/o;

    invoke-direct {p0, v2, v1}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;Lcom/google/android/youtube/googlemobile/masf/a/o;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4a} :catch_56

    move v1, v3

    :goto_4b
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    goto :goto_23

    :catchall_50
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_53
    move-exception v1

    :try_start_54
    monitor-exit v7

    throw v1
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_56} :catch_56

    :catch_56
    move-exception v1

    invoke-direct {p0, v5, v1}, Lcom/google/android/youtube/googlemobile/masf/f;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    :try_start_5b
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/f;->d()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/googlemobile/masf/a/m;->a(I)V

    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/a/m;->b()I

    move-result v1

    add-int/2addr v1, v3

    const v7, 0x8000

    if-le v1, v7, :cond_78

    invoke-direct {p0, v6}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Ljava/util/Vector;)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->g:Lcom/google/android/youtube/googlemobile/masf/a/d;

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/masf/a/d;->b()I

    move-result v3

    invoke-virtual {v6}, Ljava/util/Vector;->removeAllElements()V

    :cond_78
    const/4 v1, 0x0

    aput-object v1, v5, v4

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/a/m;->b()I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_4b

    :cond_84
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_5a

    invoke-direct {p0, v6}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Ljava/util/Vector;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_8d} :catch_56

    goto :goto_5a
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/masf/f;Lcom/google/android/youtube/googlemobile/common/async/b;[Ljava/lang/Object;)V
    .registers 13

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/google/android/youtube/googlemobile/common/async/b;->g_()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/youtube/googlemobile/common/async/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/youtube/googlemobile/common/async/b;->d()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {p1}, Lcom/google/android/youtube/googlemobile/common/async/b;->c()Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-direct {p0, p2}, Lcom/google/android/youtube/googlemobile/masf/f;->a([Ljava/lang/Object;)V

    :goto_2d
    return-void

    :cond_2e
    invoke-direct {p0, p2, v1}, Lcom/google/android/youtube/googlemobile/masf/f;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_2d

    :cond_32
    instance-of v2, v1, Ljava/lang/SecurityException;

    if-eqz v2, :cond_3a

    invoke-direct {p0, p2}, Lcom/google/android/youtube/googlemobile/masf/f;->a([Ljava/lang/Object;)V

    goto :goto_2d

    :cond_3a
    invoke-direct {p0, p2, v1}, Lcom/google/android/youtube/googlemobile/masf/f;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_2d

    :cond_3e
    const/16 v3, 0x1f6

    if-ne v1, v3, :cond_4b

    new-instance v2, Lcom/google/android/youtube/googlemobile/masf/ConnectionException;

    invoke-direct {v2, v1}, Lcom/google/android/youtube/googlemobile/masf/ConnectionException;-><init>(I)V

    invoke-direct {p0, p2, v2}, Lcom/google/android/youtube/googlemobile/masf/f;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_2d

    :cond_4b
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_5b

    new-instance v2, Lcom/google/android/youtube/googlemobile/masf/ConnectionException;

    invoke-direct {v2, v1}, Lcom/google/android/youtube/googlemobile/masf/ConnectionException;-><init>(I)V

    invoke-static {p2, v2}, Lcom/google/android/youtube/googlemobile/masf/f;->a([Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/f;->c()[Lcom/google/android/youtube/googlemobile/masf/j;

    goto :goto_2d

    :cond_5b
    if-eqz v2, :cond_65

    const-string v1, "application/binary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    :cond_65
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bad content-type"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/youtube/googlemobile/masf/f;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_2d

    :cond_70
    :try_start_70
    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->n:I

    int-to-long v1, v1

    invoke-interface {p1}, Lcom/google/android/youtube/googlemobile/common/async/b;->e()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->n:I

    invoke-interface {p1}, Lcom/google/android/youtube/googlemobile/common/async/b;->g()Ljava/io/DataInputStream;

    move-result-object v1

    new-instance v7, Lcom/google/android/youtube/googlemobile/masf/a/l;

    invoke-direct {v7, v1}, Lcom/google/android/youtube/googlemobile/masf/a/l;-><init>(Ljava/io/DataInputStream;)V

    move v4, v5

    :goto_85
    array-length v1, p2

    if-ge v4, v1, :cond_10a

    invoke-virtual {v7}, Lcom/google/android/youtube/googlemobile/masf/a/l;->b()Lcom/google/android/youtube/googlemobile/masf/a/o;

    move-result-object v3

    if-eqz v3, :cond_10a

    move v2, v5

    :goto_8f
    array-length v1, p2

    if-ge v2, v1, :cond_127

    aget-object v1, p2, v2

    check-cast v1, Lcom/google/android/youtube/googlemobile/masf/a/m;

    if-eqz v1, :cond_d1

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/masf/a/m;->d()I

    move-result v8

    invoke-virtual {v3}, Lcom/google/android/youtube/googlemobile/masf/a/o;->d()I

    move-result v9

    if-ne v8, v9, :cond_d1

    const/4 v8, 0x0

    aput-object v8, p2, v2

    move-object v2, v1

    :goto_a6
    if-eqz v2, :cond_e9

    instance-of v1, v3, Lcom/google/android/youtube/googlemobile/masf/a/h;

    if-eqz v1, :cond_ba

    instance-of v1, v2, Lcom/google/android/youtube/googlemobile/masf/a/p;

    if-eqz v1, :cond_ba

    move-object v0, v2

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/a/p;

    move-object v1, v0

    check-cast v3, Lcom/google/android/youtube/googlemobile/masf/a/h;

    invoke-direct {p0, v1, v3}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/p;Lcom/google/android/youtube/googlemobile/masf/a/h;)Lcom/google/android/youtube/googlemobile/masf/a/o;

    move-result-object v3

    :cond_ba
    invoke-virtual {v3}, Lcom/google/android/youtube/googlemobile/masf/a/o;->g()I

    move-result v1

    const/16 v8, 0x226

    if-ne v1, v8, :cond_d5

    invoke-virtual {v3}, Lcom/google/android/youtube/googlemobile/masf/a/o;->h()V

    new-instance v3, Lcom/google/android/youtube/googlemobile/masf/ConnectionException;

    invoke-direct {v3, v1}, Lcom/google/android/youtube/googlemobile/masf/ConnectionException;-><init>(I)V

    invoke-direct {p0, v2, v3}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;Ljava/lang/Exception;)V

    :goto_cd
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_85

    :cond_d1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8f

    :cond_d5
    invoke-direct {p0, v2, v3}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;Lcom/google/android/youtube/googlemobile/masf/a/o;)V
    :try_end_d8
    .catchall {:try_start_70 .. :try_end_d8} :catchall_119
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_d8} :catch_d9
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_d8} :catch_fa

    goto :goto_cd

    :catch_d9
    move-exception v1

    :try_start_da
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_119

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/youtube/googlemobile/masf/f;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_2d

    :cond_e9
    :try_start_e9
    invoke-virtual {v3}, Lcom/google/android/youtube/googlemobile/masf/a/o;->b()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v3}, Lcom/google/android/youtube/googlemobile/masf/a/o;->c()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_f6
    .catchall {:try_start_e9 .. :try_end_f6} :catchall_119
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_f6} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_e9 .. :try_end_f6} :catch_fa

    :goto_f6
    :try_start_f6
    invoke-virtual {v3}, Lcom/google/android/youtube/googlemobile/masf/a/o;->h()V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_119
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_d9
    .catch Ljava/lang/RuntimeException; {:try_start_f6 .. :try_end_f9} :catch_fa

    goto :goto_cd

    :catch_fa
    move-exception v1

    :try_start_fb
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_119

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/youtube/googlemobile/masf/f;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_2d

    :cond_10a
    :try_start_10a
    invoke-virtual {v7}, Lcom/google/android/youtube/googlemobile/masf/a/l;->a()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_119
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_d9
    .catch Ljava/lang/RuntimeException; {:try_start_10a .. :try_end_10d} :catch_fa

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/youtube/googlemobile/masf/f;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_2d

    :catchall_119
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Request didn\'t complete"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/google/android/youtube/googlemobile/masf/f;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :catch_125
    move-exception v1

    goto :goto_f6

    :cond_127
    move-object v2, v6

    goto/16 :goto_a6
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/masf/f;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_12

    aget-object v0, p1, v1

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/a/m;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/m;->a()V

    :cond_e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_12
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/masf/f;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/youtube/googlemobile/masf/f;->a([Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-class v6, Lcom/google/android/youtube/googlemobile/masf/f;

    monitor-enter v6

    :try_start_3
    sget-object v0, Lcom/google/android/youtube/googlemobile/masf/f;->b:Lcom/google/android/youtube/googlemobile/masf/f;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/googlemobile/masf/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/googlemobile/masf/f;->b:Lcom/google/android/youtube/googlemobile/masf/f;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit v6

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private a(Ljava/util/Vector;)V
    .registers 8

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/android/youtube/googlemobile/masf/a/m;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_10
    array-length v3, v2

    if-ge v0, v3, :cond_1e

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/google/android/youtube/googlemobile/masf/a/m;->c()Ljava/io/InputStream;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1e
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->e:Lcom/google/android/youtube/googlemobile/common/async/c;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/googlemobile/common/async/c;->a(Ljava/lang/String;)Lcom/google/android/youtube/googlemobile/common/async/b;

    move-result-object v0

    const-string v3, "POST"

    invoke-interface {v0, v3}, Lcom/google/android/youtube/googlemobile/common/async/b;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/youtube/googlemobile/common/io/l;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/f;->g:Lcom/google/android/youtube/googlemobile/masf/a/d;

    invoke-virtual {v4}, Lcom/google/android/youtube/googlemobile/masf/a/d;->c()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Lcom/google/android/youtube/googlemobile/common/io/l;

    invoke-direct {v5, v1}, Lcom/google/android/youtube/googlemobile/common/io/l;-><init>([Ljava/io/InputStream;)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/googlemobile/common/io/l;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-interface {v0, v3}, Lcom/google/android/youtube/googlemobile/common/async/b;->a(Ljava/io/InputStream;)V

    sget v3, Lcom/google/android/youtube/googlemobile/masf/f;->u:I

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lcom/google/android/youtube/googlemobile/common/async/b;->a(J)V

    const-string v3, "application/binary"

    invoke-interface {v0, v3}, Lcom/google/android/youtube/googlemobile/common/async/b;->b(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/youtube/googlemobile/common/c/b;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/f;->c:Lcom/google/android/youtube/googlemobile/common/c/c;

    new-instance v5, Lcom/google/android/youtube/googlemobile/masf/i;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/google/android/youtube/googlemobile/masf/i;-><init>(Lcom/google/android/youtube/googlemobile/masf/f;Lcom/google/android/youtube/googlemobile/common/async/b;[Lcom/google/android/youtube/googlemobile/masf/a/m;I)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/googlemobile/common/c/b;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V

    invoke-interface {v0, v3}, Lcom/google/android/youtube/googlemobile/common/async/b;->b(Lcom/google/android/youtube/googlemobile/common/c/a;)V

    return-void
.end method

.method private a([Ljava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Connection disallowed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/googlemobile/masf/f;->a([Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/f;->c()[Lcom/google/android/youtube/googlemobile/masf/j;

    return-void
.end method

.method private static a([Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v0, p0

    if-ge v1, v0, :cond_16

    aget-object v0, p0, v1

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/a/m;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/m;->i()Lcom/google/android/youtube/googlemobile/masf/a/n;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-interface {v2, v0, p1}, Lcom/google/android/youtube/googlemobile/masf/a/n;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;Ljava/lang/Exception;)V

    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_16
    return-void
.end method

.method public static b()Lcom/google/android/youtube/googlemobile/masf/f;
    .registers 1

    sget-object v0, Lcom/google/android/youtube/googlemobile/masf/f;->b:Lcom/google/android/youtube/googlemobile/masf/f;

    return-object v0
.end method

.method private b([Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_15

    aget-object v0, p1, v1

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/a/m;

    if-eqz v0, :cond_e

    invoke-direct {p0, v0, p2}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;Ljava/lang/Exception;)V

    :cond_e
    const/4 v0, 0x0

    aput-object v0, p1, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_15
    return-void
.end method

.method private c()[Lcom/google/android/youtube/googlemobile/masf/j;
    .registers 4

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->i:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/youtube/googlemobile/masf/j;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->i:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized d()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->l:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/google/android/youtube/googlemobile/common/io/e;
    .registers 4

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/k;

    invoke-direct {v0, p1, p2}, Lcom/google/android/youtube/googlemobile/masf/k;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/googlemobile/masf/a/m;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;Z)V

    return-void
.end method

.method public final a(Lcom/google/android/youtube/googlemobile/masf/a/m;Z)V
    .registers 13

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/f;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p2, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    add-long/2addr v4, v2

    iget-wide v6, p0, Lcom/google/android/youtube/googlemobile/masf/f;->r:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_2e

    const-wide/16 v6, 0x64

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->q:J

    iput-wide v4, p0, Lcom/google/android/youtube/googlemobile/masf/f;->r:J

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->s:Lcom/google/android/youtube/googlemobile/common/c/d;

    iget-wide v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->r:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/youtube/googlemobile/common/c/d;->b(J)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/f;->s:Lcom/google/android/youtube/googlemobile/common/c/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/d;->e()V

    :cond_2c
    :goto_2c
    monitor-exit v1

    return-void

    :cond_2e
    iget-wide v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->q:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_3a

    iput-wide v4, p0, Lcom/google/android/youtube/googlemobile/masf/f;->r:J
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_37

    goto :goto_2c

    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3a
    :try_start_3a
    iget-wide v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->r:J

    iget-wide v4, p0, Lcom/google/android/youtube/googlemobile/masf/f;->q:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2c

    iget-wide v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->q:J

    iput-wide v2, p0, Lcom/google/android/youtube/googlemobile/masf/f;->r:J
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_37

    goto :goto_2c
.end method
