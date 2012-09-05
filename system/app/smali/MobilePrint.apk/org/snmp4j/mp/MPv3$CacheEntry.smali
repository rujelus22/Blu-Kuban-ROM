.class public Lorg/snmp4j/mp/MPv3$CacheEntry;
.super Lorg/snmp4j/mp/StateReference;
.source "MPv3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/mp/MPv3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CacheEntry"
.end annotation


# instance fields
.field contextEngineID:[B

.field contextName:[B

.field errorCode:I

.field msgID:I

.field secEngineID:[B

.field secLevel:I

.field secModel:Lorg/snmp4j/security/SecurityModel;

.field secName:[B

.field secStateReference:Lorg/snmp4j/security/SecurityStateReference;

.field transactionID:J


# direct methods
.method public constructor <init>(IJ[BLorg/snmp4j/security/SecurityModel;[BI[B[BLorg/snmp4j/security/SecurityStateReference;I)V
    .registers 12
    .parameter "msgID"
    .parameter "reqID"
    .parameter "secEngineID"
    .parameter "secModel"
    .parameter "secName"
    .parameter "secLevel"
    .parameter "contextEngineID"
    .parameter "contextName"
    .parameter "secStateReference"
    .parameter "errorCode"

    .prologue
    .line 393
    invoke-direct {p0}, Lorg/snmp4j/mp/StateReference;-><init>()V

    .line 394
    iput p1, p0, Lorg/snmp4j/mp/MPv3$CacheEntry;->msgID:I

    .line 395
    iput-wide p2, p0, Lorg/snmp4j/mp/MPv3$CacheEntry;->transactionID:J

    .line 396
    iput-object p4, p0, Lorg/snmp4j/mp/MPv3$CacheEntry;->secEngineID:[B

    .line 397
    iput-object p5, p0, Lorg/snmp4j/mp/MPv3$CacheEntry;->secModel:Lorg/snmp4j/security/SecurityModel;

    .line 398
    iput-object p6, p0, Lorg/snmp4j/mp/MPv3$CacheEntry;->secName:[B

    .line 399
    iput p7, p0, Lorg/snmp4j/mp/MPv3$CacheEntry;->secLevel:I

    .line 400
    iput-object p8, p0, Lorg/snmp4j/mp/MPv3$CacheEntry;->contextEngineID:[B

    .line 401
    iput-object p9, p0, Lorg/snmp4j/mp/MPv3$CacheEntry;->contextName:[B

    .line 402
    iput-object p10, p0, Lorg/snmp4j/mp/MPv3$CacheEntry;->secStateReference:Lorg/snmp4j/security/SecurityStateReference;

    .line 403
    iput p11, p0, Lorg/snmp4j/mp/MPv3$CacheEntry;->errorCode:I

    .line 404
    return-void
.end method
