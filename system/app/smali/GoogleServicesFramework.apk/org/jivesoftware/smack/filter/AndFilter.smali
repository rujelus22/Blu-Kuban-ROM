.class public Lorg/jivesoftware/smack/filter/AndFilter;
.super Ljava/lang/Object;
.source "AndFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# instance fields
.field private filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/filter/AndFilter;->size:I

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smack/filter/PacketFilter;

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/AndFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .registers 5
    .parameter "filter1"
    .parameter "filter2"

    .prologue
    const/4 v0, 0x2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p1, :cond_8

    if-nez p2, :cond_10

    .line 60
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_10
    iput v0, p0, Lorg/jivesoftware/smack/filter/AndFilter;->size:I

    .line 63
    new-array v0, v0, [Lorg/jivesoftware/smack/filter/PacketFilter;

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/AndFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/AndFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 65
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/AndFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 66
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .registers 4
    .parameter "packet"

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lorg/jivesoftware/smack/filter/AndFilter;->size:I

    if-ge v0, v1, :cond_14

    .line 93
    iget-object v1, p0, Lorg/jivesoftware/smack/filter/AndFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 94
    const/4 v1, 0x0

    .line 97
    :goto_10
    return v1

    .line 92
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_14
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/AndFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
