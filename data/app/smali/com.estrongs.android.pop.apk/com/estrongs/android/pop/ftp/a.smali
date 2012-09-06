.class public Lcom/estrongs/android/pop/ftp/a;
.super Ljava/lang/Object;


# static fields
.field public static d:Z

.field public static f:Ljava/lang/String;

.field public static i:Z

.field private static l:Lcom/estrongs/android/pop/ftp/a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Thread;

.field public e:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public j:Lcom/estrongs/android/pop/ftp/d;

.field private k:I

.field private m:I

.field private n:Ljava/net/InetAddress;

.field private o:Ljava/net/ServerSocket;

.field private p:I

.field private q:I

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/Thread;

.field private t:Z

.field private u:J

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/ftp/a;->l:Lcom/estrongs/android/pop/ftp/a;

    sput-boolean v1, Lcom/estrongs/android/pop/ftp/a;->d:Z

    const-string v0, "UTF-8"

    sput-object v0, Lcom/estrongs/android/pop/ftp/a;->f:Ljava/lang/String;

    sput-boolean v1, Lcom/estrongs/android/pop/ftp/a;->i:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/estrongs/android/pop/ftp/a;->a:Ljava/lang/String;

    iput-object v3, p0, Lcom/estrongs/android/pop/ftp/a;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/estrongs/android/pop/ftp/a;->c:Ljava/lang/Thread;

    const/16 v0, 0x15

    iput v0, p0, Lcom/estrongs/android/pop/ftp/a;->k:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/ftp/a;->e:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/ftp/a;->g:Z

    iput-object v3, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/estrongs/android/pop/ftp/a;->m:I

    iput-object v3, p0, Lcom/estrongs/android/pop/ftp/a;->n:Ljava/net/InetAddress;

    iput-object v3, p0, Lcom/estrongs/android/pop/ftp/a;->o:Ljava/net/ServerSocket;

    iput v1, p0, Lcom/estrongs/android/pop/ftp/a;->p:I

    iput v1, p0, Lcom/estrongs/android/pop/ftp/a;->q:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->r:Ljava/lang/Object;

    iput-object v3, p0, Lcom/estrongs/android/pop/ftp/a;->s:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/ftp/a;->t:Z

    iput-wide v4, p0, Lcom/estrongs/android/pop/ftp/a;->u:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/ftp/a;->v:J

    iput-object v3, p0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/ftp/a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/estrongs/android/pop/ftp/a;->k:I

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5c

    :cond_46
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5c

    :cond_52
    const/4 v0, 0x1

    :goto_53
    iput-boolean v0, p0, Lcom/estrongs/android/pop/ftp/a;->g:Z

    if-nez p4, :cond_5e

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    :goto_5b
    return-void

    :cond_5c
    move v0, v1

    goto :goto_53

    :cond_5e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_91

    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    iput-object v3, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    :cond_79
    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    goto :goto_5b

    :cond_8e
    iput-object p4, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    goto :goto_5b

    :cond_91
    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    goto :goto_5b
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/pop/ftp/a;
    .registers 6

    const-class v1, Lcom/estrongs/android/pop/ftp/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/ftp/a;->l:Lcom/estrongs/android/pop/ftp/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/estrongs/android/pop/ftp/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/estrongs/android/pop/ftp/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/pop/ftp/a;->l:Lcom/estrongs/android/pop/ftp/a;

    :goto_e
    sget-object v0, Lcom/estrongs/android/pop/ftp/a;->l:Lcom/estrongs/android/pop/ftp/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_18

    monitor-exit v1

    return-object v0

    :cond_12
    :try_start_12
    sget-object v0, Lcom/estrongs/android/pop/ftp/a;->l:Lcom/estrongs/android/pop/ftp/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/estrongs/android/pop/ftp/a;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_18

    goto :goto_e

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/ftp/a;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->r:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/ftp/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/pop/ftp/a;->u:J

    return-wide v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/ftp/a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/estrongs/android/pop/ftp/a;->k:I

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_21

    :cond_f
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_21

    :cond_17
    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, Lcom/estrongs/android/pop/ftp/a;->g:Z

    if-nez p4, :cond_23

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    :goto_20
    return-void

    :cond_21
    move v0, v1

    goto :goto_18

    :cond_23
    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    :cond_2f
    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    goto :goto_20

    :cond_44
    iput-object p4, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    goto :goto_20
.end method

.method static synthetic c(Lcom/estrongs/android/pop/ftp/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/pop/ftp/a;->v:J

    return-wide v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/ftp/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/ftp/a;->t:Z

    return v0
.end method

.method public static declared-synchronized e()Lcom/estrongs/android/pop/ftp/a;
    .registers 2

    const-class v0, Lcom/estrongs/android/pop/ftp/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/estrongs/android/pop/ftp/a;->l:Lcom/estrongs/android/pop/ftp/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic e(Lcom/estrongs/android/pop/ftp/a;)Ljava/net/ServerSocket;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->o:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public static j()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/ftp/a;->d:Z

    sget-object v0, Lcom/estrongs/android/pop/ftp/a;->l:Lcom/estrongs/android/pop/ftp/a;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    sget-object v0, Lcom/estrongs/android/pop/ftp/a;->l:Lcom/estrongs/android/pop/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/a;->k()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/ftp/a;->l:Lcom/estrongs/android/pop/ftp/a;

    goto :goto_7
.end method

.method private m()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/ftp/a;->t:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->s:Ljava/lang/Thread;

    return-void
.end method

.method private n()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/ftp/a;->t:Z

    iput-wide v2, p0, Lcom/estrongs/android/pop/ftp/a;->u:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/ftp/a;->v:J

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    invoke-interface {v0, v1, v1}, Lcom/estrongs/android/pop/ftp/d;->a(II)V

    :cond_12
    new-instance v0, Lcom/estrongs/android/pop/ftp/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/ftp/b;-><init>(Lcom/estrongs/android/pop/ftp/a;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->s:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->s:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/ftp/a;->p:I

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->s:Ljava/lang/Thread;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/estrongs/android/pop/ftp/a;->n()V

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    iget v2, p0, Lcom/estrongs/android/pop/ftp/a;->q:I

    iget v3, p0, Lcom/estrongs/android/pop/ftp/a;->p:I

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/pop/ftp/d;->a(II)V

    :cond_1d
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public a(J)V
    .registers 7

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/estrongs/android/pop/ftp/a;->u:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/estrongs/android/pop/ftp/a;->u:J

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_7

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    :goto_6
    return-void

    :cond_7
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    :cond_13
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    goto :goto_6

    :cond_29
    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/ftp/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    :cond_14
    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/estrongs/android/pop/ftp/a;->g:Z

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public b()V
    .registers 5

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/ftp/a;->p:I

    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->p:I

    if-nez v0, :cond_14

    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->q:I

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/estrongs/android/pop/ftp/a;->m()V

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    iget v2, p0, Lcom/estrongs/android/pop/ftp/a;->q:I

    iget v3, p0, Lcom/estrongs/android/pop/ftp/a;->p:I

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/pop/ftp/d;->a(II)V

    :cond_21
    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public b(J)V
    .registers 7

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/estrongs/android/pop/ftp/a;->v:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/estrongs/android/pop/ftp/a;->v:J

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public c()V
    .registers 5

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/ftp/a;->q:I

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->s:Ljava/lang/Thread;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/estrongs/android/pop/ftp/a;->n()V

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    iget v2, p0, Lcom/estrongs/android/pop/ftp/a;->q:I

    iget v3, p0, Lcom/estrongs/android/pop/ftp/a;->p:I

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/pop/ftp/d;->a(II)V

    :cond_1d
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public d()V
    .registers 5

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/ftp/a;->q:I

    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->p:I

    if-nez v0, :cond_14

    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->q:I

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/estrongs/android/pop/ftp/a;->m()V

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    iget v2, p0, Lcom/estrongs/android/pop/ftp/a;->q:I

    iget v3, p0, Lcom/estrongs/android/pop/ftp/a;->p:I

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/pop/ftp/d;->a(II)V

    :cond_21
    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public declared-synchronized f()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/ftp/a;->m:I

    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->m:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    add-int/lit8 v0, v0, -0x1

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->n:Ljava/net/InetAddress;

    return-object v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->k:I

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/ftp/a;->e:Z

    return v0
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/ftp/a;->i:Z

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->o:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method public l()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/estrongs/android/pop/ftp/a;->d:Z

    sput-boolean v1, Lcom/estrongs/android/pop/ftp/a;->i:Z

    iget-boolean v2, p0, Lcom/estrongs/android/pop/ftp/a;->e:Z

    if-eqz v2, :cond_b

    :goto_a
    return v0

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/af;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/a;->n:Ljava/net/InetAddress;

    :cond_1b
    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/a;->n:Ljava/net/InetAddress;

    if-nez v2, :cond_4a

    const-string v2, "127.0.0.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/a;->n:Ljava/net/InetAddress;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_44

    :goto_2a
    :try_start_2a
    new-instance v2, Ljava/net/ServerSocket;

    iget v3, p0, Lcom/estrongs/android/pop/ftp/a;->k:I

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Ljava/net/ServerSocket;-><init>(II)V

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/a;->o:Ljava/net/ServerSocket;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_65

    :goto_34
    const/4 v2, 0x0

    :try_start_35
    iput-boolean v2, p0, Lcom/estrongs/android/pop/ftp/a;->e:Z

    new-instance v2, Lcom/estrongs/android/pop/ftp/c;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/ftp/c;-><init>(Lcom/estrongs/android/pop/ftp/a;)V

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/a;->c:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/a;->c:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_43} :catch_44

    goto :goto_a

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_a

    :cond_4a
    :try_start_4a
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IP addr :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/a;->n:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2a

    :catch_65
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_69} :catch_44

    goto :goto_34
.end method
