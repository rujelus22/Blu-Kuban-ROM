.class Lorg/apache/commons/logging/LogFactory$Logger;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/logging/Log;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/logging/LogFactory$Logger;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/logging/LogFactory$Logger;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFatalEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method
