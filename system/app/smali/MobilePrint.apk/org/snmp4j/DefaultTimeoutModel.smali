.class public Lorg/snmp4j/DefaultTimeoutModel;
.super Ljava/lang/Object;
.source "DefaultTimeoutModel.java"

# interfaces
.implements Lorg/snmp4j/TimeoutModel;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getRequestTimeout(IJ)J
    .registers 6
    .parameter "totalNumberOfRetries"
    .parameter "targetTimeout"

    .prologue
    .line 49
    add-int/lit8 v0, p1, 0x1

    int-to-long v0, v0

    mul-long/2addr v0, p2

    return-wide v0
.end method

.method public getRetryTimeout(IIJ)J
    .registers 5
    .parameter "retryCount"
    .parameter "totalNumberOfRetries"
    .parameter "targetTimeout"

    .prologue
    .line 45
    return-wide p3
.end method
