.class Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PacketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private packetListener:Lorg/jivesoftware/smack/PacketListener;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    const/4 v0, 0x0

    .line 678
    if-nez p1, :cond_4

    .line 687
    .end local p1
    :cond_3
    :goto_3
    return v0

    .line 681
    .restart local p1
    :cond_4
    instance-of v1, p1, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;

    if-eqz v1, :cond_13

    .line 682
    check-cast p1, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;

    .end local p1
    iget-object v0, p1, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 684
    .restart local p1
    :cond_13
    instance-of v1, p1, Lorg/jivesoftware/smack/PacketListener;

    if-eqz v1, :cond_3

    .line 685
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V
    .registers 3
    .parameter "packet"

    .prologue
    .line 691
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 692
    :cond_c
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketListener;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 694
    :cond_11
    return-void
.end method
