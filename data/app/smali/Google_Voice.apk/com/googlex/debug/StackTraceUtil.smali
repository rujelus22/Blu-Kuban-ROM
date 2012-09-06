.class public Lcom/googlex/debug/StackTraceUtil;
.super Ljava/lang/Object;


# static fields
.field private static err:Ljava/io/PrintStream;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCallStack(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    const-class v1, Lcom/googlex/debug/StackTraceUtil;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v3, Lcom/googlex/debug/StackTraceUtil;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v0, Lcom/googlex/debug/StackTraceUtil;->err:Ljava/io/PrintStream;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-object v2

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
