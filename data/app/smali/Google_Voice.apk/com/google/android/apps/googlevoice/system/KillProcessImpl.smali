.class public Lcom/google/android/apps/googlevoice/system/KillProcessImpl;
.super Ljava/lang/Object;
.source "KillProcessImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/KillProcess;


# static fields
.field private static final LOG:Lcom/google/android/apps/common/log/GLog; = null

.field private static final PS_EXPECTED_COLUMN_COUNT:I = 0x9

.field private static final PS_OUTPUT_HEADER:Ljava/lang/String; = "USER     PID   PPID  VSIZE  RSS     WCHAN    PC         NAME"


# instance fields
.field private final commands:Lcom/google/android/apps/googlevoice/system/SystemCommands;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/google/android/apps/googlevoice/system/KillProcessImpl;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/system/KillProcessImpl;->LOG:Lcom/google/android/apps/common/log/GLog;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/googlevoice/system/SystemCommands;)V
    .registers 2
    .parameter "commands"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/KillProcessImpl;->commands:Lcom/google/android/apps/googlevoice/system/SystemCommands;

    .line 42
    return-void
.end method


# virtual methods
.method public killProcessesByName(Ljava/lang/String;)I
    .registers 16
    .parameter "processName"

    .prologue
    const/4 v9, 0x1

    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, killedCount:I
    const/4 v6, 0x0

    .line 49
    .local v6, matchedFirstLine:Z
    :try_start_3
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/system/KillProcessImpl;->commands:Lcom/google/android/apps/googlevoice/system/SystemCommands;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "ps"

    aput-object v13, v11, v12

    invoke-interface {v10, v11}, Lcom/google/android/apps/googlevoice/system/SystemCommands;->executeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, result:Ljava/lang/String;
    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_19
    if-ge v2, v4, :cond_a9

    aget-object v5, v0, v2

    .line 51
    .local v5, line:Ljava/lang/String;
    if-nez v6, :cond_4a

    .line 52
    const-string v10, "USER     PID   PPID  VSIZE  RSS     WCHAN    PC         NAME"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_46

    .line 53
    sget-object v10, Lcom/google/android/apps/googlevoice/system/KillProcessImpl;->LOG:Lcom/google/android/apps/common/log/GLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ps output line \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' did not match expected format"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/google/android/apps/common/log/GLog;->i(Ljava/lang/String;)V

    .line 73
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #line:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :goto_45
    return v9

    .line 56
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #line:Ljava/lang/String;
    .restart local v8       #result:Ljava/lang/String;
    :cond_46
    const/4 v6, 0x1

    .line 50
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 58
    :cond_4a
    const-string v10, " +"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, parts:[Ljava/lang/String;
    array-length v10, v7

    const/16 v11, 0x9

    if-eq v10, v11, :cond_88

    .line 60
    sget-object v10, Lcom/google/android/apps/googlevoice/system/KillProcessImpl;->LOG:Lcom/google/android/apps/common/log/GLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ps output line \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' has "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " columns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/google/android/apps/common/log/GLog;->i(Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7e} :catch_7f

    goto :goto_45

    .line 69
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #parts:[Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :catch_7f
    move-exception v1

    .line 70
    .local v1, e:Ljava/io/IOException;
    sget-object v10, Lcom/google/android/apps/googlevoice/system/KillProcessImpl;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v11, "Couldn\'t kill processes"

    invoke-interface {v10, v11, v1}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45

    .line 63
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #line:Ljava/lang/String;
    .restart local v7       #parts:[Ljava/lang/String;
    .restart local v8       #result:Ljava/lang/String;
    :cond_88
    :try_start_88
    array-length v10, v7

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v7, v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 64
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/system/KillProcessImpl;->commands:Lcom/google/android/apps/googlevoice/system/SystemCommands;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "kill"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-object v13, v7, v13

    aput-object v13, v11, v12

    invoke-interface {v10, v11}, Lcom/google/android/apps/googlevoice/system/SystemCommands;->executeCommand([Ljava/lang/String;)Ljava/lang/String;
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_a6} :catch_7f

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .end local v5           #line:Ljava/lang/String;
    .end local v7           #parts:[Ljava/lang/String;
    :cond_a9
    move v9, v3

    .line 73
    goto :goto_45
.end method
