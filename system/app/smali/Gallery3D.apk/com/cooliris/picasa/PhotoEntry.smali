.class public final Lcom/cooliris/picasa/PhotoEntry;
.super Lcom/cooliris/picasa/Entry;
.source "PhotoEntry.java"


# annotations
.annotation runtime Lcom/cooliris/picasa/Entry$Table;
    value = "photos"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/cooliris/picasa/EntrySchema;


# instance fields
.field public albumId:J
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        indexed = true
        value = "album_id"
    .end annotation
.end field

.field public commentCount:I
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "comment_count"
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "content_type"
    .end annotation
.end field

.field public contentUrl:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "content_url"
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

.field public dateTaken:J
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "date_taken"
    .end annotation
.end field

.field public dateUpdated:J
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "date_updated"
    .end annotation
.end field

.field public displayIndex:I
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        indexed = true
        value = "display_index"
    .end annotation
.end field

.field public editUri:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "edit_uri"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "height"
    .end annotation
.end field

.field public htmlPageUrl:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "html_page_url"
    .end annotation
.end field

.field public latitude:D
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "latitude"
    .end annotation
.end field

.field public longitude:D
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "longitude"
    .end annotation
.end field

.field public rotation:I
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "rotation"
    .end annotation
.end field

.field public screennailUrl:Ljava/lang/String;
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "screennail_url"
    .end annotation
.end field

.field public size:I
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "size"
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

.field public width:I
    .annotation runtime Lcom/cooliris/picasa/Entry$Column;
        value = "width"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcom/cooliris/picasa/EntrySchema;

    const-class v1, Lcom/cooliris/picasa/PhotoEntry;

    invoke-direct {v0, v1}, Lcom/cooliris/picasa/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/cooliris/picasa/PhotoEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/cooliris/picasa/Entry;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 171
    invoke-super {p0}, Lcom/cooliris/picasa/Entry;->clear()V

    .line 172
    iput-object v0, p0, Lcom/cooliris/picasa/PhotoEntry;->syncAccount:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lcom/cooliris/picasa/PhotoEntry;->editUri:Ljava/lang/String;

    .line 174
    iput-wide v2, p0, Lcom/cooliris/picasa/PhotoEntry;->albumId:J

    .line 175
    iput v1, p0, Lcom/cooliris/picasa/PhotoEntry;->displayIndex:I

    .line 176
    iput-object v0, p0, Lcom/cooliris/picasa/PhotoEntry;->title:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lcom/cooliris/picasa/PhotoEntry;->summary:Ljava/lang/String;

    .line 178
    iput-wide v2, p0, Lcom/cooliris/picasa/PhotoEntry;->datePublished:J

    .line 179
    iput-wide v2, p0, Lcom/cooliris/picasa/PhotoEntry;->dateUpdated:J

    .line 180
    iput-wide v2, p0, Lcom/cooliris/picasa/PhotoEntry;->dateEdited:J

    .line 181
    iput-wide v2, p0, Lcom/cooliris/picasa/PhotoEntry;->dateTaken:J

    .line 182
    iput v1, p0, Lcom/cooliris/picasa/PhotoEntry;->commentCount:I

    .line 183
    iput v1, p0, Lcom/cooliris/picasa/PhotoEntry;->width:I

    .line 184
    iput v1, p0, Lcom/cooliris/picasa/PhotoEntry;->height:I

    .line 185
    iput v1, p0, Lcom/cooliris/picasa/PhotoEntry;->rotation:I

    .line 186
    iput v1, p0, Lcom/cooliris/picasa/PhotoEntry;->size:I

    .line 187
    iput-wide v4, p0, Lcom/cooliris/picasa/PhotoEntry;->latitude:D

    .line 188
    iput-wide v4, p0, Lcom/cooliris/picasa/PhotoEntry;->longitude:D

    .line 189
    iput-object v0, p0, Lcom/cooliris/picasa/PhotoEntry;->thumbnailUrl:Ljava/lang/String;

    .line 190
    iput-object v0, p0, Lcom/cooliris/picasa/PhotoEntry;->screennailUrl:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lcom/cooliris/picasa/PhotoEntry;->contentUrl:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcom/cooliris/picasa/PhotoEntry;->contentType:Ljava/lang/String;

    .line 193
    iput-object v0, p0, Lcom/cooliris/picasa/PhotoEntry;->htmlPageUrl:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setPropertyFromXml(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 18
    .parameter "uri"
    .parameter "localName"
    .parameter "attrs"
    .parameter "content"

    .prologue
    .line 203
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {p2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 204
    .local v5, localNameChar:C
    const-string v11, "http://schemas.google.com/photos/2007"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ab

    .line 205
    sparse-switch v5, :sswitch_data_1fe

    .line 329
    .end local v5           #localNameChar:C
    :cond_10
    :goto_10
    return-void

    .line 207
    .restart local v5       #localNameChar:C
    :sswitch_11
    const-string v11, "id"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 208
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/cooliris/picasa/Entry;->id:J

    goto :goto_10

    .line 326
    .end local v5           #localNameChar:C
    :catch_20
    move-exception v2

    .line 327
    .local v2, e:Ljava/lang/Exception;
    goto :goto_10

    .line 212
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #localNameChar:C
    :sswitch_22
    const-string v11, "albumid"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 213
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/cooliris/picasa/PhotoEntry;->albumId:J

    goto :goto_10

    .line 217
    :sswitch_31
    const-string v11, "timestamp"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 218
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/cooliris/picasa/PhotoEntry;->dateTaken:J

    goto :goto_10

    .line 222
    :sswitch_40
    const-string v11, "commentCount"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 223
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/cooliris/picasa/PhotoEntry;->commentCount:I

    goto :goto_10

    .line 227
    :sswitch_4f
    const-string v11, "width"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 228
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/cooliris/picasa/PhotoEntry;->width:I

    goto :goto_10

    .line 232
    :sswitch_5e
    const-string v11, "height"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 233
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/cooliris/picasa/PhotoEntry;->height:I

    goto :goto_10

    .line 237
    :sswitch_6d
    const-string v11, "rotation"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 238
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/cooliris/picasa/PhotoEntry;->rotation:I

    goto :goto_10

    .line 242
    :sswitch_7c
    const-string v11, "size"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 243
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/cooliris/picasa/PhotoEntry;->size:I

    goto :goto_10

    .line 247
    :sswitch_8b
    const-string v11, "latitude"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9b

    .line 248
    invoke-static/range {p4 .. p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    iput-wide v11, p0, Lcom/cooliris/picasa/PhotoEntry;->latitude:D

    goto/16 :goto_10

    .line 249
    :cond_9b
    const-string v11, "longitude"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 250
    invoke-static/range {p4 .. p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    iput-wide v11, p0, Lcom/cooliris/picasa/PhotoEntry;->longitude:D

    goto/16 :goto_10

    .line 257
    :cond_ab
    const-string v11, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13a

    .line 258
    packed-switch v5, :pswitch_data_224

    :pswitch_b6
    goto/16 :goto_10

    .line 280
    :pswitch_b8
    const-string v11, "link"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 281
    const-string v11, ""

    const-string v12, "rel"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 282
    .local v6, rel:Ljava/lang/String;
    const-string v11, ""

    const-string v12, "href"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, href:Ljava/lang/String;
    const-string v11, "alternate"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12e

    const-string v11, ""

    const-string v12, "type"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "text/html"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12e

    .line 285
    iput-object v4, p0, Lcom/cooliris/picasa/PhotoEntry;->htmlPageUrl:Ljava/lang/String;

    goto/16 :goto_10

    .line 260
    .end local v4           #href:Ljava/lang/String;
    .end local v6           #rel:Ljava/lang/String;
    :pswitch_f2
    const-string v11, "title"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 261
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/cooliris/picasa/PhotoEntry;->title:Ljava/lang/String;

    goto/16 :goto_10

    .line 265
    :pswitch_100
    const-string v11, "summary"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 266
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/cooliris/picasa/PhotoEntry;->summary:Ljava/lang/String;

    goto/16 :goto_10

    .line 270
    :pswitch_10e
    const-string v11, "published"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 271
    invoke-static/range {p4 .. p4}, Lcom/cooliris/picasa/GDataParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/cooliris/picasa/PhotoEntry;->datePublished:J

    goto/16 :goto_10

    .line 275
    :pswitch_11e
    const-string v11, "updated"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 276
    invoke-static/range {p4 .. p4}, Lcom/cooliris/picasa/GDataParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/cooliris/picasa/PhotoEntry;->dateUpdated:J

    goto/16 :goto_10

    .line 286
    .restart local v4       #href:Ljava/lang/String;
    .restart local v6       #rel:Ljava/lang/String;
    :cond_12e
    const-string v11, "edit"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 287
    iput-object v4, p0, Lcom/cooliris/picasa/PhotoEntry;->editUri:Ljava/lang/String;

    goto/16 :goto_10

    .line 294
    .end local v4           #href:Ljava/lang/String;
    .end local v6           #rel:Ljava/lang/String;
    :cond_13a
    const-string v11, "http://www.w3.org/2007/app"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_152

    .line 295
    const-string v11, "edited"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 296
    invoke-static/range {p4 .. p4}, Lcom/cooliris/picasa/GDataParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/cooliris/picasa/PhotoEntry;->dateEdited:J

    goto/16 :goto_10

    .line 298
    :cond_152
    const-string v11, "http://search.yahoo.com/mrss/"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c6

    .line 299
    const-string v11, "thumbnail"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_198

    .line 300
    const-string v11, ""

    const-string v12, "width"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 301
    .local v10, width:I
    const-string v11, ""

    const-string v12, "height"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 302
    .local v3, height:I
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 303
    .local v1, dimension:I
    const-string v11, ""

    const-string v12, "url"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, url:Ljava/lang/String;
    const/16 v11, 0x12c

    if-gt v1, v11, :cond_194

    .line 305
    iput-object v9, p0, Lcom/cooliris/picasa/PhotoEntry;->thumbnailUrl:Ljava/lang/String;

    goto/16 :goto_10

    .line 307
    :cond_194
    iput-object v9, p0, Lcom/cooliris/picasa/PhotoEntry;->screennailUrl:Ljava/lang/String;

    goto/16 :goto_10

    .line 309
    .end local v1           #dimension:I
    .end local v3           #height:I
    .end local v9           #url:Ljava/lang/String;
    .end local v10           #width:I
    :cond_198
    const-string v11, "content"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 311
    const-string v11, ""

    const-string v12, "type"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 312
    .local v8, type:Ljava/lang/String;
    iget-object v11, p0, Lcom/cooliris/picasa/PhotoEntry;->contentUrl:Ljava/lang/String;

    if-eqz v11, :cond_1b6

    const-string v11, "video/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 313
    :cond_1b6
    const-string v11, ""

    const-string v12, "url"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/cooliris/picasa/PhotoEntry;->contentUrl:Ljava/lang/String;

    .line 314
    iput-object v8, p0, Lcom/cooliris/picasa/PhotoEntry;->contentType:Ljava/lang/String;

    goto/16 :goto_10

    .line 317
    .end local v8           #type:Ljava/lang/String;
    :cond_1c6
    const-string v11, "http://www.opengis.net/gml"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 318
    const-string v11, "pos"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 319
    const/16 v11, 0x20

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 320
    .local v7, spaceIndex:I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_10

    .line 321
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    iput-wide v11, p0, Lcom/cooliris/picasa/PhotoEntry;->latitude:D

    .line 322
    add-int/lit8 v11, v7, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    iput-wide v11, p0, Lcom/cooliris/picasa/PhotoEntry;->longitude:D
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1fc} :catch_20

    goto/16 :goto_10

    .line 205
    :sswitch_data_1fe
    .sparse-switch
        0x61 -> :sswitch_22
        0x63 -> :sswitch_40
        0x68 -> :sswitch_5e
        0x69 -> :sswitch_11
        0x6c -> :sswitch_8b
        0x72 -> :sswitch_6d
        0x73 -> :sswitch_7c
        0x74 -> :sswitch_31
        0x77 -> :sswitch_4f
    .end sparse-switch

    .line 258
    :pswitch_data_224
    .packed-switch 0x6c
        :pswitch_b8
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_10e
        :pswitch_b6
        :pswitch_b6
        :pswitch_100
        :pswitch_f2
        :pswitch_11e
    .end packed-switch
.end method
