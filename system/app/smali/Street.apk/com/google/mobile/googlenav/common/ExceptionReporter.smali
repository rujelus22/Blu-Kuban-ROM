.class public Lcom/google/mobile/googlenav/common/ExceptionReporter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mobile/googlenav/common/ExceptionReporter$ExceptionSaver;
    }
.end annotation


# static fields
.field private static exceptionSaver:Lcom/google/mobile/googlenav/common/ExceptionReporter$ExceptionSaver;

.field private static final lastThrowableLock:Ljava/lang/Object;

.field private static lastThrowableString:Ljava/lang/String;

.field private static printer:Lcom/google/mobile/googlenav/common/UserEventReporter$Printer;

.field public static throwableCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/google/mobile/googlenav/common/ExceptionReporter;->throwableCount:I

    new-instance v0, Lcom/google/mobile/googlenav/common/UserEventReporter$StandardErrorPrinter;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/UserEventReporter$StandardErrorPrinter;-><init>()V

    sput-object v0, Lcom/google/mobile/googlenav/common/ExceptionReporter;->printer:Lcom/google/mobile/googlenav/common/UserEventReporter$Printer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/mobile/googlenav/common/ExceptionReporter;->lastThrowableLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/mobile/googlenav/common/ExceptionReporter;->lastThrowableString:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addThrowableString(Ljava/lang/String;)V
    .registers 5

    const/16 v3, 0x12c

    if-nez p0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/google/mobile/googlenav/common/ExceptionReporter;->lastThrowableLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    sget-object v1, Lcom/google/mobile/googlenav/common/ExceptionReporter;->lastThrowableString:Ljava/lang/String;

    if-nez v1, :cond_26

    sput-object p0, Lcom/google/mobile/googlenav/common/ExceptionReporter;->lastThrowableString:Ljava/lang/String;

    :goto_e
    sget-object v1, Lcom/google/mobile/googlenav/common/ExceptionReporter;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_21

    sget-object v1, Lcom/google/mobile/googlenav/common/ExceptionReporter;->lastThrowableString:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/mobile/googlenav/common/ExceptionReporter;->lastThrowableString:Ljava/lang/String;

    :cond_21
    monitor-exit v0

    goto :goto_4

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v1

    :cond_26
    :try_start_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/mobile/googlenav/common/ExceptionReporter;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/mobile/googlenav/common/ExceptionReporter;->lastThrowableString:Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_23

    goto :goto_e
.end method

.method public static logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/mobile/googlenav/common/ExceptionReporter;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

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

    invoke-static {v0}, Lcom/google/mobile/googlenav/common/ExceptionReporter;->addThrowableString(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/mobile/googlenav/common/ExceptionReporter;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 3

    return-void
.end method

.method public static setExceptionSaver(Lcom/google/mobile/googlenav/common/ExceptionReporter$ExceptionSaver;)V
    .registers 1

    sput-object p0, Lcom/google/mobile/googlenav/common/ExceptionReporter;->exceptionSaver:Lcom/google/mobile/googlenav/common/ExceptionReporter$ExceptionSaver;

    return-void
.end method
