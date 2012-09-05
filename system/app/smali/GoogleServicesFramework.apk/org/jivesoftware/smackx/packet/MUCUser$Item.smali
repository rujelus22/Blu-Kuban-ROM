.class public Lorg/jivesoftware/smackx/packet/MUCUser$Item;
.super Ljava/lang/Object;
.source "MUCUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/MUCUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private actor:Ljava/lang/String;

.field private affiliation:Ljava/lang/String;

.field private jid:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private role:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "affiliation"
    .parameter "role"

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->affiliation:Ljava/lang/String;

    .line 405
    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->role:Ljava/lang/String;

    .line 406
    return-void
.end method


# virtual methods
.method public getActor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->actor:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->actor:Ljava/lang/String;

    goto :goto_6
.end method

.method public getAffiliation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->affiliation:Ljava/lang/String;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->reason:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->reason:Ljava/lang/String;

    goto :goto_6
.end method

.method public getRole()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->role:Ljava/lang/String;

    return-object v0
.end method

.method public setActor(Ljava/lang/String;)V
    .registers 2
    .parameter "actor"

    .prologue
    .line 477
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->actor:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setJid(Ljava/lang/String;)V
    .registers 2
    .parameter "jid"

    .prologue
    .line 497
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->jid:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .registers 2
    .parameter "nick"

    .prologue
    .line 507
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->nick:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 487
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->reason:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .registers 4

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 512
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "<item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getAffiliation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 514
    const-string v1, " affiliation=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getAffiliation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    :cond_23
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getJid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 517
    const-string v1, " jid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    :cond_3c
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getNick()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 520
    const-string v1, " nick=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    :cond_55
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getRole()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 523
    const-string v1, " role=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    :cond_6e
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getReason()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_84

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getActor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_84

    .line 526
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    :goto_7f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 529
    :cond_84
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a2

    .line 531
    const-string v1, "<reason>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</reason>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    :cond_a2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getActor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_bb

    .line 534
    const-string v1, "<actor jid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getActor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    :cond_bb
    const-string v1, "</item>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7f
.end method
