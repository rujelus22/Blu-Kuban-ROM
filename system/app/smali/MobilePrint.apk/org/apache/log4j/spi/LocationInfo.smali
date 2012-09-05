.class public Lorg/apache/log4j/spi/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NA:Ljava/lang/String; = "?"

.field static inVisualAge:Z = false

.field private static pw:Ljava/io/PrintWriter; = null

.field static final serialVersionUID:J = -0x1266441eb56e5a84L

.field private static sw:Ljava/io/StringWriter;


# instance fields
.field transient className:Ljava/lang/String;

.field transient fileName:Ljava/lang/String;

.field public fullInfo:Ljava/lang/String;

.field transient lineNumber:Ljava/lang/String;

.field transient methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    sput-object v1, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    .line 56
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v1, Lorg/apache/log4j/spi/LocationInfo;->pw:Ljava/io/PrintWriter;

    .line 68
    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    .line 71
    :try_start_13
    const-string v1, "com.ibm.uvm.tools.DebugSupport"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 72
    .local v0, dummy:Ljava/lang/Class;
    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    .line 73
    const-string v1, "Detected IBM VisualAge environment."

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_21} :catch_22

    .line 55
    :goto_21
    return-void

    .line 74
    :catch_22
    move-exception v1

    goto :goto_21
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 10
    .parameter "t"
    .parameter "fqnOfCallingClass"

    .prologue
    const/4 v6, -0x1

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-nez p1, :cond_7

    .line 146
    :cond_6
    :goto_6
    return-void

    .line 104
    :cond_7
    sget-object v4, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    monitor-enter v4

    .line 105
    :try_start_a
    sget-object v3, Lorg/apache/log4j/spi/LocationInfo;->pw:Ljava/io/PrintWriter;

    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 106
    sget-object v3, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, s:Ljava/lang/String;
    sget-object v3, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-virtual {v3}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 108
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_4e

    .line 119
    invoke-virtual {v2, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, ibegin:I
    if-eq v0, v6, :cond_6

    .line 124
    sget-object v3, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 125
    if-eq v0, v6, :cond_6

    .line 127
    sget v3, Lorg/apache/log4j/Layout;->LINE_SEP_LEN:I

    add-int/2addr v0, v3

    .line 130
    sget-object v3, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 131
    .local v1, iend:I
    if-eq v1, v6, :cond_6

    .line 136
    sget-boolean v3, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    if-nez v3, :cond_47

    .line 138
    const-string v3, "at "

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 139
    if-eq v0, v6, :cond_6

    .line 142
    add-int/lit8 v0, v0, 0x3

    .line 145
    :cond_47
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    goto :goto_6

    .line 108
    .end local v0           #ibegin:I
    .end local v1           #iend:I
    .end local v2           #s:Ljava/lang/String;
    :catchall_4e
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 154
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, "?"

    .line 184
    :goto_7
    return-object v2

    .line 155
    :cond_8
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 158
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 159
    .local v1, iend:I
    if-ne v1, v4, :cond_1d

    .line 160
    const-string v2, "?"

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    .line 184
    .end local v1           #iend:I
    :cond_1a
    :goto_1a
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_7

    .line 162
    .restart local v1       #iend:I
    :cond_1d
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, ibegin:I
    sget-boolean v2, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    if-eqz v2, :cond_34

    .line 175
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 178
    :cond_34
    if-ne v1, v4, :cond_3b

    .line 179
    const-string v2, "?"

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_1a

    .line 181
    :cond_3b
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_1a
.end method

.method public getFileName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 194
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, "?"

    .line 205
    :goto_6
    return-object v2

    .line 196
    :cond_7
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 197
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 198
    .local v1, iend:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    .line 199
    const-string v2, "?"

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    .line 205
    .end local v1           #iend:I
    :cond_1a
    :goto_1a
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    goto :goto_6

    .line 201
    .restart local v1       #iend:I
    :cond_1d
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x28

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 202
    .local v0, ibegin:I
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    goto :goto_1a
.end method

.method public getLineNumber()Ljava/lang/String;
    .registers 6

    .prologue
    .line 215
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, "?"

    .line 225
    :goto_6
    return-object v2

    .line 217
    :cond_7
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    if-nez v2, :cond_24

    .line 218
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 219
    .local v1, iend:I
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x3a

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 220
    .local v0, ibegin:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_27

    .line 221
    const-string v2, "?"

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    .line 225
    .end local v0           #ibegin:I
    .end local v1           #iend:I
    :cond_24
    :goto_24
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    goto :goto_6

    .line 223
    .restart local v0       #ibegin:I
    .restart local v1       #iend:I
    :cond_27
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    goto :goto_24
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 233
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, "?"

    .line 242
    :goto_6
    return-object v2

    .line 234
    :cond_7
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 235
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 236
    .local v1, iend:I
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 237
    .local v0, ibegin:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_25

    .line 238
    const-string v2, "?"

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    .line 242
    .end local v0           #ibegin:I
    .end local v1           #iend:I
    :cond_22
    :goto_22
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    goto :goto_6

    .line 240
    .restart local v0       #ibegin:I
    .restart local v1       #iend:I
    :cond_25
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    goto :goto_22
.end method
