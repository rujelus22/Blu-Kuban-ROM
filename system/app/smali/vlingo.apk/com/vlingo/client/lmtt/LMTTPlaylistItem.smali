.class public Lcom/vlingo/client/lmtt/LMTTPlaylistItem;
.super Lcom/vlingo/client/lmtt/LMTTItem;
.source "LMTTPlaylistItem.java"


# instance fields
.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V
    .registers 4
    .parameter "uid"
    .parameter "changeType"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;-><init>(Ljava/lang/String;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V
    .registers 5
    .parameter "title"
    .parameter "uid"
    .parameter "changeType"

    .prologue
    .line 15
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-direct {p0, v0, p2, p3}, Lcom/vlingo/client/lmtt/LMTTItem;-><init>(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .line 17
    if-nez p1, :cond_9

    .line 18
    const-string p1, ""

    .line 21
    :cond_9
    iput-object p1, p0, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;->title:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getDelXML(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 35
    const-string v0, "<PD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, " uid=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v0, p0, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    return-void
.end method

.method public getInsXML(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 44
    const-string v0, "<PU"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, " uid=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v0, p0, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v0, " ttl=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;->title:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 50
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    return-void
.end method

.method public getUpXML(Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "sb"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;->getInsXML(Ljava/lang/StringBuilder;)V

    .line 57
    return-void
.end method

.method public getXML()Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;->changeType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-virtual {v1, p0, v0}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->getChangeXML(Lcom/vlingo/client/lmtt/LMTTItem;Ljava/lang/StringBuilder;)V

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LMTTPlaylistItem | uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | changeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;->changeType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
