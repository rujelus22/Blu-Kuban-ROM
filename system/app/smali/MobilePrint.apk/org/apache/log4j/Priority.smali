.class public Lorg/apache/log4j/Priority;
.super Ljava/lang/Object;
.source "Priority.java"


# static fields
.field public static final ALL_INT:I = -0x80000000

.field public static final DEBUG:Lorg/apache/log4j/Priority; = null

.field public static final DEBUG_INT:I = 0x2710

.field public static final ERROR:Lorg/apache/log4j/Priority; = null

.field public static final ERROR_INT:I = 0x9c40

.field public static final FATAL:Lorg/apache/log4j/Priority; = null

.field public static final FATAL_INT:I = 0xc350

.field public static final INFO:Lorg/apache/log4j/Priority; = null

.field public static final INFO_INT:I = 0x4e20

.field public static final OFF_INT:I = 0x7fffffff

.field public static final WARN:Lorg/apache/log4j/Priority; = null

.field public static final WARN_INT:I = 0x7530


# instance fields
.field transient level:I

.field transient levelStr:Ljava/lang/String;

.field transient syslogEquivalent:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 44
    new-instance v0, Lorg/apache/log4j/Level;

    const v1, 0xc350

    const-string v2, "FATAL"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    .line 49
    new-instance v0, Lorg/apache/log4j/Level;

    const v1, 0x9c40

    const-string v2, "ERROR"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    .line 54
    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x7530

    const-string v2, "WARN"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Priority;->WARN:Lorg/apache/log4j/Priority;

    .line 59
    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x4e20

    const-string v2, "INFO"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Priority;->INFO:Lorg/apache/log4j/Priority;

    .line 64
    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x2710

    const-string v2, "DEBUG"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    .line 44
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x2710

    iput v0, p0, Lorg/apache/log4j/Priority;->level:I

    .line 72
    const-string v0, "DEBUG"

    iput-object v0, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    .line 73
    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/log4j/Priority;->syslogEquivalent:I

    .line 74
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;I)V
    .registers 4
    .parameter "level"
    .parameter "levelStr"
    .parameter "syslogEquivalent"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lorg/apache/log4j/Priority;->level:I

    .line 82
    iput-object p2, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    .line 83
    iput p3, p0, Lorg/apache/log4j/Priority;->syslogEquivalent:I

    .line 84
    return-void
.end method

.method public static getAllPossiblePriorities()[Lorg/apache/log4j/Priority;
    .registers 3

    .prologue
    .line 134
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/log4j/Priority;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/log4j/Priority;->INFO:Lorg/apache/log4j/Priority;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static toPriority(I)Lorg/apache/log4j/Priority;
    .registers 2
    .parameter "val"

    .prologue
    .line 172
    sget-object v0, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    invoke-static {p0, v0}, Lorg/apache/log4j/Priority;->toPriority(ILorg/apache/log4j/Priority;)Lorg/apache/log4j/Priority;

    move-result-object v0

    return-object v0
.end method

.method public static toPriority(ILorg/apache/log4j/Priority;)Lorg/apache/log4j/Priority;
    .registers 3
    .parameter "val"
    .parameter "defaultPriority"

    .prologue
    .line 181
    check-cast p1, Lorg/apache/log4j/Level;

    .end local p1
    invoke-static {p0, p1}, Lorg/apache/log4j/Level;->toLevel(ILorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toPriority(Ljava/lang/String;)Lorg/apache/log4j/Priority;
    .registers 2
    .parameter "sArg"

    .prologue
    .line 163
    invoke-static {p0}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;)Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toPriority(Ljava/lang/String;Lorg/apache/log4j/Priority;)Lorg/apache/log4j/Priority;
    .registers 3
    .parameter "sArg"
    .parameter "defaultPriority"

    .prologue
    .line 190
    check-cast p1, Lorg/apache/log4j/Level;

    .end local p1
    invoke-static {p0, p1}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 92
    instance-of v2, p1, Lorg/apache/log4j/Priority;

    if-eqz v2, :cond_f

    move-object v0, p1

    .line 93
    check-cast v0, Lorg/apache/log4j/Priority;

    .line 94
    .local v0, r:Lorg/apache/log4j/Priority;
    iget v2, p0, Lorg/apache/log4j/Priority;->level:I

    iget v3, v0, Lorg/apache/log4j/Priority;->level:I

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    .line 96
    .end local v0           #r:Lorg/apache/log4j/Priority;
    :cond_f
    return v1
.end method

.method public final getSyslogEquivalent()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lorg/apache/log4j/Priority;->syslogEquivalent:I

    return v0
.end method

.method public isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z
    .registers 4
    .parameter "r"

    .prologue
    .line 122
    iget v0, p0, Lorg/apache/log4j/Priority;->level:I

    iget v1, p1, Lorg/apache/log4j/Priority;->level:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final toInt()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lorg/apache/log4j/Priority;->level:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    return-object v0
.end method
