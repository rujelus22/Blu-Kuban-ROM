.class public Lcom/vlingo/client/userlogging/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private contentID:Ljava/lang/String;

.field private guttID:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private occured:Ljava/util/Date;

.field private payload:Ljava/lang/String;

.field private final subtype:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/userlogging/events/Event;->type:Ljava/lang/String;

    .line 41
    const-string v2, "subtype"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/userlogging/events/Event;->subtype:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-mm-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, df:Ljava/text/SimpleDateFormat;
    :try_start_22
    const-string v2, "subtype"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/userlogging/events/Event;->occured:Ljava/util/Date;
    :try_end_32
    .catch Ljava/text/ParseException; {:try_start_22 .. :try_end_32} :catch_63

    .line 48
    :goto_32
    const-string v2, "guttID"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/userlogging/events/Event;->guttID:Ljava/lang/String;

    .line 49
    const-string v2, "contentID"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/userlogging/events/Event;->contentID:Ljava/lang/String;

    .line 50
    const-string v2, "location"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/userlogging/events/Event;->location:Ljava/lang/String;

    .line 51
    const-string v2, "payload"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/userlogging/events/Event;->payload:Ljava/lang/String;

    .line 52
    return-void

    .line 45
    :catch_63
    move-exception v1

    .line 46
    .local v1, pe:Ljava/text/ParseException;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/vlingo/client/userlogging/events/Event;->occured:Ljava/util/Date;

    goto :goto_32
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/vlingo/client/userlogging/events/Event;->type:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/vlingo/client/userlogging/events/Event;->subtype:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/userlogging/events/Event;->occured:Ljava/util/Date;

    .line 36
    invoke-virtual {p0}, Lcom/vlingo/client/userlogging/events/Event;->setLocation()V

    .line 37
    return-void
.end method


# virtual methods
.method public generateEventXMLFooter(Ljava/lang/StringBuffer;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 96
    const-string v0, "</ReqEvent>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    return-void
.end method

.method public generateEventXMLHeader(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "sb"

    .prologue
    .line 69
    const-string v1, "<ReqEvent EventType=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    iget-object v1, p0, Lcom/vlingo/client/userlogging/events/Event;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "\" EventSubtype=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-object v1, p0, Lcom/vlingo/client/userlogging/events/Event;->subtype:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "\" Occurred=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-mm-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, df:Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/vlingo/client/userlogging/events/Event;->occured:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    iget-object v1, p0, Lcom/vlingo/client/userlogging/events/Event;->guttID:Ljava/lang/String;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/vlingo/client/userlogging/events/Event;->guttID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_49

    .line 78
    const-string v1, " GUttId=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget-object v1, p0, Lcom/vlingo/client/userlogging/events/Event;->guttID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_49
    iget-object v1, p0, Lcom/vlingo/client/userlogging/events/Event;->contentID:Ljava/lang/String;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/vlingo/client/userlogging/events/Event;->contentID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_64

    .line 83
    const-string v1, " ContentId=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v1, p0, Lcom/vlingo/client/userlogging/events/Event;->contentID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_64
    iget-object v1, p0, Lcom/vlingo/client/userlogging/events/Event;->location:Ljava/lang/String;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/vlingo/client/userlogging/events/Event;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7f

    .line 88
    const-string v1, " Location=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget-object v1, p0, Lcom/vlingo/client/userlogging/events/Event;->location:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :cond_7f
    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    return-void
.end method

.method public generatePayloadXML(Ljava/lang/StringBuffer;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/vlingo/client/userlogging/events/Event;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    return-void
.end method

.method public generatePayloadXMLFooter(Ljava/lang/StringBuffer;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 104
    const-string v0, "</Payload>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    return-void
.end method

.method public generatePayloadXMLHeader(Ljava/lang/StringBuffer;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 100
    const-string v0, "<Payload>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    return-void
.end method

.method public generateXML()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lcom/vlingo/client/userlogging/events/Event;->generateEventXMLHeader(Ljava/lang/StringBuffer;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/vlingo/client/userlogging/events/Event;->generatePayloadXMLHeader(Ljava/lang/StringBuffer;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/vlingo/client/userlogging/events/Event;->generatePayloadXML(Ljava/lang/StringBuffer;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/vlingo/client/userlogging/events/Event;->generatePayloadXMLFooter(Ljava/lang/StringBuffer;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/vlingo/client/userlogging/events/Event;->generateEventXMLFooter(Ljava/lang/StringBuffer;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 126
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "type"

    iget-object v3, p0, Lcom/vlingo/client/userlogging/events/Event;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "subtype"

    iget-object v3, p0, Lcom/vlingo/client/userlogging/events/Event;->subtype:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-mm-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, df:Ljava/text/SimpleDateFormat;
    const-string v2, "occued"

    iget-object v3, p0, Lcom/vlingo/client/userlogging/events/Event;->occured:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "guttID"

    iget-object v3, p0, Lcom/vlingo/client/userlogging/events/Event;->guttID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "contentID"

    iget-object v3, p0, Lcom/vlingo/client/userlogging/events/Event;->contentID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "location"

    iget-object v3, p0, Lcom/vlingo/client/userlogging/events/Event;->location:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v2, "payload"

    iget-object v3, p0, Lcom/vlingo/client/userlogging/events/Event;->payload:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-object v1
.end method

.method public getPayload()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vlingo/client/userlogging/events/Event;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public setLocation()V
    .registers 2

    .prologue
    .line 63
    const-string v0, "pref.location.awareness"

    invoke-static {v0}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 64
    invoke-static {}, Lcom/vlingo/client/core/location/LocationUtils;->getCellTowerInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/userlogging/events/Event;->location:Ljava/lang/String;

    .line 66
    :cond_e
    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .registers 2
    .parameter "payload"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vlingo/client/userlogging/events/Event;->payload:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/userlogging/events/Event;->generateXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
