.class Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AccuWeatherResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParserHandlerList"
.end annotation


# instance fields
.field city:Ljava/lang/String;

.field cnt:Ljava/lang/String;

.field intl:Ljava/lang/String;

.field intlcount:I

.field latitude:Ljava/lang/String;

.field location:Ljava/lang/String;

.field longitude:Ljava/lang/String;

.field state:Ljava/lang/String;

.field private tagnames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;


# direct methods
.method public constructor <init>(Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;)V
    .registers 4
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->this$0:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->intlcount:I

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->tagnames:Ljava/util/ArrayList;

    .line 392
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "citylist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 421
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->tagnames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    packed-switch v1, :pswitch_data_e6

    .line 452
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 428
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->intl:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->cnt:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->city:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->state:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->location:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->latitude:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->longitude:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 430
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->intl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->cnt:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->city:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->state:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->location:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->latitude:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->longitude:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 435
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->state:Ljava/lang/String;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 437
    const-string v2, ""

    .local v2, temp:Ljava/lang/String;
    const-string v11, ""

    .local v11, temp_state:Ljava/lang/String;
    const-string v10, ""

    .line 438
    .local v10, temp_country:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->state:Ljava/lang/String;

    const-string v3, " ("

    const-string v4, ","

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ")"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 439
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v10, v1, v3

    .line 440
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v11, v1, v3

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 442
    new-instance v0, Lcom/sec/android/daemonapp/info/CityInfo;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->city:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->location:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->latitude:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->longitude:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/daemonapp/info/CityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 447
    .end local v2           #temp:Ljava/lang/String;
    .end local v10           #temp_country:Ljava/lang/String;
    .end local v11           #temp_state:Ljava/lang/String;
    .local v0, aCityInfo:Lcom/sec/android/daemonapp/info/CityInfo;
    :goto_c5
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->this$0:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 445
    .end local v0           #aCityInfo:Lcom/sec/android/daemonapp/info/CityInfo;
    :cond_ce
    new-instance v0, Lcom/sec/android/daemonapp/info/CityInfo;

    iget-object v4, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->city:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->state:Ljava/lang/String;

    const-string v3, ", USA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->location:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->latitude:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->longitude:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/daemonapp/info/CityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v0       #aCityInfo:Lcom/sec/android/daemonapp/info/CityInfo;
    goto :goto_c5

    .line 421
    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->tagnames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_64

    .line 417
    :cond_9
    :goto_9
    return-void

    .line 401
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->this$0:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    .line 403
    const-string v0, "intl"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->intl:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->intl:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->intl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 405
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->intl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->intlcount:I

    goto :goto_9

    .line 409
    :pswitch_32
    const-string v0, "cnt"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->cnt:Ljava/lang/String;

    .line 410
    const-string v0, "city"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->city:Ljava/lang/String;

    .line 411
    const-string v0, "state"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->state:Ljava/lang/String;

    .line 412
    const-string v0, "location"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->location:Ljava/lang/String;

    .line 413
    const-string v0, "latitude"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->latitude:Ljava/lang/String;

    .line 414
    const-string v0, "longitude"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;->longitude:Ljava/lang/String;

    goto :goto_9

    .line 398
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_a
        :pswitch_32
    .end packed-switch
.end method
