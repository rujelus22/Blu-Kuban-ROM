.class public Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;
.super Ljava/io/PrintStream;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stream"
.end annotation


# static fields
.field private static indent:I


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 37
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->prefix:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public endIndent()V
    .registers 2

    .prologue
    .line 54
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    .line 55
    return-void
.end method

.method public newIndent()V
    .registers 2

    .prologue
    .line 50
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    .line 51
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 43
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    if-ge v0, v1, :cond_d

    .line 44
    const-string v1, "  "

    invoke-super {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_d
    invoke-super {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public print([B)V
    .registers 9
    .parameter "data"

    .prologue
    .line 64
    const/16 v1, 0x10

    const-string v2, " "

    const-string v3, ""

    const/4 v5, 0x0

    array-length v6, p1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V

    .line 65
    return-void
.end method

.method public print([BII)V
    .registers 11
    .parameter "data"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 68
    const/16 v1, 0x10

    const-string v2, " "

    const-string v3, ""

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V

    .line 69
    return-void
.end method

.method public printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V
    .registers 12
    .parameter "perLine"
    .parameter "prefix"
    .parameter "delimiter"
    .parameter "data"

    .prologue
    .line 72
    const/4 v5, 0x0

    array-length v6, p4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V

    .line 73
    return-void
.end method

.method public printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V
    .registers 11
    .parameter "perLine"
    .parameter "prefix"
    .parameter "delimiter"
    .parameter "data"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v1, line:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, p6, :cond_2e

    .line 79
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int v2, v0, p5

    aget-byte v2, p4, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v2, v0, 0x1

    rem-int/2addr v2, p1

    if-nez v2, :cond_2b

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #line:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .restart local v1       #line:Ljava/lang/StringBuilder;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 88
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print(Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    return-void
.end method
