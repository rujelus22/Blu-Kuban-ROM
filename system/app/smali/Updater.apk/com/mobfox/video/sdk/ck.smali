.class public final Lcom/mobfox/video/sdk/ck;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field a:Lcom/mobfox/video/sdk/cl;

.field b:Ljava/util/HashMap;

.field private c:Ljava/io/CharArrayWriter;

.field private d:Lcom/mobfox/video/sdk/cn;

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    iput-object v0, p0, Lcom/mobfox/video/sdk/ck;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/ck;->c:Ljava/io/CharArrayWriter;

    new-instance v0, Lcom/mobfox/video/sdk/cn;

    invoke-direct {v0}, Lcom/mobfox/video/sdk/cn;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iput-boolean v1, p0, Lcom/mobfox/video/sdk/ck;->f:Z

    iput-boolean v1, p0, Lcom/mobfox/video/sdk/ck;->g:Z

    iput-boolean v1, p0, Lcom/mobfox/video/sdk/ck;->h:Z

    iput-boolean v1, p0, Lcom/mobfox/video/sdk/ck;->i:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_4

    :goto_3
    return v0

    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v0

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_3
.end method

.method private static b(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v0

    goto :goto_4

    :catch_a
    move-exception v2

    goto :goto_4
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_c

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :catch_c
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public final characters([CII)V
    .registers 5

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->c:Ljava/io/CharArrayWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/CharArrayWriter;->write([CII)V

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    const-string v0, "creative"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    if-nez v0, :cond_1d

    :cond_15
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Creative tag found outside video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->c:Ljava/io/CharArrayWriter;

    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/cs;->h:Ljava/lang/String;

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    const-string v0, "duration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    if-nez v0, :cond_48

    :cond_40
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Duration tag found outside video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->c:Ljava/io/CharArrayWriter;

    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mobfox/video/sdk/cs;->i:I

    goto :goto_2b

    :cond_5f
    const-string v0, "tracker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    if-nez v0, :cond_7b

    :cond_73
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Tracker tag found outside video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v1

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iget-object v2, p0, Lcom/mobfox/video/sdk/ck;->c:Ljava/io/CharArrayWriter;

    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mobfox/video/sdk/cn;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iget v2, v2, Lcom/mobfox/video/sdk/cn;->a:I

    packed-switch v2, :pswitch_data_17a

    :cond_97
    :goto_97
    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iget-object v1, v1, Lcom/mobfox/video/sdk/cn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :pswitch_a1
    iget-object v0, v1, Lcom/mobfox/video/sdk/cs;->z:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iget v2, v2, Lcom/mobfox/video/sdk/cn;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_97

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, v1, Lcom/mobfox/video/sdk/cs;->z:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iget v2, v2, Lcom/mobfox/video/sdk/cn;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    :pswitch_c6
    iget-object v0, v1, Lcom/mobfox/video/sdk/cs;->A:Ljava/util/Vector;

    goto :goto_97

    :pswitch_c9
    iget-object v0, v1, Lcom/mobfox/video/sdk/cs;->B:Ljava/util/Vector;

    goto :goto_97

    :pswitch_cc
    iget-object v0, v1, Lcom/mobfox/video/sdk/cs;->E:Ljava/util/Vector;

    goto :goto_97

    :pswitch_cf
    iget-object v0, v1, Lcom/mobfox/video/sdk/cs;->F:Ljava/util/Vector;

    goto :goto_97

    :pswitch_d2
    iget-object v0, v1, Lcom/mobfox/video/sdk/cs;->C:Ljava/util/Vector;

    goto :goto_97

    :pswitch_d5
    iget-object v0, v1, Lcom/mobfox/video/sdk/cs;->D:Ljava/util/Vector;

    goto :goto_97

    :pswitch_d8
    iget-object v0, v1, Lcom/mobfox/video/sdk/cs;->H:Ljava/util/Vector;

    goto :goto_97

    :pswitch_db
    iget-object v0, v1, Lcom/mobfox/video/sdk/cs;->G:Ljava/util/Vector;

    goto :goto_97

    :cond_de
    const-string v0, "htmloverlay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    if-nez v0, :cond_fa

    :cond_f2
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "htmloverlay tag found outside video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fa
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->c:Ljava/io/CharArrayWriter;

    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/cs;->M:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/mobfox/video/sdk/ck;->f:Z

    goto/16 :goto_2b

    :cond_10c
    const-string v0, "video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->i:Z

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->c:Ljava/io/CharArrayWriter;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->b:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/mobfox/video/sdk/ck;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12d
    iput-boolean v4, p0, Lcom/mobfox/video/sdk/ck;->g:Z

    goto/16 :goto_2b

    :cond_131
    const-string v0, "interstitial"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    iput-boolean v4, p0, Lcom/mobfox/video/sdk/ck;->h:Z

    goto/16 :goto_2b

    :cond_13d
    const-string v0, "markup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_151

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    if-nez v0, :cond_159

    :cond_151
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "markup tag found outside interstitial node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_159
    iput-boolean v4, p0, Lcom/mobfox/video/sdk/ck;->f:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->c:Ljava/io/CharArrayWriter;

    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/g;->e:Ljava/lang/String;

    goto/16 :goto_2b

    :cond_16b
    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0, v4}, Lcom/mobfox/video/sdk/cl;->a(I)V

    goto/16 :goto_2b

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_c6
        :pswitch_c9
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_cc
        :pswitch_cf
        :pswitch_d2
        :pswitch_d5
        :pswitch_db
        :pswitch_d8
    .end packed-switch
.end method

.method public final startDocument()V
    .registers 2

    new-instance v0, Lcom/mobfox/video/sdk/cl;

    invoke-direct {v0}, Lcom/mobfox/video/sdk/cl;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->i:Z

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 13

    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->f:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->c:Ljava/io/CharArrayWriter;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->reset()V

    const-string v0, "activevideolist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/ck;->b:Ljava/util/HashMap;

    iput-boolean v4, p0, Lcom/mobfox/video/sdk/ck;->i:Z

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const-string v0, "ad"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video-to-interstitial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0, v4}, Lcom/mobfox/video/sdk/cl;->a(I)V

    :goto_3b
    const-string v0, "animation"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fade-in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0, v4}, Lcom/mobfox/video/sdk/cl;->b(I)V

    goto :goto_1f

    :cond_4f
    const-string v1, "interstitial-to-video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0, v6}, Lcom/mobfox/video/sdk/cl;->a(I)V

    goto :goto_3b

    :cond_5d
    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0, v7}, Lcom/mobfox/video/sdk/cl;->a(I)V

    goto :goto_3b

    :cond_6b
    const-string v1, "interstitial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0, v3}, Lcom/mobfox/video/sdk/cl;->a(I)V

    goto :goto_3b

    :cond_79
    const-string v1, "noAd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0, v5}, Lcom/mobfox/video/sdk/cl;->a(I)V

    goto :goto_3b

    :cond_87
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9c
    const-string v1, "slide-in-top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0, v7}, Lcom/mobfox/video/sdk/cl;->b(I)V

    goto/16 :goto_1f

    :cond_ab
    const-string v1, "slide-in-bottom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ba

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0, v3}, Lcom/mobfox/video/sdk/cl;->b(I)V

    goto/16 :goto_1f

    :cond_ba
    const-string v1, "slide-in-left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c9

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0, v6}, Lcom/mobfox/video/sdk/cl;->b(I)V

    goto/16 :goto_1f

    :cond_c9
    const-string v1, "slide-in-right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d9

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/cl;->b(I)V

    goto/16 :goto_1f

    :cond_d9
    const-string v1, "flip-in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/cl;->b(I)V

    goto/16 :goto_1f

    :cond_e9
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0, v5}, Lcom/mobfox/video/sdk/cl;->b(I)V

    goto/16 :goto_1f

    :cond_f0
    const-string v0, "video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_175

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->i:Z

    if-eqz v0, :cond_10d

    const-string v0, "expiration"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobfox/video/sdk/ck;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mobfox/video/sdk/ck;->e:J

    goto/16 :goto_1f

    :cond_10d
    iput-boolean v4, p0, Lcom/mobfox/video/sdk/ck;->g:Z

    new-instance v0, Lcom/mobfox/video/sdk/cs;

    invoke-direct {v0}, Lcom/mobfox/video/sdk/cs;-><init>()V

    const-string v1, "orientation"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "landscape"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_163

    const-string v2, "portrait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_163

    iput v4, v0, Lcom/mobfox/video/sdk/cs;->a:I

    :goto_12c
    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v1, :cond_16d

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v1}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v1

    if-ne v1, v3, :cond_166

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v1}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v1

    if-eq v1, v6, :cond_166

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v1}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v1

    if-eq v1, v4, :cond_166

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found Video tag in an interstitial ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v2}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_163
    iput v5, v0, Lcom/mobfox/video/sdk/cs;->a:I

    goto :goto_12c

    :cond_166
    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/cl;->a(Lcom/mobfox/video/sdk/cs;)V

    goto/16 :goto_1f

    :cond_16d
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Video tag found outside document root"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_175
    const-string v0, "interstitial"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25c

    iput-boolean v4, p0, Lcom/mobfox/video/sdk/ck;->h:Z

    new-instance v0, Lcom/mobfox/video/sdk/g;

    invoke-direct {v0}, Lcom/mobfox/video/sdk/g;-><init>()V

    const-string v1, "autoclose"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mobfox/video/sdk/g;->a:I

    const-string v1, "type"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_214

    iput v5, v0, Lcom/mobfox/video/sdk/g;->c:I

    const-string v2, "url"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1ae

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1c3

    :cond_1ae
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Empty url for interstitial type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c3
    iput-object v2, v0, Lcom/mobfox/video/sdk/g;->d:Ljava/lang/String;

    :goto_1c5
    const-string v1, "orientation"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "landscape"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24a

    const-string v2, "portrait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24a

    iput v4, v0, Lcom/mobfox/video/sdk/g;->b:I

    :goto_1dd
    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v1, :cond_254

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v1}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v1

    if-ne v1, v7, :cond_24d

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v1}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v1

    if-eq v1, v6, :cond_24d

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v1}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v1

    if-eq v1, v4, :cond_24d

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found Interstitial tag in a video ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v2}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_214
    const-string v2, "markup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_221

    iput v4, v0, Lcom/mobfox/video/sdk/g;->c:I

    iput-boolean v4, p0, Lcom/mobfox/video/sdk/ck;->f:Z

    goto :goto_1c5

    :cond_221
    iput v5, v0, Lcom/mobfox/video/sdk/g;->c:I

    const-string v2, "url"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_231

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_246

    :cond_231
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Empty url for interstitial type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_246
    iput-object v2, v0, Lcom/mobfox/video/sdk/g;->d:Ljava/lang/String;

    goto/16 :goto_1c5

    :cond_24a
    iput v5, v0, Lcom/mobfox/video/sdk/g;->b:I

    goto :goto_1dd

    :cond_24d
    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/cl;->a(Lcom/mobfox/video/sdk/g;)V

    goto/16 :goto_1f

    :cond_254
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Interstitial tag found outside document root"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25c
    const-string v0, "creative"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e9

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_270

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    if-nez v0, :cond_278

    :cond_270
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Creative tag found outside video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_278
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v1

    const-string v0, "delivery"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "progressive"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2de

    iput v5, v1, Lcom/mobfox/video/sdk/cs;->b:I

    :goto_28e
    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_29e

    :cond_29c
    const-string v0, "application/mp4"

    :cond_29e
    const-string v2, "display"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullscreen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e6

    const-string v3, "normal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    iput v4, v1, Lcom/mobfox/video/sdk/cs;->c:I

    :goto_2b6
    iput-object v0, v1, Lcom/mobfox/video/sdk/cs;->d:Ljava/lang/String;

    const-string v0, "width"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobfox/video/sdk/ck;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/mobfox/video/sdk/cs;->f:I

    const-string v0, "height"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobfox/video/sdk/ck;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/mobfox/video/sdk/cs;->g:I

    const-string v0, "bitrate"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobfox/video/sdk/ck;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/mobfox/video/sdk/cs;->e:I

    goto/16 :goto_1f

    :cond_2de
    const-string v2, "streaming"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    iput v4, v1, Lcom/mobfox/video/sdk/cs;->b:I

    goto :goto_28e

    :cond_2e6
    iput v5, v1, Lcom/mobfox/video/sdk/cs;->c:I

    goto :goto_2b6

    :cond_2e9
    const-string v0, "skipbutton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_371

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->g:Z

    if-eqz v0, :cond_331

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_301

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    if-nez v0, :cond_309

    :cond_301
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "skipbutton tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_309
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/cs;->j:Z

    const-string v1, "showafter"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mobfox/video/sdk/cs;->k:I

    const-string v1, "graphics"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/cs;->l:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_331
    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->h:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_341

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    if-nez v0, :cond_349

    :cond_341
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "skipbutton tag found inside wrong interstitial node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_349
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/g;->f:Z

    const-string v1, "showafter"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mobfox/video/sdk/g;->g:I

    const-string v1, "graphics"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/g;->h:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_371
    const-string v0, "navigation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e9

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->g:Z

    if-eqz v0, :cond_3b1

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_389

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    if-nez v0, :cond_391

    :cond_389
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "navigation tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_391
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/cs;->m:Z

    const-string v1, "allowtap"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/cs;->n:Z

    goto/16 :goto_1f

    :cond_3b1
    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->h:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_3c1

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    if-nez v0, :cond_3c9

    :cond_3c1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "navigation tag found inside wrong interstitial node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c9
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/g;->i:Z

    const-string v1, "allowtap"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/g;->j:Z

    goto/16 :goto_1f

    :cond_3e9
    const-string v0, "topbar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_481

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->g:Z

    if-eqz v0, :cond_425

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_401

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    if-nez v0, :cond_409

    :cond_401
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "topbar tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_409
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/cs;->o:Z

    const-string v1, "custombackgroundurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/cs;->p:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_425
    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->h:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_435

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    if-nez v0, :cond_43d

    :cond_435
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "topbar tag found inside wrong interstitial node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43d
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/g;->k:Z

    const-string v1, "custombackgroundurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/g;->l:Ljava/lang/String;

    const-string v1, "title"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fixed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_471

    iput v5, v0, Lcom/mobfox/video/sdk/g;->m:I

    const-string v1, "titlecontent"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/g;->n:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_471
    const-string v2, "variable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47d

    iput v4, v0, Lcom/mobfox/video/sdk/g;->m:I

    goto/16 :goto_1f

    :cond_47d
    iput v7, v0, Lcom/mobfox/video/sdk/g;->m:I

    goto/16 :goto_1f

    :cond_481
    const-string v0, "bottombar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_589

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->g:Z

    if-eqz v0, :cond_4f9

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_499

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    if-nez v0, :cond_4a1

    :cond_499
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "bottombar tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a1
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/cs;->q:Z

    const-string v1, "custombackgroundurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/cs;->r:Ljava/lang/String;

    const-string v1, "pausebutton"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/cs;->s:Z

    const-string v1, "replaybutton"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/cs;->t:Z

    const-string v1, "timer"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/cs;->u:Z

    const-string v1, "pausebuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/cs;->v:Ljava/lang/String;

    const-string v1, "playbuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/cs;->w:Ljava/lang/String;

    const-string v1, "replaybuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/cs;->x:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_4f9
    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->h:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_509

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    if-nez v0, :cond_511

    :cond_509
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "bottombar tag found inside wrong interstitial node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_511
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/g;->o:Z

    const-string v1, "custombackgroundurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/g;->p:Ljava/lang/String;

    const-string v1, "backbutton"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/g;->q:Z

    const-string v1, "forwardbutton"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/g;->r:Z

    const-string v1, "reloadbutton"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/g;->s:Z

    const-string v1, "externalbutton"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/g;->t:Z

    const-string v1, "timer"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/g;->u:Z

    const-string v1, "backbuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/g;->v:Ljava/lang/String;

    const-string v1, "forwardbuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/g;->w:Ljava/lang/String;

    const-string v1, "reloadbuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/g;->x:Ljava/lang/String;

    const-string v1, "externalbuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobfox/video/sdk/g;->y:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_589
    const-string v0, "navicon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63b

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->g:Z

    if-eqz v0, :cond_5e6

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_5a1

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    if-nez v0, :cond_5a9

    :cond_5a1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "navicon tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a9
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    new-instance v1, Lcom/mobfox/video/sdk/cd;

    invoke-direct {v1}, Lcom/mobfox/video/sdk/cd;-><init>()V

    const-string v2, "title"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mobfox/video/sdk/cd;->a:Ljava/lang/String;

    const-string v2, "clickurl"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mobfox/video/sdk/cd;->d:Ljava/lang/String;

    const-string v2, "iconurl"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mobfox/video/sdk/cd;->b:Ljava/lang/String;

    const-string v2, "opentype"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e3

    iput v5, v1, Lcom/mobfox/video/sdk/cd;->c:I

    :goto_5dc
    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->y:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_5e3
    iput v4, v1, Lcom/mobfox/video/sdk/cd;->c:I

    goto :goto_5dc

    :cond_5e6
    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->h:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_5f6

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    if-nez v0, :cond_5fe

    :cond_5f6
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "navicon tag found inside wrong interstitial node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5fe
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    new-instance v1, Lcom/mobfox/video/sdk/cd;

    invoke-direct {v1}, Lcom/mobfox/video/sdk/cd;-><init>()V

    const-string v2, "title"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mobfox/video/sdk/cd;->a:Ljava/lang/String;

    const-string v2, "clickurl"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mobfox/video/sdk/cd;->d:Ljava/lang/String;

    const-string v2, "iconurl"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mobfox/video/sdk/cd;->b:Ljava/lang/String;

    const-string v2, "opentype"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_638

    iput v5, v1, Lcom/mobfox/video/sdk/cd;->c:I

    :goto_631
    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->z:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_638
    iput v4, v1, Lcom/mobfox/video/sdk/cd;->c:I

    goto :goto_631

    :cond_63b
    const-string v0, "tracker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_747

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->g:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_653

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    if-nez v0, :cond_65b

    :cond_653
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "tracker tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65b
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    invoke-virtual {v1}, Lcom/mobfox/video/sdk/cn;->a()V

    const-string v1, "type"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67a

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iput v5, v0, Lcom/mobfox/video/sdk/cn;->a:I

    goto/16 :goto_1f

    :cond_67a
    const-string v2, "complete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_688

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iput v4, v0, Lcom/mobfox/video/sdk/cn;->a:I

    goto/16 :goto_1f

    :cond_688
    const-string v2, "midpoint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69e

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iput v7, v1, Lcom/mobfox/video/sdk/cn;->a:I

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iget v0, v0, Lcom/mobfox/video/sdk/cs;->i:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/mobfox/video/sdk/cn;->c:I

    goto/16 :goto_1f

    :cond_69e
    const-string v2, "firstquartile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b4

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iput v3, v1, Lcom/mobfox/video/sdk/cn;->a:I

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iget v0, v0, Lcom/mobfox/video/sdk/cs;->i:I

    div-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/mobfox/video/sdk/cn;->c:I

    goto/16 :goto_1f

    :cond_6b4
    const-string v2, "thirdquartile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6cc

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iput v6, v1, Lcom/mobfox/video/sdk/cn;->a:I

    iget-object v1, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    iget v0, v0, Lcom/mobfox/video/sdk/cs;->i:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/mobfox/video/sdk/cn;->c:I

    goto/16 :goto_1f

    :cond_6cc
    const-string v0, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6db

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    const/4 v1, 0x6

    iput v1, v0, Lcom/mobfox/video/sdk/cn;->a:I

    goto/16 :goto_1f

    :cond_6db
    const-string v0, "unpause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6ea

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    const/4 v1, 0x7

    iput v1, v0, Lcom/mobfox/video/sdk/cn;->a:I

    goto/16 :goto_1f

    :cond_6ea
    const-string v0, "mute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6fa

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    const/16 v1, 0x8

    iput v1, v0, Lcom/mobfox/video/sdk/cn;->a:I

    goto/16 :goto_1f

    :cond_6fa
    const-string v0, "unmute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70a

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    const/16 v1, 0x9

    iput v1, v0, Lcom/mobfox/video/sdk/cn;->a:I

    goto/16 :goto_1f

    :cond_70a
    const-string v0, "replay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71a

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    const/16 v1, 0xb

    iput v1, v0, Lcom/mobfox/video/sdk/cn;->a:I

    goto/16 :goto_1f

    :cond_71a
    const-string v0, "skip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72a

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    const/16 v1, 0xa

    iput v1, v0, Lcom/mobfox/video/sdk/cn;->a:I

    goto/16 :goto_1f

    :cond_72a
    if-eqz v1, :cond_1f

    const-string v0, "sec:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    const/4 v2, 0x5

    iput v2, v0, Lcom/mobfox/video/sdk/cn;->a:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->d:Lcom/mobfox/video/sdk/cn;

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mobfox/video/sdk/cn;->c:I

    goto/16 :goto_1f

    :cond_747
    const-string v0, "htmloverlay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/ck;->g:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_75f

    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    if-nez v0, :cond_767

    :cond_75f
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "htmloverlay tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_767
    iget-object v0, p0, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    iput-boolean v4, p0, Lcom/mobfox/video/sdk/ck;->f:Z

    const-string v1, "type"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7be

    iput v5, v0, Lcom/mobfox/video/sdk/cs;->K:I

    const-string v2, "url"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_78d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7a2

    :cond_78d
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Empty url for overlay type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a2
    iput-object v2, v0, Lcom/mobfox/video/sdk/cs;->L:Ljava/lang/String;

    :goto_7a4
    const-string v1, "showafter"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mobfox/video/sdk/cs;->J:I

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobfox/video/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/cs;->I:Z

    goto/16 :goto_1f

    :cond_7be
    const-string v2, "markup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7cb

    iput v4, v0, Lcom/mobfox/video/sdk/cs;->K:I

    iput-boolean v4, p0, Lcom/mobfox/video/sdk/ck;->f:Z

    goto :goto_7a4

    :cond_7cb
    iput v5, v0, Lcom/mobfox/video/sdk/cs;->K:I

    const-string v2, "url"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7db

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7f0

    :cond_7db
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Empty url for overlay type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f0
    iput-object v2, v0, Lcom/mobfox/video/sdk/cs;->L:Ljava/lang/String;

    goto :goto_7a4
.end method
