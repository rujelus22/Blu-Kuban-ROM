.class public final Lcom/google/gmm/debug/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static b:Lcom/google/gmm/debug/c;

.field private static c:Ljava/util/Vector;

.field private static d:[[Ljava/lang/Object;

.field private static e:Lcom/google/gmm/debug/d;


# instance fields
.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/StringBuffer;

.field private final h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/gmm/debug/c;->d()I

    move-result v0

    sput v0, Lcom/google/gmm/debug/c;->a:I

    invoke-static {}, Lcom/google/gmm/debug/c;->b()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/gmm/debug/c;->f:Ljava/lang/Object;

    sget v0, Lcom/google/gmm/debug/c;->a:I

    iput v0, p0, Lcom/google/gmm/debug/c;->i:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    invoke-static {p1}, Lcom/google/gmm/debug/a;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_22
    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lcom/google/gmm/debug/c;->h:I

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/Class;)Lcom/google/gmm/debug/c;
    .registers 3

    const-class v0, Lcom/google/gmm/debug/c;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/gmm/debug/c;->b:Lcom/google/gmm/debug/c;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/Object;)Lcom/google/gmm/debug/c;
    .registers 4

    const-class v1, Lcom/google/gmm/debug/c;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/google/gmm/debug/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Lcom/google/gmm/debug/c;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/google/gmm/debug/c;->c()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lcom/google/gmm/debug/c;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method static synthetic a([[Ljava/lang/Object;)[[Ljava/lang/Object;
    .registers 1

    sput-object p0, Lcom/google/gmm/debug/c;->d:[[Ljava/lang/Object;

    return-object p0
.end method

.method private static b()V
    .registers 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/google/gmm/debug/c;->c:Ljava/util/Vector;

    const-string v0, "${LOG_SOURCE_LEVELS}"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/gmm/debug/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gmm/debug/c;->c(Ljava/lang/String;)[[Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/google/gmm/debug/c;->d:[[Ljava/lang/Object;

    invoke-static {}, Lcom/google/gmm/debug/f;->a()Lcom/google/gmm/debug/f;

    move-result-object v1

    const-string v2, "/logs/level"

    invoke-virtual {v1, v2}, Lcom/google/gmm/debug/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-static {}, Lcom/google/gmm/debug/f;->a()Lcom/google/gmm/debug/f;

    move-result-object v1

    const-string v2, "/logs/level"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string v4, "*=FINE"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "*=INFO"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "*=SEVERE"

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/gmm/debug/f;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3f
    new-instance v0, Lcom/google/gmm/debug/d;

    invoke-direct {v0}, Lcom/google/gmm/debug/d;-><init>()V

    sput-object v0, Lcom/google/gmm/debug/c;->e:Lcom/google/gmm/debug/d;

    invoke-static {}, Lcom/google/gmm/debug/f;->a()Lcom/google/gmm/debug/f;

    move-result-object v0

    sget-object v1, Lcom/google/gmm/debug/c;->e:Lcom/google/gmm/debug/d;

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/f;->a(LZ/e;)V

    new-instance v0, Lcom/google/gmm/debug/c;

    const-class v1, Lcom/google/gmm/debug/c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gmm/debug/c;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/gmm/debug/c;->b:Lcom/google/gmm/debug/c;

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)[[Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/google/gmm/debug/c;->c(Ljava/lang/String;)[[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized c()V
    .registers 6

    const-class v2, Lcom/google/gmm/debug/c;

    monitor-enter v2

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    sget-object v0, Lcom/google/gmm/debug/c;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4e

    sget-object v0, Lcom/google/gmm/debug/c;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gmm/debug/c;

    if-nez v0, :cond_24

    sget-object v0, Lcom/google/gmm/debug/c;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    move v0, v1

    :goto_22
    move v1, v0

    goto :goto_4

    :cond_24
    invoke-direct {v0}, Lcom/google/gmm/debug/c;->e()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/google/gmm/debug/c;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_50

    add-int/lit8 v0, v1, 0x1

    goto :goto_22

    :cond_4e
    monitor-exit v2

    return-void

    :catchall_50
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static c(Ljava/lang/String;)[[Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/Object;

    return-object v0
.end method

.method private static d()I
    .registers 2

    const/4 v0, 0x7

    :try_start_1
    invoke-static {v0}, Lcom/google/gmm/debug/b;->a(I)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v0

    :goto_5
    return v0

    :catch_6
    move-exception v1

    goto :goto_5
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXCEPTION["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    iget-object v1, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/google/gmm/debug/c;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/google/gmm/debug/c;->f:Ljava/lang/Object;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/google/gmm/debug/c;->f:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/google/gmm/debug/c;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_20
    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lcom/google/gmm/debug/c;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_55

    instance-of v0, p2, Ljava/lang/Throwable;

    if-eqz v0, :cond_5d

    check-cast p2, Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_5d
    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/gmm/debug/c;->g:Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lcom/google/gmm/debug/c;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_55

    :catchall_6e
    move-exception v0

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6e

    throw v0
.end method

.method private e()V
    .registers 1

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p5, p6}, Lcom/google/gmm/debug/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/gmm/debug/b;->a(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/gmm/debug/c;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)Z
    .registers 3

    iget v0, p0, Lcom/google/gmm/debug/c;->i:I

    if-gt v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/gmm/debug/c;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/gmm/debug/c;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/gmm/debug/c;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
