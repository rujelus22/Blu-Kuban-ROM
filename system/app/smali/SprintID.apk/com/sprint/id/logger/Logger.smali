.class public Lcom/sprint/id/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static MIN_LEVEL:I

.field private static TAG:Ljava/lang/String;

.field private static initialized:Z


# instance fields
.field tagSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/id/logger/Logger;->initialized:Z

    .line 14
    const/4 v0, -0x1

    sput v0, Lcom/sprint/id/logger/Logger;->MIN_LEVEL:I

    .line 10
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "tagSuffix"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p1, :cond_d

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tag suffix cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_d
    iput-object p1, p0, Lcom/sprint/id/logger/Logger;->tagSuffix:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private genTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sprint/id/logger/Logger;->tagSuffix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 100
    sget-object v0, Lcom/sprint/id/logger/Logger;->TAG:Ljava/lang/String;

    .line 102
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sprint/id/logger/Logger;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/id/logger/Logger;->tagSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/sprint/id/logger/Logger;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/sprint/id/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/id/logger/Logger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "tagSuffix"

    .prologue
    .line 26
    new-instance v0, Lcom/sprint/id/logger/Logger;

    invoke-direct {v0, p0}, Lcom/sprint/id/logger/Logger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    sget-boolean v0, Lcom/sprint/id/logger/Logger;->initialized:Z

    if-nez v0, :cond_c

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to get the TAG without initializing the Logger."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_c
    sget-object v0, Lcom/sprint/id/logger/Logger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 5
    .parameter "ctx"

    .prologue
    const/16 v3, 0x17

    .line 34
    sget-boolean v0, Lcom/sprint/id/logger/Logger;->initialized:Z

    if-nez v0, :cond_32

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/id/logger/Logger;->TAG:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/sprint/id/logger/Logger;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_33

    sget-object v0, Lcom/sprint/id/logger/Logger;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    sput-object v0, Lcom/sprint/id/logger/Logger;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/id/logger/Logger;->initialized:Z

    .line 39
    :cond_32
    return-void

    .line 36
    :cond_33
    sget-object v0, Lcom/sprint/id/logger/Logger;->TAG:Ljava/lang/String;

    goto :goto_2d
.end method

.method public static initialize(Landroid/content/Context;I)V
    .registers 3
    .parameter "ctx"
    .parameter "minLogLevel"

    .prologue
    .line 42
    sget-boolean v0, Lcom/sprint/id/logger/Logger;->initialized:Z

    if-nez v0, :cond_9

    .line 43
    sput p1, Lcom/sprint/id/logger/Logger;->MIN_LEVEL:I

    .line 44
    invoke-static {p0}, Lcom/sprint/id/logger/Logger;->initialize(Landroid/content/Context;)V

    .line 46
    :cond_9
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 59
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sprint/id/logger/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 60
    invoke-direct {p0}, Lcom/sprint/id/logger/Logger;->genTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_e
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 64
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sprint/id/logger/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 65
    invoke-direct {p0}, Lcom/sprint/id/logger/Logger;->genTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :cond_e
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 89
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sprint/id/logger/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 90
    invoke-direct {p0}, Lcom/sprint/id/logger/Logger;->genTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_e
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 94
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sprint/id/logger/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 95
    invoke-direct {p0}, Lcom/sprint/id/logger/Logger;->genTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_e
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 69
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sprint/id/logger/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 70
    invoke-direct {p0}, Lcom/sprint/id/logger/Logger;->genTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_e
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 74
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sprint/id/logger/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 75
    invoke-direct {p0}, Lcom/sprint/id/logger/Logger;->genTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_e
    return-void
.end method

.method public isLoggable(I)Z
    .registers 4
    .parameter "level"

    .prologue
    .line 107
    sget-boolean v0, Lcom/sprint/id/logger/Logger;->initialized:Z

    if-nez v0, :cond_c

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to log without initializing the Logger."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_c
    sget v0, Lcom/sprint/id/logger/Logger;->MIN_LEVEL:I

    if-ge p1, v0, :cond_12

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_11
    return v0

    :cond_12
    sget-object v0, Lcom/sprint/id/logger/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_11
.end method

.method public v(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 49
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sprint/id/logger/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 50
    invoke-direct {p0}, Lcom/sprint/id/logger/Logger;->genTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_e
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 54
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sprint/id/logger/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 55
    invoke-direct {p0}, Lcom/sprint/id/logger/Logger;->genTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_e
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 79
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sprint/id/logger/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 80
    invoke-direct {p0}, Lcom/sprint/id/logger/Logger;->genTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_e
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 84
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sprint/id/logger/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 85
    invoke-direct {p0}, Lcom/sprint/id/logger/Logger;->genTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :cond_e
    return-void
.end method
