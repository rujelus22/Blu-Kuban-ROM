.class public Lcom/sprint/dsa/data/Alert;
.super Ljava/lang/Object;
.source "Alert.java"


# instance fields
.field m_action:Ljava/lang/String;

.field m_campaign:Ljava/lang/String;

.field m_description:Ljava/lang/String;

.field m_expiration:J

.field m_extra:Ljava/lang/String;

.field m_header:Ljava/lang/String;

.field m_icon:Landroid/graphics/Bitmap;

.field m_id:J

.field m_imageUrl:Ljava/lang/String;

.field m_packId:Ljava/lang/String;

.field m_sid:J

.field m_title:Ljava/lang/String;

.field m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .parameter "id"
    .parameter "sid"
    .parameter "campaign"
    .parameter "header"
    .parameter "title"
    .parameter "desc"
    .parameter "exp"
    .parameter "action"
    .parameter "uri"
    .parameter "extra"
    .parameter "icon"
    .parameter "imgUrl"
    .parameter "packId"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/sprint/dsa/data/Alert;->m_id:J

    .line 28
    iput-wide p3, p0, Lcom/sprint/dsa/data/Alert;->m_sid:J

    .line 29
    iput-object p5, p0, Lcom/sprint/dsa/data/Alert;->m_campaign:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/sprint/dsa/data/Alert;->m_header:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/sprint/dsa/data/Alert;->m_title:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/sprint/dsa/data/Alert;->m_description:Ljava/lang/String;

    .line 33
    iput-object p11, p0, Lcom/sprint/dsa/data/Alert;->m_action:Ljava/lang/String;

    .line 34
    iput-object p12, p0, Lcom/sprint/dsa/data/Alert;->m_uri:Ljava/lang/String;

    .line 35
    iput-object p13, p0, Lcom/sprint/dsa/data/Alert;->m_extra:Ljava/lang/String;

    .line 36
    iput-object p14, p0, Lcom/sprint/dsa/data/Alert;->m_icon:Landroid/graphics/Bitmap;

    .line 37
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sprint/dsa/data/Alert;->m_imageUrl:Ljava/lang/String;

    .line 38
    iput-wide p9, p0, Lcom/sprint/dsa/data/Alert;->m_expiration:J

    .line 39
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sprint/dsa/data/Alert;->m_packId:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sprint/dsa/data/Alert;->m_action:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sprint/dsa/data/Alert;->m_campaign:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sprint/dsa/data/Alert;->m_description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sprint/dsa/data/Alert;->m_extra:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sprint/dsa/data/Alert;->m_header:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sprint/dsa/data/Alert;->m_icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()I
    .registers 3

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/sprint/dsa/data/Alert;->m_id:J

    long-to-int v0, v0

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sprint/dsa/data/Alert;->m_imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sprint/dsa/data/Alert;->m_packId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sprint/dsa/data/Alert;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprint/dsa/data/Alert;->m_uri:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 88
    iget-wide v1, p0, Lcom/sprint/dsa/data/Alert;->m_expiration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    .line 90
    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sprint/dsa/data/Alert;->m_expiration:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sprint/dsa/data/Alert;->m_icon:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alert ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sprint/dsa/data/Alert;->m_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/data/Alert;->m_campaign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
