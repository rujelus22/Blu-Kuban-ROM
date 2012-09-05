.class public Lorg/columba/ristretto/pop3/UidListEntry;
.super Ljava/lang/Object;
.source "UidListEntry.java"


# instance fields
.field private index:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "index"
    .parameter "uid"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lorg/columba/ristretto/pop3/UidListEntry;->index:I

    .line 59
    iput-object p2, p0, Lorg/columba/ristretto/pop3/UidListEntry;->uid:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lorg/columba/ristretto/pop3/UidListEntry;->index:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/columba/ristretto/pop3/UidListEntry;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 75
    iput p1, p0, Lorg/columba/ristretto/pop3/UidListEntry;->index:I

    .line 76
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 91
    iput-object p1, p0, Lorg/columba/ristretto/pop3/UidListEntry;->uid:Ljava/lang/String;

    .line 92
    return-void
.end method
