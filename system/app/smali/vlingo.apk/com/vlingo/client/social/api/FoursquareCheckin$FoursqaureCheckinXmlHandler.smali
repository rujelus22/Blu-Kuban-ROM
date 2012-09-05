.class Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;
.super Ljava/lang/Object;
.source "FoursquareCheckin.java"

# interfaces
.implements Lcom/vlingo/client/core/xml/XmlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/FoursquareCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FoursqaureCheckinXmlHandler"
.end annotation


# instance fields
.field private checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

.field private checkins:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/social/api/FoursquareCheckin;",
            ">;"
        }
    .end annotation
.end field

.field private inUser:Z

.field private inVenue:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean v0, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->inUser:Z

    .line 127
    iput-boolean v0, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->inVenue:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/api/FoursquareCheckin$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public beginDocument()V
    .registers 1

    .prologue
    .line 135
    return-void
.end method

.method public beginElement(ILcom/vlingo/client/core/xml/XmlAttributes;[CI)V
    .registers 13
    .parameter "elementType"
    .parameter "attributes"
    .parameter "cData"
    .parameter "elementEndPosition"

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_17e

    .line 215
    :cond_3
    :goto_3
    return-void

    .line 140
    :pswitch_4
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkins:Ljava/util/Vector;

    goto :goto_3

    .line 143
    :pswitch_c
    new-instance v4, Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-direct {v4}, Lcom/vlingo/client/social/api/FoursquareCheckin;-><init>()V

    iput-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    goto :goto_3

    .line 146
    :pswitch_14
    iget-boolean v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->inUser:Z

    if-nez v4, :cond_25

    iget-boolean v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->inVenue:Z

    if-nez v4, :cond_25

    .line 147
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-static {p3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->checkinID:Ljava/lang/String;

    goto :goto_3

    .line 148
    :cond_25
    iget-boolean v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->inUser:Z

    if-eqz v4, :cond_32

    .line 149
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-static {p3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->userID:Ljava/lang/String;

    goto :goto_3

    .line 150
    :cond_32
    iget-boolean v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->inVenue:Z

    if-eqz v4, :cond_3

    .line 151
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-static {p3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->venueID:Ljava/lang/String;

    goto :goto_3

    .line 154
    :pswitch_3f
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->inUser:Z

    goto :goto_3

    .line 157
    :pswitch_43
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->userFirstname:Ljava/lang/String;

    goto :goto_3

    .line 160
    :pswitch_4c
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->userLastname:Ljava/lang/String;

    goto :goto_3

    .line 163
    :pswitch_55
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->userPhotoURL:Ljava/lang/String;

    goto :goto_3

    .line 166
    :pswitch_5e
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->userGender:Ljava/lang/String;

    goto :goto_3

    .line 169
    :pswitch_67
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->inVenue:Z

    goto :goto_3

    .line 172
    :pswitch_6b
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->venueName:Ljava/lang/String;

    goto :goto_3

    .line 175
    :pswitch_74
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->venueAddress:Ljava/lang/String;

    goto :goto_3

    .line 178
    :pswitch_7d
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->venueCrossStreet:Ljava/lang/String;

    goto/16 :goto_3

    .line 181
    :pswitch_87
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->venueLat:F

    goto/16 :goto_3

    .line 184
    :pswitch_95
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->venueLong:F

    goto/16 :goto_3

    .line 187
    :pswitch_a3
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->distance:D

    goto/16 :goto_3

    .line 190
    :pswitch_b2
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->display:Ljava/lang/String;

    goto/16 :goto_3

    .line 193
    :pswitch_bc
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->shout:Ljava/lang/String;

    goto/16 :goto_3

    .line 196
    :pswitch_c6
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    new-instance v5, Ljava/util/Date;

    invoke-virtual {p0, p3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getString([C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->created:Ljava/util/Date;

    .line 197
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 198
    .local v2, now:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget-object v6, v6, Lcom/vlingo/client/social/api/FoursquareCheckin;->created:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 199
    .local v0, diff:J
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iput-wide v0, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->ageMs:J

    .line 200
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 201
    .local v3, res:Landroid/content/res/Resources;
    const-wide/32 v4, 0xea60

    cmp-long v4, v0, v4

    if-gez v4, :cond_106

    .line 202
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    const v5, 0x7f0903d9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->relativeDate:Ljava/lang/String;

    goto/16 :goto_3

    .line 204
    :cond_106
    const-wide/32 v4, 0x36ee80

    cmp-long v4, v0, v4

    if-gez v4, :cond_130

    .line 205
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v6, 0xea60

    div-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0903da

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->relativeDate:Ljava/lang/String;

    goto/16 :goto_3

    .line 207
    :cond_130
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v0, v4

    if-gez v4, :cond_15a

    .line 208
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v6, 0x36ee80

    div-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0903d8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->relativeDate:Ljava/lang/String;

    goto/16 :goto_3

    .line 211
    :cond_15a
    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v6, 0x5265c00

    div-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0903d4

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->relativeDate:Ljava/lang/String;

    goto/16 :goto_3

    .line 138
    nop

    :pswitch_data_17e
    .packed-switch 0x65
        :pswitch_4
        :pswitch_c
        :pswitch_14
        :pswitch_3f
        :pswitch_43
        :pswitch_4c
        :pswitch_55
        :pswitch_5e
        :pswitch_67
        :pswitch_6b
        :pswitch_74
        :pswitch_7d
        :pswitch_87
        :pswitch_95
        :pswitch_a3
        :pswitch_b2
        :pswitch_bc
        :pswitch_c6
    .end packed-switch
.end method

.method public characters([C)V
    .registers 2
    .parameter "cData"

    .prologue
    .line 227
    return-void
.end method

.method public endDocument()V
    .registers 1

    .prologue
    .line 231
    return-void
.end method

.method public endElement(II)V
    .registers 9
    .parameter "elementType"
    .parameter "elementStartPosition"

    .prologue
    const/4 v2, 0x0

    .line 236
    sparse-switch p1, :sswitch_data_9e

    .line 267
    :cond_4
    :goto_4
    return-void

    .line 238
    :sswitch_5
    iput-boolean v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->inUser:Z

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget-object v2, v2, Lcom/vlingo/client/social/api/FoursquareCheckin;->userFirstname:Ljava/lang/String;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget-object v2, v2, Lcom/vlingo/client/social/api/FoursquareCheckin;->userLastname:Ljava/lang/String;

    if-eqz v2, :cond_38

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget-object v3, v3, Lcom/vlingo/client/social/api/FoursquareCheckin;->userFirstname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget-object v3, v3, Lcom/vlingo/client/social/api/FoursquareCheckin;->userLastname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iput-object v1, v2, Lcom/vlingo/client/social/api/FoursquareCheckin;->userName:Ljava/lang/String;

    goto :goto_4

    .line 242
    :cond_38
    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget-object v2, v2, Lcom/vlingo/client/social/api/FoursquareCheckin;->userFirstname:Ljava/lang/String;

    if-eqz v2, :cond_43

    .line 243
    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget-object v1, v2, Lcom/vlingo/client/social/api/FoursquareCheckin;->userFirstname:Ljava/lang/String;

    goto :goto_33

    .line 244
    :cond_43
    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget-object v2, v2, Lcom/vlingo/client/social/api/FoursquareCheckin;->userLastname:Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 245
    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget-object v1, v2, Lcom/vlingo/client/social/api/FoursquareCheckin;->userLastname:Ljava/lang/String;

    goto :goto_33

    .line 249
    .end local v1           #name:Ljava/lang/String;
    :sswitch_4e
    iput-boolean v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->inVenue:Z

    goto :goto_4

    .line 252
    :sswitch_51
    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {v2}, Lcom/vlingo/client/social/api/FoursquareCheckin;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 253
    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget-wide v2, v2, Lcom/vlingo/client/social/api/FoursquareCheckin;->distance:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_7f

    .line 254
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/VlingoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/social/SocialLocationUtil;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 255
    .local v0, currentPosition:Landroid/location/Location;
    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget v3, v3, Lcom/vlingo/client/social/api/FoursquareCheckin;->venueLat:F

    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget v4, v4, Lcom/vlingo/client/social/api/FoursquareCheckin;->venueLong:F

    invoke-static {v0, v3, v4}, Lcom/vlingo/client/social/SocialLocationUtil;->distance(Landroid/location/Location;FF)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/vlingo/client/social/api/FoursquareCheckin;->distance:D

    .line 262
    .end local v0           #currentPosition:Landroid/location/Location;
    :cond_7f
    :goto_7f
    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    iget-wide v2, v2, Lcom/vlingo/client/social/api/FoursquareCheckin;->ageMs:J

    const-wide/32 v4, 0x14997000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 263
    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkins:Ljava/util/Vector;

    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 259
    :cond_93
    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkin:Lcom/vlingo/client/social/api/FoursquareCheckin;

    const-wide v3, 0x412e848000000000L

    iput-wide v3, v2, Lcom/vlingo/client/social/api/FoursquareCheckin;->distance:D

    goto :goto_7f

    .line 236
    nop

    :sswitch_data_9e
    .sparse-switch
        0x66 -> :sswitch_51
        0x68 -> :sswitch_5
        0x6d -> :sswitch_4e
    .end sparse-switch
.end method

.method public getCheckins()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/social/api/FoursquareCheckin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->checkins:Ljava/util/Vector;

    return-object v0
.end method

.method public getString([C)Ljava/lang/String;
    .registers 3
    .parameter "cdata"

    .prologue
    .line 218
    if-eqz p1, :cond_7

    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method
