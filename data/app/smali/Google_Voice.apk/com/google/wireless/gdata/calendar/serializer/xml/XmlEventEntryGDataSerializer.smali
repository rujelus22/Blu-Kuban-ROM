.class public Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;
.super Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;
.source "XmlEventEntryGDataSerializer.java"


# static fields
.field public static final NAMESPACE_GCAL:Ljava/lang/String; = "gCal"

.field public static final NAMESPACE_GCAL_URI:Ljava/lang/String; = "http://schemas.google.com/gCal/2005"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .registers 3
    .parameter "factory"
    .parameter "entry"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V

    .line 35
    return-void
.end method

.method private static serializeCommentsUri(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter "serializer"
    .parameter "commentsUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    if-nez p1, :cond_3

    .line 434
    :goto_2
    return-void

    .line 431
    :cond_3
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "feedLink"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    const/4 v0, 0x0

    const-string v1, "href"

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "feedLink"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2
.end method

.method private static serializeEventStatus(Lorg/xmlpull/v1/XmlSerializer;B)V
    .registers 5
    .parameter "serializer"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    packed-switch p1, :pswitch_data_24

    .line 134
    const-string v0, "http://schemas.google.com/g/2005#event.tentative"

    .line 137
    .local v0, statusString:Ljava/lang/String;
    :goto_5
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "eventStatus"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "eventStatus"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    return-void

    .line 123
    .end local v0           #statusString:Ljava/lang/String;
    :pswitch_1a
    const-string v0, "http://schemas.google.com/g/2005#event.tentative"

    .line 124
    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_5

    .line 126
    .end local v0           #statusString:Ljava/lang/String;
    :pswitch_1d
    const-string v0, "http://schemas.google.com/g/2005#event.canceled"

    .line 127
    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_5

    .line 129
    .end local v0           #statusString:Ljava/lang/String;
    :pswitch_20
    const-string v0, "http://schemas.google.com/g/2005#event.confirmed"

    .line 130
    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_5

    .line 121
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private static serializeExtendedProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "serializer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 440
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "extendedProperty"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    const-string v0, "name"

    invoke-interface {p0, v2, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    const-string v0, "value"

    invoke-interface {p0, v2, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "extendedProperty"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    return-void
.end method

.method private static serializeGuestsCanInviteOthers(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 5
    .parameter "serializer"
    .parameter "guestsCanInviteOthers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "guestsCanInviteOthers"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    const/4 v1, 0x0

    const-string v2, "value"

    if-eqz p1, :cond_19

    const-string v0, "true"

    :goto_e
    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "guestsCanInviteOthers"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    return-void

    .line 232
    :cond_19
    const-string v0, "false"

    goto :goto_e
.end method

.method private static serializeGuestsCanModify(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 5
    .parameter "serializer"
    .parameter "guestsCanModify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "guestsCanModify"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    const/4 v1, 0x0

    const-string v2, "value"

    if-eqz p1, :cond_19

    const-string v0, "true"

    :goto_e
    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "guestsCanModify"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    return-void

    .line 224
    :cond_19
    const-string v0, "false"

    goto :goto_e
.end method

.method private static serializeGuestsCanSeeGuests(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 5
    .parameter "serializer"
    .parameter "guestsCanSeeGuests"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "guestsCanSeeGuests"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    const/4 v1, 0x0

    const-string v2, "value"

    if-eqz p1, :cond_19

    const-string v0, "true"

    :goto_e
    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "guestsCanSeeGuests"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    return-void

    .line 240
    :cond_19
    const-string v0, "false"

    goto :goto_e
.end method

.method private static serializeOriginalEvent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "serializer"
    .parameter "originalEventId"
    .parameter "originalEventTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 392
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {p2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 411
    :cond_d
    :goto_d
    return-void

    .line 398
    :cond_e
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "originalEvent"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 400
    .local v1, index:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    .line 401
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, id:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 403
    const-string v2, "id"

    invoke-interface {p0, v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 406
    .end local v0           #id:Ljava/lang/String;
    :cond_2f
    const-string v2, "href"

    invoke-interface {p0, v4, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "when"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    const-string v2, "startTime"

    invoke-interface {p0, v4, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "when"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "originalEvent"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method private static serializeQuickAdd(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 5
    .parameter "serializer"
    .parameter "quickAdd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    if-eqz p1, :cond_18

    .line 449
    const-string v0, "gCal"

    const-string v1, "quickadd"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    const/4 v0, 0x0

    const-string v1, "value"

    const-string v2, "true"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    const-string v0, "gCal"

    const-string v1, "quickadd"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    :cond_18
    return-void
.end method

.method private static serializeRecurrence(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter "serializer"
    .parameter "recurrence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    :goto_6
    return-void

    .line 148
    :cond_7
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "recurrence"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "recurrence"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6
.end method

.method private static serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/Reminder;)V
    .registers 8
    .parameter "serializer"
    .parameter "reminder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 361
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v4, "reminder"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/Reminder;->getMethod()B

    move-result v0

    .line 363
    .local v0, method:B
    const/4 v1, 0x0

    .line 364
    .local v1, methodStr:Ljava/lang/String;
    packed-switch v0, :pswitch_data_38

    .line 375
    :goto_10
    if-eqz v1, :cond_17

    .line 376
    const-string v3, "method"

    invoke-interface {p0, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    :cond_17
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/Reminder;->getMinutes()I

    move-result v2

    .line 380
    .local v2, minutes:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_27

    .line 381
    const-string v3, "minutes"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 385
    :cond_27
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v4, "reminder"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    return-void

    .line 366
    .end local v2           #minutes:I
    :pswitch_2f
    const-string v1, "alert"

    .line 367
    goto :goto_10

    .line 369
    :pswitch_32
    const-string v1, "email"

    .line 370
    goto :goto_10

    .line 372
    :pswitch_35
    const-string v1, "sms"

    goto :goto_10

    .line 364
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_32
        :pswitch_35
        :pswitch_2f
    .end packed-switch
.end method

.method private static serializeSendEventNotifications(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 5
    .parameter "serializer"
    .parameter "sendEventNotifications"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "sendEventNotifications"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    const/4 v1, 0x0

    const-string v2, "value"

    if-eqz p1, :cond_19

    const-string v0, "true"

    :goto_e
    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "sendEventNotifications"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    return-void

    .line 216
    :cond_19
    const-string v0, "false"

    goto :goto_e
.end method

.method private static serializeTransparency(Lorg/xmlpull/v1/XmlSerializer;B)V
    .registers 5
    .parameter "serializer"
    .parameter "transparency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_20

    .line 171
    const-string v0, "http://schemas.google.com/g/2005#event.transparent"

    .line 175
    .local v0, transparencyString:Ljava/lang/String;
    :goto_5
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "transparency"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "transparency"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    return-void

    .line 161
    .end local v0           #transparencyString:Ljava/lang/String;
    :pswitch_1a
    const-string v0, "http://schemas.google.com/g/2005#event.opaque"

    .line 163
    .restart local v0       #transparencyString:Ljava/lang/String;
    goto :goto_5

    .line 165
    .end local v0           #transparencyString:Ljava/lang/String;
    :pswitch_1d
    const-string v0, "http://schemas.google.com/g/2005#event.transparent"

    .line 167
    .restart local v0       #transparencyString:Ljava/lang/String;
    goto :goto_5

    .line 159
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method private static serializeVisibility(Lorg/xmlpull/v1/XmlSerializer;B)V
    .registers 5
    .parameter "serializer"
    .parameter "visibility"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    packed-switch p1, :pswitch_data_26

    .line 204
    const-string v0, "http://schemas.google.com/g/2005#event.default"

    .line 207
    .local v0, visibilityString:Ljava/lang/String;
    :goto_5
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "visibility"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "visibility"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    return-void

    .line 189
    .end local v0           #visibilityString:Ljava/lang/String;
    :pswitch_1a
    const-string v0, "http://schemas.google.com/g/2005#event.default"

    .line 190
    .restart local v0       #visibilityString:Ljava/lang/String;
    goto :goto_5

    .line 192
    .end local v0           #visibilityString:Ljava/lang/String;
    :pswitch_1d
    const-string v0, "http://schemas.google.com/g/2005#event.confidential"

    .line 194
    .restart local v0       #visibilityString:Ljava/lang/String;
    goto :goto_5

    .line 196
    .end local v0           #visibilityString:Ljava/lang/String;
    :pswitch_20
    const-string v0, "http://schemas.google.com/g/2005#event.private"

    .line 197
    .restart local v0       #visibilityString:Ljava/lang/String;
    goto :goto_5

    .line 199
    .end local v0           #visibilityString:Ljava/lang/String;
    :pswitch_23
    const-string v0, "http://schemas.google.com/g/2005#event.public"

    .line 200
    .restart local v0       #visibilityString:Ljava/lang/String;
    goto :goto_5

    .line 187
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method private static serializeWhen(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/EventEntry;Lcom/google/wireless/gdata/calendar/data/When;)V
    .registers 10
    .parameter "serializer"
    .parameter "entry"
    .parameter "when"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 336
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, startTime:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/When;->getEndTime()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, endTime:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 355
    :goto_13
    return-void

    .line 342
    :cond_14
    const-string v4, "http://schemas.google.com/g/2005"

    const-string v5, "when"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    const-string v4, "startTime"

    invoke-interface {p0, v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 345
    const-string v4, "endTime"

    invoke-interface {p0, v6, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    :cond_2b
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 348
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 349
    .local v2, reminders:Ljava/util/Enumeration;
    :goto_39
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 350
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/calendar/data/Reminder;

    .line 351
    .local v1, reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    invoke-static {p0, v1}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/Reminder;)V

    goto :goto_39

    .line 354
    .end local v1           #reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    .end local v2           #reminders:Ljava/util/Enumeration;
    :cond_49
    const-string v4, "http://schemas.google.com/g/2005"

    const-string v5, "when"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_13
.end method

.method private static serializeWhere(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter "serializer"
    .parameter "where"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    if-nez p1, :cond_4

    .line 417
    const-string p1, ""

    .line 419
    :cond_4
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "where"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    const/4 v0, 0x0

    const-string v1, "valueString"

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "where"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    return-void
.end method

.method private static serializeWho(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/EventEntry;Lcom/google/wireless/gdata/calendar/data/Who;)V
    .registers 11
    .parameter "serializer"
    .parameter "entry"
    .parameter "who"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 248
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v6, "who"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 251
    const-string v5, "email"

    invoke-interface {p0, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    :cond_17
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 256
    const-string v5, "valueString"

    invoke-interface {p0, v7, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    :cond_26
    const/4 v1, 0x0

    .line 260
    .local v1, rel:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getRelationship()B

    move-result v5

    packed-switch v5, :pswitch_data_f6

    .line 276
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected rel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getRelationship()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 264
    :pswitch_4b
    const-string v1, "http://schemas.google.com/g/2005#event.attendee"

    .line 278
    :goto_4d
    :pswitch_4d
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 279
    const-string v5, "rel"

    invoke-interface {p0, v7, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    :cond_58
    const/4 v2, 0x0

    .line 283
    .local v2, status:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getStatus()B

    move-result v5

    packed-switch v5, :pswitch_data_104

    .line 299
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getStatus()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 267
    .end local v2           #status:Ljava/lang/String;
    :pswitch_7d
    const-string v1, "http://schemas.google.com/g/2005#event.organizer"

    .line 268
    goto :goto_4d

    .line 270
    :pswitch_80
    const-string v1, "http://schemas.google.com/g/2005#event.performer"

    .line 271
    goto :goto_4d

    .line 273
    :pswitch_83
    const-string v1, "http://schemas.google.com/g/2005#event.speaker"

    .line 274
    goto :goto_4d

    .line 287
    .restart local v2       #status:Ljava/lang/String;
    :pswitch_86
    const-string v2, "http://schemas.google.com/g/2005#event.accepted"

    .line 301
    :goto_88
    :pswitch_88
    invoke-static {v2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a1

    .line 302
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v6, "attendeeStatus"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    const-string v5, "value"

    invoke-interface {p0, v7, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v6, "attendeeStatus"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    :cond_a1
    const/4 v3, 0x0

    .line 310
    .local v3, type:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getType()B

    move-result v5

    packed-switch v5, :pswitch_data_112

    .line 320
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getType()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 290
    .end local v3           #type:Ljava/lang/String;
    :pswitch_c6
    const-string v2, "http://schemas.google.com/g/2005#event.declined"

    .line 291
    goto :goto_88

    .line 293
    :pswitch_c9
    const-string v2, "http://schemas.google.com/g/2005#event.invited"

    .line 294
    goto :goto_88

    .line 296
    :pswitch_cc
    const-string v2, "http://schemas.google.com/g/2005#event.tentative"

    .line 297
    goto :goto_88

    .line 314
    .restart local v3       #type:Ljava/lang/String;
    :pswitch_cf
    const-string v3, "http://schemas.google.com/g/2005#event.required"

    .line 322
    :goto_d1
    :pswitch_d1
    invoke-static {v3}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ea

    .line 323
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v6, "attendeeType"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    const-string v5, "value"

    invoke-interface {p0, v7, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v6, "attendeeType"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    :cond_ea
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v6, "who"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    return-void

    .line 317
    :pswitch_f2
    const-string v3, "http://schemas.google.com/g/2005#event.optional"

    .line 318
    goto :goto_d1

    .line 260
    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4b
        :pswitch_7d
        :pswitch_80
        :pswitch_83
    .end packed-switch

    .line 283
    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_88
        :pswitch_86
        :pswitch_c6
        :pswitch_c9
        :pswitch_cc
    .end packed-switch

    .line 310
    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_f2
        :pswitch_cf
    .end packed-switch
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "gCal"

    const-string v1, "http://schemas.google.com/gCal/2005"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected getEventEntry()Lcom/google/wireless/gdata/calendar/data/EventEntry;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    return-object v0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 17
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->getEventEntry()Lcom/google/wireless/gdata/calendar/data/EventEntry;

    move-result-object v2

    .line 54
    .local v2, entry:Lcom/google/wireless/gdata/calendar/data/EventEntry;
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getStatus()B

    move-result v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeEventStatus(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 55
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getTransparency()B

    move-result v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeTransparency(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 56
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getVisibility()B

    move-result v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeVisibility(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 57
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getSendEventNotifications()Z

    move-result v11

    if-eqz v11, :cond_35

    .line 58
    const-string v11, "http://schemas.google.com/gCal/2005"

    const-string v12, "sendEventNotifications"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    const/4 v11, 0x0

    const-string v12, "value"

    const-string v13, "true"

    invoke-interface {p1, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    const-string v11, "http://schemas.google.com/gCal/2005"

    const-string v12, "sendEventNotifications"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    :cond_35
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getAttendees()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 72
    .local v1, attendees:Ljava/util/Enumeration;
    :goto_3d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 73
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/Who;

    .line 74
    .local v0, attendee:Lcom/google/wireless/gdata/calendar/data/Who;
    invoke-static {p1, v2, v0}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWho(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/EventEntry;Lcom/google/wireless/gdata/calendar/data/Who;)V

    goto :goto_3d

    .line 77
    .end local v0           #attendee:Lcom/google/wireless/gdata/calendar/data/Who;
    :cond_4d
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeRecurrence(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_78

    .line 81
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v11

    if-eqz v11, :cond_90

    .line 82
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 83
    .local v8, reminders:Ljava/util/Enumeration;
    :goto_68
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_90

    .line 84
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/gdata/calendar/data/Reminder;

    .line 85
    .local v7, reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    invoke-static {p1, v7}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/Reminder;)V

    goto :goto_68

    .line 89
    .end local v7           #reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    .end local v8           #reminders:Ljava/util/Enumeration;
    :cond_78
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getWhens()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v10

    .line 90
    .local v10, whens:Ljava/util/Enumeration;
    :goto_80
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_90

    .line 91
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/wireless/gdata/calendar/data/When;

    .line 92
    .local v9, when:Lcom/google/wireless/gdata/calendar/data/When;
    invoke-static {p1, v2, v9}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhen(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/EventEntry;Lcom/google/wireless/gdata/calendar/data/When;)V

    goto :goto_80

    .line 95
    .end local v9           #when:Lcom/google/wireless/gdata/calendar/data/When;
    .end local v10           #whens:Ljava/util/Enumeration;
    :cond_90
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getOriginalEventId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getOriginalEventStartTime()Ljava/lang/String;

    move-result-object v12

    invoke-static {p1, v11, v12}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeOriginalEvent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getWhere()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhere(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getCommentsUri()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeCommentsUri(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Hashtable;

    move-result-object v3

    .line 103
    .local v3, extendedProperties:Ljava/util/Hashtable;
    if-eqz v3, :cond_c9

    .line 104
    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 105
    .local v5, propertyNames:Ljava/util/Enumeration;
    :goto_b3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_c9

    .line 106
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 107
    .local v4, propertyName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 108
    .local v6, propertyValue:Ljava/lang/String;
    invoke-static {p1, v4, v6}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeExtendedProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    .line 112
    .end local v4           #propertyName:Ljava/lang/String;
    .end local v5           #propertyNames:Ljava/util/Enumeration;
    .end local v6           #propertyValue:Ljava/lang/String;
    :cond_c9
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->isQuickAdd()Z

    move-result v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeQuickAdd(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 113
    return-void
.end method
