.class public Ljava/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler; = null

.field private static final GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler; = null

.field public static final GLOBAL_LOGGER_NAME:Ljava/lang/String; = "global"

.field public static final global:Ljava/util/logging/Logger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final androidTag:Ljava/lang/String;

.field final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private volatile dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

.field private filter:Ljava/util/logging/Filter;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private isNamed:Z

.field volatile levelIntVal:I

.field volatile levelObjVal:Ljava/util/logging/Level;

.field private volatile name:Ljava/lang/String;

.field private notifyParentHandlers:Z

.field parent:Ljava/util/logging/Logger;

.field private volatile resourceBundle:Ljava/util/ResourceBundle;

.field private volatile resourceBundleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 76
    new-instance v0, Ljava/util/logging/Logger$1;

    invoke-direct {v0}, Ljava/util/logging/Logger$1;-><init>()V

    sput-object v0, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    .line 99
    new-instance v0, Ljava/util/logging/Logger;

    const-string v1, "global"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/logging/Handler;

    sput-object v0, Ljava/util/logging/Logger;->EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "resourceBundleName"

    .prologue
    const/4 v1, 0x1

    .line 252
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 145
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    .line 148
    iput-boolean v1, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    .line 154
    iput-boolean v1, p0, Ljava/util/logging/Logger;->isNamed:Z

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->children:Ljava/util/List;

    .line 166
    sget-object v0, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    iput-object v0, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    .line 253
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    .line 254
    invoke-direct {p0, p2}, Ljava/util/logging/Logger;->initResourceBundle(Ljava/lang/String;)V

    .line 255
    invoke-static {p1}, Ldalvik/system/DalvikLogging;->loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->androidTag:Ljava/lang/String;

    .line 256
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 257
    return-void
.end method

.method static synthetic access$000(Ljava/util/logging/Logger;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/logging/Logger;Ljava/util/logging/LogRecord;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public static getAnonymousLogger()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/logging/Logger;->getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 4
    .parameter "resourceBundleName"

    .prologue
    .line 320
    new-instance v1, Ljava/util/logging/Logger;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v1, result:Ljava/util/logging/Logger;
    const/4 v2, 0x0

    iput-boolean v2, v1, Ljava/util/logging/Logger;->isNamed:Z

    .line 322
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 323
    .local v0, logManager:Ljava/util/logging/LogManager;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    .line 324
    return-object v1
.end method

.method public static getGlobal()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 394
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 3
    .parameter "name"

    .prologue
    .line 362
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/logging/LogManager;->getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 4
    .parameter "name"
    .parameter "resourceBundleName"

    .prologue
    .line 382
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/logging/LogManager;->getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 384
    .local v0, result:Ljava/util/logging/Logger;
    invoke-direct {v0, p1}, Ljava/util/logging/Logger;->initResourceBundle(Ljava/lang/String;)V

    .line 385
    return-object v0
.end method

.method private declared-synchronized initResourceBundle(Ljava/lang/String;)V
    .registers 6
    .parameter "resourceBundleName"

    .prologue
    .line 334
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    .line 336
    .local v0, current:Ljava/lang/String;
    if-eqz v0, :cond_39

    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_36

    move-result v1

    if-eqz v1, :cond_d

    .line 348
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    .line 340
    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource bundle name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is inconsistent with the existing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_36

    .line 334
    .end local v0           #current:Ljava/lang/String;
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1

    .line 344
    .restart local v0       #current:Ljava/lang/String;
    :cond_39
    if-eqz p1, :cond_b

    .line 345
    :try_start_3b
    invoke-static {p1}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    .line 346
    iput-object p1, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_36

    goto :goto_b
.end method

.method private internalIsLoggable(Ljava/util/logging/Level;)Z
    .registers 5
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    .line 633
    iget v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 634
    .local v0, effectiveLevel:I
    sget-object v2, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_c

    .line 638
    :cond_b
    :goto_b
    return v1

    :cond_c
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_b

    const/4 v1, 0x1

    goto :goto_b
.end method

.method static loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 5
    .parameter "resourceBundleName"

    .prologue
    .line 270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 271
    .local v0, cl:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_14

    .line 273
    :try_start_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_11
    .catch Ljava/util/MissingResourceException; {:try_start_a .. :try_end_11} :catch_13

    move-result-object v1

    .line 282
    :goto_12
    return-object v1

    .line 274
    :catch_13
    move-exception v1

    .line 279
    :cond_14
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_24

    .line 282
    :try_start_1a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_21
    .catch Ljava/util/MissingResourceException; {:try_start_1a .. :try_end_21} :catch_23

    move-result-object v1

    goto :goto_12

    .line 283
    :catch_23
    move-exception v1

    .line 287
    :cond_24
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load the specified resource bundle \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private setResourceBundle(Ljava/util/logging/LogRecord;)V
    .registers 5
    .parameter "record"

    .prologue
    .line 662
    move-object v0, p0

    .local v0, p:Ljava/util/logging/Logger;
    :goto_1
    if-eqz v0, :cond_f

    .line 663
    iget-object v1, v0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    .line 664
    .local v1, resourceBundleName:Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 665
    iget-object v2, v0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, v2}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 666
    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 670
    .end local v1           #resourceBundleName:Ljava/lang/String;
    :cond_f
    return-void

    .line 662
    .restart local v1       #resourceBundleName:Ljava/lang/String;
    :cond_10
    iget-object v0, v0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    goto :goto_1
.end method


# virtual methods
.method public addHandler(Ljava/util/logging/Handler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 405
    if-nez p1, :cond_a

    .line 406
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_a
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_15

    .line 410
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 412
    :cond_15
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 414
    return-void
.end method

.method public config(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 876
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "sourceClass"
    .parameter "sourceMethod"

    .prologue
    .line 683
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 693
    :goto_8
    return-void

    .line 687
    :cond_9
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "ENTRY"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 688
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 691
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 692
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_8
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "param"

    .prologue
    .line 709
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 720
    :goto_8
    return-void

    .line 713
    :cond_9
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "ENTRY {0}"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 714
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 717
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 718
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 719
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_8
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "params"

    .prologue
    .line 737
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v4}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 756
    :goto_8
    return-void

    .line 741
    :cond_9
    const-string v1, "ENTRY"

    .line 742
    .local v1, msg:Ljava/lang/String;
    if-eqz p3, :cond_2e

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ENTRY"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 744
    .local v2, msgBuffer:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    array-length v4, p3

    if-ge v0, v4, :cond_2a

    .line 745
    const-string v4, " {"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 747
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 749
    .end local v0           #i:I
    .end local v2           #msgBuffer:Ljava/lang/StringBuilder;
    :cond_2e
    new-instance v3, Ljava/util/logging/LogRecord;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v3, v4, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 750
    .local v3, record:Ljava/util/logging/LogRecord;
    iget-object v4, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v3, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v3, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v3, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 754
    invoke-direct {p0, v3}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 755
    invoke-virtual {p0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_8
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "sourceClass"
    .parameter "sourceMethod"

    .prologue
    .line 769
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 779
    :goto_8
    return-void

    .line 773
    :cond_9
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "RETURN"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 774
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 777
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 778
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_8
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "result"

    .prologue
    .line 794
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 805
    :goto_8
    return-void

    .line 798
    :cond_9
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "RETURN {0}"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 799
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 802
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 803
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 804
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_8
.end method

.method public fine(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 887
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 898
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 909
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .registers 3

    .prologue
    .line 468
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    sget-object v1, Ljava/util/logging/Logger;->EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Handler;

    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 601
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/util/logging/Logger;
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getUseParentHandlers()Z
    .registers 2

    .prologue
    .line 548
    iget-boolean v0, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 865
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .registers 3
    .parameter "l"

    .prologue
    .line 652
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 5
    .parameter "logLevel"
    .parameter "msg"

    .prologue
    .line 922
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 926
    :goto_6
    return-void

    .line 925
    :cond_7
    iget-object v0, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    iget-object v1, p0, Ljava/util/logging/Logger;->androidTag:Ljava/lang/String;

    invoke-interface {v0, p0, v1, p1, p2}, Ldalvik/system/DalvikLogHandler;->publish(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "logLevel"
    .parameter "msg"
    .parameter "param"

    .prologue
    .line 940
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 949
    :goto_6
    return-void

    .line 944
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 945
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 946
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 947
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 948
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "logLevel"
    .parameter "msg"
    .parameter "thrown"

    .prologue
    .line 987
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 996
    :goto_6
    return-void

    .line 991
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 992
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 994
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 995
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .parameter "logLevel"
    .parameter "msg"
    .parameter "params"

    .prologue
    .line 963
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 972
    :goto_6
    return-void

    .line 967
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 968
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 970
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 971
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .registers 12
    .parameter "record"

    .prologue
    .line 1014
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v9

    invoke-direct {p0, v9}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1042
    :cond_a
    return-void

    .line 1019
    :cond_b
    iget-object v3, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 1020
    .local v3, f:Ljava/util/logging/Filter;
    if-eqz v3, :cond_15

    invoke-interface {v3, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1027
    :cond_15
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .line 1028
    .local v0, allHandlers:[Ljava/util/logging/Handler;
    move-object v1, v0

    .local v1, arr$:[Ljava/util/logging/Handler;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1c
    if-ge v5, v6, :cond_26

    aget-object v2, v1, v5

    .line 1029
    .local v2, element:Ljava/util/logging/Handler;
    invoke-virtual {v2, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 1028
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 1032
    .end local v2           #element:Ljava/util/logging/Handler;
    :cond_26
    move-object v7, p0

    .line 1033
    .local v7, temp:Ljava/util/logging/Logger;
    iget-object v8, v7, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 1034
    .local v8, theParent:Ljava/util/logging/Logger;
    :goto_29
    if-eqz v8, :cond_a

    invoke-virtual {v7}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1035
    invoke-virtual {v8}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v4

    .line 1036
    .local v4, ha:[Ljava/util/logging/Handler;
    move-object v1, v4

    array-length v6, v1

    const/4 v5, 0x0

    :goto_38
    if-ge v5, v6, :cond_42

    aget-object v2, v1, v5

    .line 1037
    .restart local v2       #element:Ljava/util/logging/Handler;
    invoke-virtual {v2, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 1036
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 1039
    .end local v2           #element:Ljava/util/logging/Handler;
    :cond_42
    move-object v7, v8

    .line 1040
    iget-object v8, v7, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 1041
    goto :goto_29
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "msg"

    .prologue
    .line 1059
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1069
    :goto_6
    return-void

    .line 1063
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1064
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1067
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1068
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "msg"
    .parameter "param"

    .prologue
    .line 1088
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1099
    :goto_6
    return-void

    .line 1092
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1093
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1096
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1097
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1098
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "msg"
    .parameter "thrown"

    .prologue
    .line 1148
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1159
    :goto_6
    return-void

    .line 1152
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1153
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1157
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1158
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "msg"
    .parameter "params"

    .prologue
    .line 1118
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1129
    :goto_6
    return-void

    .line 1122
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1123
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1127
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1128
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "bundleName"
    .parameter "msg"

    .prologue
    .line 1180
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1197
    :goto_6
    return-void

    .line 1184
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1185
    .local v0, record:Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_18

    .line 1187
    :try_start_e
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_15
    .catch Ljava/util/MissingResourceException; {:try_start_e .. :try_end_15} :catch_27

    .line 1191
    :goto_15
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1193
    :cond_18
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6

    .line 1188
    :catch_27
    move-exception v1

    goto :goto_15
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "bundleName"
    .parameter "msg"
    .parameter "param"

    .prologue
    .line 1220
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1238
    :goto_6
    return-void

    .line 1224
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1225
    .local v0, record:Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_18

    .line 1227
    :try_start_e
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_15
    .catch Ljava/util/MissingResourceException; {:try_start_e .. :try_end_15} :catch_30

    .line 1231
    :goto_15
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1233
    :cond_18
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1236
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1237
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6

    .line 1228
    :catch_30
    move-exception v1

    goto :goto_15
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "bundleName"
    .parameter "msg"
    .parameter "thrown"

    .prologue
    .line 1302
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1320
    :goto_6
    return-void

    .line 1306
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1307
    .local v0, record:Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_18

    .line 1309
    :try_start_e
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_15
    .catch Ljava/util/MissingResourceException; {:try_start_e .. :try_end_15} :catch_2a

    .line 1313
    :goto_15
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1315
    :cond_18
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1319
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6

    .line 1310
    :catch_2a
    move-exception v1

    goto :goto_15
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "bundleName"
    .parameter "msg"
    .parameter "params"

    .prologue
    .line 1261
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1279
    :goto_6
    return-void

    .line 1265
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1266
    .local v0, record:Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_18

    .line 1268
    :try_start_e
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_15
    .catch Ljava/util/MissingResourceException; {:try_start_e .. :try_end_15} :catch_2a

    .line 1272
    :goto_15
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1274
    :cond_18
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1278
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6

    .line 1269
    :catch_2a
    move-exception v1

    goto :goto_15
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 480
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_b

    .line 481
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 483
    :cond_b
    if-nez p1, :cond_e

    .line 488
    :goto_d
    return-void

    .line 486
    :cond_e
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    goto :goto_d
.end method

.method reset()V
    .registers 4

    .prologue
    .line 1323
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    .line 1324
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iput v2, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 1326
    iget-object v2, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Handler;

    .line 1328
    .local v0, handler:Ljava/util/logging/Handler;
    :try_start_1d
    iget-object v2, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1329
    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_29

    goto :goto_11

    .line 1331
    :catch_29
    move-exception v2

    goto :goto_11

    .line 1335
    .end local v0           #handler:Ljava/util/logging/Handler;
    :cond_2b
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 1336
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .registers 3
    .parameter "newFilter"

    .prologue
    .line 507
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_b

    .line 508
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 510
    :cond_b
    iput-object p1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 511
    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .registers 4
    .parameter "newLevel"

    .prologue
    .line 532
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 533
    .local v0, logManager:Ljava/util/logging/LogManager;
    iget-boolean v1, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v1, :cond_b

    .line 534
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 536
    :cond_b
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    .line 537
    return-void
.end method

.method setManager(Ljava/util/logging/LogManager;)V
    .registers 15
    .parameter "manager"

    .prologue
    .line 421
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 422
    .local v10, levelProperty:Ljava/lang/String;
    if-eqz v10, :cond_22

    .line 424
    :try_start_1b
    invoke-static {v10}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v11

    invoke-virtual {p1, p0, v11}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_22} :catch_47

    .line 430
    :cond_22
    :goto_22
    iget-object v11, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4c

    const-string v4, "handlers"

    .line 431
    .local v4, handlersPropertyName:Ljava/lang/String;
    :goto_2c
    invoke-virtual {p1, v4}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, handlersProperty:Ljava/lang/String;
    if-eqz v3, :cond_98

    .line 433
    const-string v11, ",|\\s"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3a
    if-ge v5, v8, :cond_98

    aget-object v2, v0, v5

    .line 434
    .local v2, handlerName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_62

    .line 433
    :goto_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 425
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #handlerName:Ljava/lang/String;
    .end local v3           #handlersProperty:Ljava/lang/String;
    .end local v4           #handlersPropertyName:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v8           #len$:I
    :catch_47
    move-exception v7

    .line 426
    .local v7, invalidLevel:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_22

    .line 430
    .end local v7           #invalidLevel:Ljava/lang/IllegalArgumentException;
    :cond_4c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".handlers"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2c

    .line 440
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #handlerName:Ljava/lang/String;
    .restart local v3       #handlersProperty:Ljava/lang/String;
    .restart local v4       #handlersPropertyName:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v8       #len$:I
    :cond_62
    :try_start_62
    invoke-static {v2}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Handler;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_68} :catch_8e

    .line 447
    .local v1, handler:Ljava/util/logging/Handler;
    :try_start_68
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 448
    .local v9, level:Ljava/lang/String;
    if-eqz v9, :cond_88

    .line 449
    invoke-static {v9}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_88} :catch_93

    .line 455
    .end local v9           #level:Ljava/lang/String;
    :cond_88
    :goto_88
    iget-object v11, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 441
    .end local v1           #handler:Ljava/util/logging/Handler;
    :catch_8e
    move-exception v6

    .line 442
    .local v6, invalidHandlerName:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    .line 451
    .end local v6           #invalidHandlerName:Ljava/lang/Exception;
    .restart local v1       #handler:Ljava/util/logging/Handler;
    :catch_93
    move-exception v7

    .line 452
    .local v7, invalidLevel:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_88

    .line 459
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #handler:Ljava/util/logging/Handler;
    .end local v2           #handlerName:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #invalidLevel:Ljava/lang/Exception;
    .end local v8           #len$:I
    :cond_98
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 460
    return-void
.end method

.method public setParent(Ljava/util/logging/Logger;)V
    .registers 5
    .parameter "parent"

    .prologue
    .line 585
    if-nez p1, :cond_a

    .line 586
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "parent == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :cond_a
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 591
    .local v0, logManager:Ljava/util/logging/LogManager;
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 592
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    .line 593
    return-void
.end method

.method public setUseParentHandlers(Z)V
    .registers 3
    .parameter "notifyParentHandlers"

    .prologue
    .line 560
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_b

    .line 561
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 563
    :cond_b
    iput-boolean p1, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    .line 564
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 565
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 843
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 844
    return-void
.end method

.method public throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "thrown"

    .prologue
    .line 822
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 833
    :goto_8
    return-void

    .line 826
    :cond_9
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "THROW"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 827
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 831
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 832
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_8
.end method

.method updateDalvikLogHandler()V
    .registers 9

    .prologue
    .line 186
    sget-object v4, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    .line 188
    .local v4, newLogHandler:Ldalvik/system/DalvikLogHandler;
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 190
    .local v5, parent:Ljava/util/logging/Logger;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/logging/Logger;

    if-eq v6, v7, :cond_11

    .line 226
    :cond_c
    :goto_c
    iget-object v6, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    if-ne v4, v6, :cond_42

    .line 235
    :cond_10
    return-void

    .line 197
    :cond_11
    if-nez v5, :cond_33

    .line 199
    iget-object v6, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 200
    .local v1, h:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/logging/Handler;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Handler;

    .line 202
    .local v0, firstHandler:Ljava/util/logging/Handler;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_c

    instance-of v6, v0, Ldalvik/system/DalvikLogHandler;

    if-eqz v6, :cond_c

    move-object v4, v0

    .line 211
    check-cast v4, Ldalvik/system/DalvikLogHandler;

    goto :goto_c

    .line 214
    .end local v0           #firstHandler:Ljava/util/logging/Handler;
    .end local v1           #h:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/logging/Handler;>;"
    :cond_33
    iget-object v6, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    if-eqz v6, :cond_c

    .line 223
    iget-object v4, v5, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    goto :goto_c

    .line 230
    :cond_42
    iput-object v4, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    .line 232
    iget-object v6, p0, Ljava/util/logging/Logger;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Logger;

    .line 233
    .local v3, logger:Ljava/util/logging/Logger;
    invoke-virtual {v3}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    goto :goto_4a
.end method

.method public warning(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 854
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 855
    return-void
.end method
