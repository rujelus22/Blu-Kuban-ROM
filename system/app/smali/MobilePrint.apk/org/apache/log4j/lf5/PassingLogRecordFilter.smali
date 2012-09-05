.class public Lorg/apache/log4j/lf5/PassingLogRecordFilter;
.super Ljava/lang/Object;
.source "PassingLogRecordFilter.java"

# interfaces
.implements Lorg/apache/log4j/lf5/LogRecordFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public passes(Lorg/apache/log4j/lf5/LogRecord;)Z
    .registers 3
    .parameter "record"

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 60
    return-void
.end method
