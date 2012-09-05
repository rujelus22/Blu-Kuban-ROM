.class public Lorg/columba/ristretto/imap/CopyInfo;
.super Ljava/lang/Object;
.source "CopyInfo.java"


# instance fields
.field private destUids:Lorg/columba/ristretto/imap/SequenceSet;

.field private srcUids:Lorg/columba/ristretto/imap/SequenceSet;

.field private uidValidity:J


# direct methods
.method public constructor <init>(JLorg/columba/ristretto/imap/SequenceSet;Lorg/columba/ristretto/imap/SequenceSet;)V
    .registers 5
    .parameter "uidValidity"
    .parameter "srcUids"
    .parameter "destUids"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lorg/columba/ristretto/imap/CopyInfo;->uidValidity:J

    .line 61
    iput-object p3, p0, Lorg/columba/ristretto/imap/CopyInfo;->srcUids:Lorg/columba/ristretto/imap/SequenceSet;

    .line 62
    iput-object p4, p0, Lorg/columba/ristretto/imap/CopyInfo;->destUids:Lorg/columba/ristretto/imap/SequenceSet;

    .line 63
    return-void
.end method


# virtual methods
.method public getDestUids()Lorg/columba/ristretto/imap/SequenceSet;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/columba/ristretto/imap/CopyInfo;->destUids:Lorg/columba/ristretto/imap/SequenceSet;

    return-object v0
.end method

.method public getSrcUids()Lorg/columba/ristretto/imap/SequenceSet;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/columba/ristretto/imap/CopyInfo;->srcUids:Lorg/columba/ristretto/imap/SequenceSet;

    return-object v0
.end method

.method public getUidValidity()J
    .registers 3

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/columba/ristretto/imap/CopyInfo;->uidValidity:J

    return-wide v0
.end method

.method public setDestUids(Lorg/columba/ristretto/imap/SequenceSet;)V
    .registers 2
    .parameter "destUids"

    .prologue
    .line 74
    iput-object p1, p0, Lorg/columba/ristretto/imap/CopyInfo;->destUids:Lorg/columba/ristretto/imap/SequenceSet;

    .line 75
    return-void
.end method

.method public setSrcUids(Lorg/columba/ristretto/imap/SequenceSet;)V
    .registers 2
    .parameter "srcUids"

    .prologue
    .line 86
    iput-object p1, p0, Lorg/columba/ristretto/imap/CopyInfo;->srcUids:Lorg/columba/ristretto/imap/SequenceSet;

    .line 87
    return-void
.end method

.method public setUidValidity(J)V
    .registers 3
    .parameter "uidValidity"

    .prologue
    .line 98
    iput-wide p1, p0, Lorg/columba/ristretto/imap/CopyInfo;->uidValidity:J

    .line 99
    return-void
.end method
