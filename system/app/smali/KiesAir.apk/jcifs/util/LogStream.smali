.class public Ljcifs/util/LogStream;
.super Ljava/io/PrintStream;
.source "LogStream.java"


# static fields
.field private static inst:Ljcifs/util/LogStream;

.field public static level:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput v0, Ljcifs/util/LogStream;->level:I

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 2
    .parameter "stream"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    return-void
.end method

.method public static getInstance()Ljcifs/util/LogStream;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Ljcifs/util/LogStream;->inst:Ljcifs/util/LogStream;

    if-nez v0, :cond_9

    .line 53
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Ljcifs/util/LogStream;->setInstance(Ljava/io/PrintStream;)V

    .line 55
    :cond_9
    sget-object v0, Ljcifs/util/LogStream;->inst:Ljcifs/util/LogStream;

    return-object v0
.end method

.method public static setInstance(Ljava/io/PrintStream;)V
    .registers 2
    .parameter "stream"

    .prologue
    .line 49
    new-instance v0, Ljcifs/util/LogStream;

    invoke-direct {v0, p0}, Ljcifs/util/LogStream;-><init>(Ljava/io/PrintStream;)V

    sput-object v0, Ljcifs/util/LogStream;->inst:Ljcifs/util/LogStream;

    .line 50
    return-void
.end method

.method public static setLevel(I)V
    .registers 1
    .parameter "level"

    .prologue
    .line 42
    sput p0, Ljcifs/util/LogStream;->level:I

    .line 43
    return-void
.end method
