.class Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;
.super Ljava/lang/Object;
.source "FoursquareVenue.java"

# interfaces
.implements Lcom/vlingo/client/core/xml/XmlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/FoursquareVenue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FoursqaureVenueXmlHandler"
.end annotation


# instance fields
.field private ignore:Z

.field private venue:Lcom/vlingo/client/social/api/FoursquareVenue;

.field private venues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/social/api/FoursquareVenue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;->ignore:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/api/FoursquareVenue$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public beginDocument()V
    .registers 1

    .prologue
    .line 109
    return-void
.end method

.method public beginElement(ILcom/vlingo/client/core/xml/XmlAttributes;[CI)V
    .registers 6
    .parameter "elementType"
    .parameter "attributes"
    .parameter "cData"
    .parameter "elementEndPosition"

    .prologue
    .line 112
    const/16 v0, 0x40a

    if-ne p1, v0, :cond_4

    .line 116
    :cond_4
    iget-boolean v0, p0, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;->ignore:Z

    if-eqz v0, :cond_9

    .line 162
    :goto_8
    :sswitch_8
    return-void

    .line 119
    :cond_9
    sparse-switch p1, :sswitch_data_24

    goto :goto_8

    .line 121
    :sswitch_d
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;->venues:Ljava/util/Vector;

    goto :goto_8

    .line 124
    :sswitch_15
    new-instance v0, Lcom/vlingo/client/social/api/FoursquareVenue;

    invoke-direct {v0}, Lcom/vlingo/client/social/api/FoursquareVenue;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;->venue:Lcom/vlingo/client/social/api/FoursquareVenue;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;->ignore:Z

    goto :goto_8

    .line 158
    :sswitch_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;->ignore:Z

    goto :goto_8

    .line 119
    :sswitch_data_24
    .sparse-switch
        0x64 -> :sswitch_d
        0x65 -> :sswitch_15
        0x66 -> :sswitch_8
        0x6d -> :sswitch_8
        0x71 -> :sswitch_8
        0x72 -> :sswitch_8
        0x73 -> :sswitch_8
        0x74 -> :sswitch_8
        0x75 -> :sswitch_8
        0x76 -> :sswitch_8
        0x3e8 -> :sswitch_8
        0x3fc -> :sswitch_8
        0x409 -> :sswitch_20
    .end sparse-switch
.end method

.method public characters([C)V
    .registers 2
    .parameter "cData"

    .prologue
    .line 175
    return-void
.end method

.method public endDocument()V
    .registers 1

    .prologue
    .line 179
    return-void
.end method

.method public endElement(II)V
    .registers 5
    .parameter "elementType"
    .parameter "elementStartPosition"

    .prologue
    .line 182
    sparse-switch p1, :sswitch_data_10

    .line 190
    :goto_3
    return-void

    .line 184
    :sswitch_4
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;->venues:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;->venue:Lcom/vlingo/client/social/api/FoursquareVenue;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 187
    :sswitch_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;->ignore:Z

    goto :goto_3

    .line 182
    :sswitch_data_10
    .sparse-switch
        0x65 -> :sswitch_4
        0x409 -> :sswitch_c
    .end sparse-switch
.end method

.method public getString([C)Ljava/lang/String;
    .registers 3
    .parameter "cdata"

    .prologue
    .line 166
    if-eqz p1, :cond_7

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public getVenues()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/social/api/FoursquareVenue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;->venues:Ljava/util/Vector;

    return-object v0
.end method
