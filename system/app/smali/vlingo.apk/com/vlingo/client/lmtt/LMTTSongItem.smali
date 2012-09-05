.class public Lcom/vlingo/client/lmtt/LMTTSongItem;
.super Lcom/vlingo/client/lmtt/LMTTItem;
.source "LMTTSongItem.java"


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public folder:Ljava/lang/String;

.field public genre:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V
    .registers 13
    .parameter "uid"
    .parameter "changeType"

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v6, -0x1

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    move v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/vlingo/client/lmtt/LMTTSongItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V
    .registers 11
    .parameter "title"
    .parameter "artist"
    .parameter "composer"
    .parameter "album"
    .parameter "genre"
    .parameter "year"
    .parameter "folder"
    .parameter "uid"
    .parameter "changeType"

    .prologue
    .line 22
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_SONG:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-direct {p0, v0, p8, p9}, Lcom/vlingo/client/lmtt/LMTTItem;-><init>(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .line 24
    if-nez p1, :cond_9

    .line 25
    const-string p1, ""

    .line 28
    :cond_9
    iput-object p1, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->title:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->artist:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->composer:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->album:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->genre:Ljava/lang/String;

    .line 33
    if-lez p6, :cond_1b

    .line 34
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->year:Ljava/lang/String;

    .line 36
    :cond_1b
    iput-object p7, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->folder:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getDelXML(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 50
    const-string v0, "<SD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, " uid=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    return-void
.end method

.method public getInsXML(Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter "sb"

    .prologue
    const/16 v1, 0x22

    .line 63
    const-string v0, "<SU"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, " uid=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v0, " ttl=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->title:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 69
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->artist:Ljava/lang/String;

    if-eqz v0, :cond_38

    .line 71
    const-string v0, " art=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->artist:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 73
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_38
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->composer:Ljava/lang/String;

    if-eqz v0, :cond_49

    .line 76
    const-string v0, " cmp=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->composer:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    :cond_49
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->album:Ljava/lang/String;

    if-eqz v0, :cond_5a

    .line 81
    const-string v0, " alb=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->album:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    :cond_5a
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->genre:Ljava/lang/String;

    if-eqz v0, :cond_6b

    .line 86
    const-string v0, " gen=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->genre:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    :cond_6b
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->year:Ljava/lang/String;

    if-eqz v0, :cond_7c

    .line 91
    const-string v0, " yr=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->year:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :cond_7c
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->folder:Ljava/lang/String;

    if-eqz v0, :cond_8d

    .line 96
    const-string v0, " fld=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->folder:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :cond_8d
    const-string v0, "/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    return-void
.end method

.method public getUpXML(Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "sb"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/vlingo/client/lmtt/LMTTSongItem;->getInsXML(Ljava/lang/StringBuilder;)V

    .line 59
    return-void
.end method

.method public getXML()Ljava/lang/String;
    .registers 3

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->changeType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-virtual {v1, p0, v0}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->getChangeXML(Lcom/vlingo/client/lmtt/LMTTItem;Ljava/lang/StringBuilder;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->composer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->album:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->genre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->year:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LMTTSongItem | uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | changeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->changeType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTSongItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
