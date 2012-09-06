.class public Lcom/twitter/android/util/SynchronizedDateFormat;
.super Ljava/text/SimpleDateFormat;


# static fields
.field private static final serialVersionUID:J = 0x5bc5dc3dfe38218aL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/text/SimpleDateFormat;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
