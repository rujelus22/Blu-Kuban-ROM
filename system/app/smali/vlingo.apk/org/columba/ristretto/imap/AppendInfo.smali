.class public Lorg/columba/ristretto/imap/AppendInfo;
.super Ljava/lang/Object;
.source "AppendInfo.java"


# instance fields
.field private uid:J

.field private uidValidity:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide v0, p0, Lorg/columba/ristretto/imap/AppendInfo;->uidValidity:J

    .line 64
    iput-wide v0, p0, Lorg/columba/ristretto/imap/AppendInfo;->uid:J

    .line 65
    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5
    .parameter "lUIDValidity"
    .parameter "lUID"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lorg/columba/ristretto/imap/AppendInfo;->uidValidity:J

    .line 56
    iput-wide p3, p0, Lorg/columba/ristretto/imap/AppendInfo;->uid:J

    .line 57
    return-void
.end method


# virtual methods
.method public getUid()J
    .registers 3

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/columba/ristretto/imap/AppendInfo;->uid:J

    return-wide v0
.end method

.method public getUidValidity()J
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/columba/ristretto/imap/AppendInfo;->uidValidity:J

    return-wide v0
.end method
