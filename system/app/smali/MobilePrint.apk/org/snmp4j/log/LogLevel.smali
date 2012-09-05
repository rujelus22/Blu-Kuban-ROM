.class public Lorg/snmp4j/log/LogLevel;
.super Ljava/lang/Object;
.source "LogLevel.java"


# static fields
.field public static final ALL:Lorg/snmp4j/log/LogLevel; = null

.field public static final DEBUG:Lorg/snmp4j/log/LogLevel; = null

.field public static final ERROR:Lorg/snmp4j/log/LogLevel; = null

.field public static final FATAL:Lorg/snmp4j/log/LogLevel; = null

.field public static final INFO:Lorg/snmp4j/log/LogLevel; = null

.field public static final LEVEL_ALL:I = 0x2

.field public static final LEVEL_DEBUG:I = 0x4

.field public static final LEVEL_ERROR:I = 0x7

.field public static final LEVEL_FATAL:I = 0x8

.field public static final LEVEL_INFO:I = 0x5

.field public static final LEVEL_NONE:I = 0x0

.field public static final LEVEL_OFF:I = 0x1

.field private static final LEVEL_STRINGS:[Ljava/lang/String; = null

.field public static final LEVEL_TRACE:I = 0x3

.field public static final LEVEL_WARN:I = 0x6

.field public static final NONE:Lorg/snmp4j/log/LogLevel;

.field public static final OFF:Lorg/snmp4j/log/LogLevel;

.field public static final TRACE:Lorg/snmp4j/log/LogLevel;

.field public static final WARN:Lorg/snmp4j/log/LogLevel;


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v3

    const-string v1, "OFF"

    aput-object v1, v0, v4

    const-string v1, "ALL"

    aput-object v1, v0, v5

    const-string v1, "TRACE"

    aput-object v1, v0, v6

    const-string v1, "DEBUG"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WARN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FATAL"

    aput-object v2, v0, v1

    sput-object v0, Lorg/snmp4j/log/LogLevel;->LEVEL_STRINGS:[Ljava/lang/String;

    .line 40
    new-instance v0, Lorg/snmp4j/log/LogLevel;

    invoke-direct {v0, v3}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    sput-object v0, Lorg/snmp4j/log/LogLevel;->NONE:Lorg/snmp4j/log/LogLevel;

    .line 41
    new-instance v0, Lorg/snmp4j/log/LogLevel;

    invoke-direct {v0, v4}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    sput-object v0, Lorg/snmp4j/log/LogLevel;->OFF:Lorg/snmp4j/log/LogLevel;

    .line 42
    new-instance v0, Lorg/snmp4j/log/LogLevel;

    invoke-direct {v0, v5}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    sput-object v0, Lorg/snmp4j/log/LogLevel;->ALL:Lorg/snmp4j/log/LogLevel;

    .line 43
    new-instance v0, Lorg/snmp4j/log/LogLevel;

    invoke-direct {v0, v6}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    sput-object v0, Lorg/snmp4j/log/LogLevel;->TRACE:Lorg/snmp4j/log/LogLevel;

    .line 44
    new-instance v0, Lorg/snmp4j/log/LogLevel;

    invoke-direct {v0, v7}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    sput-object v0, Lorg/snmp4j/log/LogLevel;->DEBUG:Lorg/snmp4j/log/LogLevel;

    .line 45
    new-instance v0, Lorg/snmp4j/log/LogLevel;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    sput-object v0, Lorg/snmp4j/log/LogLevel;->INFO:Lorg/snmp4j/log/LogLevel;

    .line 46
    new-instance v0, Lorg/snmp4j/log/LogLevel;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    sput-object v0, Lorg/snmp4j/log/LogLevel;->WARN:Lorg/snmp4j/log/LogLevel;

    .line 47
    new-instance v0, Lorg/snmp4j/log/LogLevel;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    sput-object v0, Lorg/snmp4j/log/LogLevel;->ERROR:Lorg/snmp4j/log/LogLevel;

    .line 48
    new-instance v0, Lorg/snmp4j/log/LogLevel;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    sput-object v0, Lorg/snmp4j/log/LogLevel;->FATAL:Lorg/snmp4j/log/LogLevel;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter "level"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-ltz p1, :cond_9

    const/16 v0, 0x8

    if-le p1, v0, :cond_22

    .line 54
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown log level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_22
    iput p1, p0, Lorg/snmp4j/log/LogLevel;->level:I

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "levelString"

    .prologue
    .line 60
    invoke-static {p1}, Lorg/snmp4j/log/LogLevel;->levelFromString(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    .line 61
    return-void
.end method

.method public static levelFromString(Ljava/lang/String;)I
    .registers 4
    .parameter "levelString"

    .prologue
    .line 73
    const/4 v1, -0x1

    .line 74
    .local v1, ind:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v2, Lorg/snmp4j/log/LogLevel;->LEVEL_STRINGS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_12

    .line 75
    sget-object v2, Lorg/snmp4j/log/LogLevel;->LEVEL_STRINGS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 76
    move v1, v0

    .line 80
    :cond_12
    return v1

    .line 74
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static toLevel(Ljava/lang/String;)Lorg/snmp4j/log/LogLevel;
    .registers 3
    .parameter "levelString"

    .prologue
    .line 93
    new-instance v0, Lorg/snmp4j/log/LogLevel;

    invoke-static {p0}, Lorg/snmp4j/log/LogLevel;->levelFromString(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lorg/snmp4j/log/LogLevel;->level:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 101
    sget-object v0, Lorg/snmp4j/log/LogLevel;->LEVEL_STRINGS:[Ljava/lang/String;

    iget v1, p0, Lorg/snmp4j/log/LogLevel;->level:I

    aget-object v0, v0, v1

    return-object v0
.end method
