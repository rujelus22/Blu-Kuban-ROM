.class public Lcom/vlingo/client/lmtt/LMTTContactItem;
.super Lcom/vlingo/client/lmtt/LMTTItem;
.source "LMTTContactItem.java"


# instance fields
.field public companyName:Ljava/lang/String;

.field public firstName:Ljava/lang/String;

.field public lastName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V
    .registers 4
    .parameter "uid"
    .parameter "changeType"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/vlingo/client/lmtt/LMTTContactItem;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V
    .registers 6
    .parameter "firstName"
    .parameter "lastName"
    .parameter "uid"
    .parameter "changeType"

    .prologue
    .line 25
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_CONTACT:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-direct {p0, v0, p3, p4}, Lcom/vlingo/client/lmtt/LMTTItem;-><init>(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .line 27
    if-nez p1, :cond_9

    const-string p1, ""

    .line 28
    :cond_9
    if-nez p2, :cond_d

    const-string p2, ""

    .line 30
    :cond_d
    iput-object p1, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->firstName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->lastName:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->companyName:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getDelXML(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 57
    const-string v0, " t=\"d\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    return-void
.end method

.method public getInsXML(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 62
    const-string v0, "><fn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->firstName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 64
    const-string v0, "</fn><ln>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->lastName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 66
    const-string v0, "</ln><c>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->companyName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 68
    const-string v0, "</c>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    return-void
.end method

.method public getUpXML(Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "sb"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/vlingo/client/lmtt/LMTTContactItem;->getInsXML(Ljava/lang/StringBuilder;)V

    .line 74
    return-void
.end method

.method public getXML()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->firstName:Ljava/lang/String;

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->lastName:Ljava/lang/String;

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->companyName:Ljava/lang/String;

    if-nez v2, :cond_14

    .line 42
    const-string v2, ""

    .line 53
    :goto_13
    return-object v2

    .line 44
    :cond_14
    const-string v2, "<e uid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    iget v2, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 46
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v1, strBldr:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->changeType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-virtual {v2, p0, v1}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->getChangeXML(Lcom/vlingo/client/lmtt/LMTTItem;Ljava/lang/StringBuilder;)V

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v2, "</e>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_13
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, hash:I
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->firstName:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 84
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->firstName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_c
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 87
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->lastName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_17
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LMTTContact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->companyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " changeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTContactItem;->changeType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
