.class public final Lcom/cooliris/picasa/AlbumEntry;
.super Lcom/cooliris/picasa/Entry;
.source "AlbumEntry.java"


# annotations
.annotation runtime Lcom/cooliris/picasa/Entry$Table;
    value = "albums"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/cooliris/picasa/EntrySchema;


# instance fields
.field public bytesUsed:J
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "bytes_used"
    .end annotation
.end field

.field public dateEdited:J
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "date_edited"
    .end annotation
.end field

.field public datePublished:J
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "date_published"
    .end annotation
.end field

.field public dateUpdated:J
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "date_updated"
    .end annotation
.end field

.field public editUri:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "edit_uri"
    .end annotation
.end field

.field public htmlPageUrl:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "html_page_url"
    .end annotation
.end field

.field public locationString:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "location_string"
    .end annotation
.end field

.field public numPhotos:I
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "num_photos"
    .end annotation
.end field

.field public photosDirty:Z
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "photos_dirty"
    .end annotation
.end field

.field public photosEtag:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "photos_etag"
    .end annotation
.end field

.field public summary:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "summary"
    .end annotation
.end field

.field public syncAccount:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "sync_account"
    .end annotation
.end field

.field public thumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "thumbnail_url"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "title"
    .end annotation
.end field

.field public user:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "user"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcom/cooliris/picasa/EntrySchema;

    const-class v1, Lcom/cooliris/picasa/AlbumEntry;

    invoke-direct {v0, v1}, Lcom/cooliris/picasa/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/cooliris/picasa/Entry;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/picasa/AlbumEntry;->photosEtag:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 143
    invoke-super {p0}, Lcom/cooliris/picasa/Entry;->clear()V

    .line 144
    iput-object v0, p0, Lcom/cooliris/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    .line 145
    iput-boolean v3, p0, Lcom/cooliris/picasa/AlbumEntry;->photosDirty:Z

    .line 146
    iput-object v0, p0, Lcom/cooliris/picasa/AlbumEntry;->editUri:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/cooliris/picasa/AlbumEntry;->user:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/cooliris/picasa/AlbumEntry;->title:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/cooliris/picasa/AlbumEntry;->summary:Ljava/lang/String;

    .line 150
    iput-wide v1, p0, Lcom/cooliris/picasa/AlbumEntry;->datePublished:J

    .line 151
    iput-wide v1, p0, Lcom/cooliris/picasa/AlbumEntry;->dateUpdated:J

    .line 152
    iput-wide v1, p0, Lcom/cooliris/picasa/AlbumEntry;->dateEdited:J

    .line 153
    iput v3, p0, Lcom/cooliris/picasa/AlbumEntry;->numPhotos:I

    .line 154
    iput-wide v1, p0, Lcom/cooliris/picasa/AlbumEntry;->bytesUsed:J

    .line 155
    iput-object v0, p0, Lcom/cooliris/picasa/AlbumEntry;->locationString:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/cooliris/picasa/AlbumEntry;->thumbnailUrl:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/cooliris/picasa/AlbumEntry;->htmlPageUrl:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setPropertyFromXml(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 10
    .parameter "uri"
    .parameter "localName"
    .parameter "attrs"
    .parameter "content"

    .prologue
    .line 166
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 167
    .local v1, localNameChar:C
    const-string v3, "http://schemas.google.com/photos/2007"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 168
    sparse-switch v1, :sswitch_data_100

    .line 238
    :cond_10
    :goto_10
    return-void

    .line 170
    :sswitch_11
    const-string v3, "id"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 171
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cooliris/picasa/Entry;->id:J

    goto :goto_10

    .line 175
    :sswitch_20
    const-string v3, "user"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 176
    iput-object p4, p0, Lcom/cooliris/picasa/AlbumEntry;->user:Ljava/lang/String;

    goto :goto_10

    .line 180
    :sswitch_2b
    const-string v3, "numphotos"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 181
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/cooliris/picasa/AlbumEntry;->numPhotos:I

    goto :goto_10

    .line 185
    :sswitch_3a
    const-string v3, "bytesUsed"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 186
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cooliris/picasa/AlbumEntry;->bytesUsed:J

    goto :goto_10

    .line 192
    :cond_49
    const-string v3, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 193
    packed-switch v1, :pswitch_data_112

    :pswitch_54
    goto :goto_10

    .line 215
    :pswitch_55
    const-string v3, "link"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 216
    const-string v3, ""

    const-string v4, "rel"

    invoke-interface {p3, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, rel:Ljava/lang/String;
    const-string v3, ""

    const-string v4, "href"

    invoke-interface {p3, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, href:Ljava/lang/String;
    const-string v3, "alternate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    const-string v3, ""

    const-string v4, "type"

    invoke-interface {p3, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 220
    iput-object v0, p0, Lcom/cooliris/picasa/AlbumEntry;->htmlPageUrl:Ljava/lang/String;

    goto :goto_10

    .line 195
    .end local v0           #href:Ljava/lang/String;
    .end local v2           #rel:Ljava/lang/String;
    :pswitch_88
    const-string v3, "title"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 196
    iput-object p4, p0, Lcom/cooliris/picasa/AlbumEntry;->title:Ljava/lang/String;

    goto/16 :goto_10

    .line 200
    :pswitch_94
    const-string v3, "summary"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 201
    iput-object p4, p0, Lcom/cooliris/picasa/AlbumEntry;->summary:Ljava/lang/String;

    goto/16 :goto_10

    .line 205
    :pswitch_a0
    const-string v3, "published"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 206
    invoke-static {p4}, Lcom/cooliris/picasa/GDataParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cooliris/picasa/AlbumEntry;->datePublished:J

    goto/16 :goto_10

    .line 210
    :pswitch_b0
    const-string v3, "updated"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 211
    invoke-static {p4}, Lcom/cooliris/picasa/GDataParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cooliris/picasa/AlbumEntry;->dateUpdated:J

    goto/16 :goto_10

    .line 221
    .restart local v0       #href:Ljava/lang/String;
    .restart local v2       #rel:Ljava/lang/String;
    :cond_c0
    const-string v3, "edit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 222
    iput-object v0, p0, Lcom/cooliris/picasa/AlbumEntry;->editUri:Ljava/lang/String;

    goto/16 :goto_10

    .line 229
    .end local v0           #href:Ljava/lang/String;
    .end local v2           #rel:Ljava/lang/String;
    :cond_cc
    const-string v3, "http://www.w3.org/2007/app"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 230
    const-string v3, "edited"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 231
    invoke-static {p4}, Lcom/cooliris/picasa/GDataParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cooliris/picasa/AlbumEntry;->dateEdited:J

    goto/16 :goto_10

    .line 233
    :cond_e4
    const-string v3, "http://search.yahoo.com/mrss/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 234
    const-string v3, "thumbnail"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 235
    const-string v3, ""

    const-string v4, "url"

    invoke-interface {p3, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cooliris/picasa/AlbumEntry;->thumbnailUrl:Ljava/lang/String;

    goto/16 :goto_10

    .line 168
    :sswitch_data_100
    .sparse-switch
        0x62 -> :sswitch_3a
        0x69 -> :sswitch_11
        0x6e -> :sswitch_2b
        0x75 -> :sswitch_20
    .end sparse-switch

    .line 193
    :pswitch_data_112
    .packed-switch 0x6c
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_a0
        :pswitch_54
        :pswitch_54
        :pswitch_94
        :pswitch_88
        :pswitch_b0
    .end packed-switch
.end method
