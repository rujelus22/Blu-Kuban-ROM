.class public abstract Lcom/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/util/Vector;

.field private static f:Z

.field private static g:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/a/a/a;->a:Z

    sput-boolean v1, Lcom/a/a/a;->b:Z

    sput-boolean v1, Lcom/a/a/a;->c:Z

    const-class v0, Lcom/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/a/a/a;->e:Ljava/util/Vector;

    sput-boolean v1, Lcom/a/a/a;->f:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/a/a/a;->g:Ljava/util/Vector;

    sget-object v0, Lcom/a/a/a;->e:Ljava/util/Vector;

    sget-object v1, Lcom/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x9

    if-le p0, v0, :cond_9

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    sget-object v0, Lcom/a/a/a;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b;

    invoke-interface {v0, p0, p1, p2}, Lcom/a/a/b;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public static a(Lcom/a/a/b;)V
    .registers 2

    sget-object v0, Lcom/a/a/a;->g:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0, v1, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a;->c()V

    const/4 v0, 0x1

    invoke-static {v0, p0, v1}, Lcom/a/a/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .registers 6

    invoke-static {}, Lcom/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, " "

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a;->c()V

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/a/a/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_32
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    invoke-static {}, Lcom/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/a/a/e;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a;->c()V

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/a/a/e;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/a/a/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_4f
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    sget-boolean v0, Lcom/a/a/a;->c:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/a/a/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_6e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6e
    if-eqz p2, :cond_73

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_73
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_7c} :catch_7d

    goto :goto_4

    :catch_7d
    move-exception v0

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, " "

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a;->c()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/a/a/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 5

    invoke-static {}, Lcom/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, " "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a;->c()V

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/a/a/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_2e
    return-void
.end method

.method public static a(Ljava/lang/String;[B)V
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_8

    move v0, v1

    :goto_4
    invoke-static {p0, p1, v1, v0}, Lcom/a/a/a;->a(Ljava/lang/String;[BII)V

    return-void

    :cond_8
    array-length v0, p1

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;[BII)V
    .registers 9

    const/4 v4, 0x0

    invoke-static {}, Lcom/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p1, :cond_37

    const-string v0, " null byte[]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    :goto_13
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a;->c()V

    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/a/a/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_36
    return-void

    :cond_37
    const-string v0, " ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, p2

    :goto_3d
    add-int v2, p2, p3

    if-lt v0, v2, :cond_53

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x4

    if-le p3, v0, :cond_13

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_13

    :cond_53
    if-eq v0, p2, :cond_5a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5a
    new-instance v2, Ljava/lang/Byte;

    aget-byte v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/a/a/a;->b:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/a/a/a;->b()V

    :cond_7
    sget-boolean v0, Lcom/a/a/a;->a:Z

    return v0
.end method

.method private static b(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x63

    if-le p0, v0, :cond_9

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const/16 v0, 0x9

    if-le p0, v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static declared-synchronized b()V
    .registers 3

    const-class v1, Lcom/a/a/a;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/a/a/a;->b:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_25

    if-eqz v0, :cond_9

    :cond_7
    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    const/4 v0, 0x1

    :try_start_a
    sput-boolean v0, Lcom/a/a/a;->b:Z

    sget-boolean v0, Lcom/a/a/a;->a:Z

    sput-boolean v0, Lcom/a/a/a;->c:Z
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_25

    :try_start_10
    new-instance v0, Lcom/a/a/d;

    invoke-direct {v0}, Lcom/a/a/d;-><init>()V

    invoke-static {v0}, Lcom/a/a/a;->a(Lcom/a/a/b;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/a/a/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    sput-boolean v0, Lcom/a/a/a;->a:Z
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_22} :catch_23

    goto :goto_7

    :catch_23
    move-exception v0

    goto :goto_7

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "error "

    invoke-static {v0, p0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a;->c()V

    const/4 v0, 0x4

    invoke-static {v0, p0, v1}, Lcom/a/a/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .registers 6

    invoke-static {}, Lcom/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, " 0x"

    invoke-static {p1, p2}, Lcom/a/a/e;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a;->c()V

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/a/a/e;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/a/a/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_32
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {}, Lcom/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "error "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a;->c()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/a/a/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_24
    return-void
.end method

.method private static c()V
    .registers 1

    sget-boolean v0, Lcom/a/a/a;->f:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/a/a/a;->c:Z

    if-nez v0, :cond_8

    :cond_8
    return-void
.end method
