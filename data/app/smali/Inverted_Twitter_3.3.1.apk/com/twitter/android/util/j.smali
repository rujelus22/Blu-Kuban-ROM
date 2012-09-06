.class public final Lcom/twitter/android/util/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/twitter/android/util/j;->a:Z

    return-void
.end method

.method public static a(II)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://maps.google.com/maps/api/staticmap?sensor=false&size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&markers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_1e

    :cond_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/network/d;ILcom/twitter/android/network/j;Landroid/net/Uri;Ljava/lang/String;Lcom/twitter/android/network/l;)Ljava/lang/String;
    .registers 16

    sget-boolean v0, Lcom/twitter/android/util/j;->a:Z

    if-eqz v0, :cond_18

    const-string v0, "MediaUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uploading: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    packed-switch p2, :pswitch_data_1b2

    const/4 v0, 0x0

    :goto_1c
    return-object v0

    :pswitch_1d
    new-instance v3, Lcom/twitter/android/network/a;

    sget v0, Lcom/twitter/android/eb;->oauth_echo_url_json:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p3, v0}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;Ljava/lang/String;)V

    const-string v1, "http://api.twitpic.com/2/upload.xml"

    const-string v0, "933f5ffed8192499f65f1f7b733e11be"

    :goto_2c
    const/4 v2, 0x0

    :try_start_2d
    new-instance v4, Lcom/twitter/android/network/g;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/twitter/android/network/g;-><init>(Lcom/twitter/android/network/l;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_19d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3a} :catch_1ac
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2d .. :try_end_3a} :catch_17a
    .catch Lorg/xml/sax/SAXException; {:try_start_2d .. :try_end_3a} :catch_18b

    move-result-object v6

    :try_start_3b
    const-string v2, "media"

    const/16 v5, 0x8

    invoke-static {v5}, Lcom/twitter/android/util/x;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/twitter/android/network/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)I

    move-result v2

    sget-boolean v5, Lcom/twitter/android/util/j;->a:Z

    if-eqz v5, :cond_5f

    const-string v5, "MediaUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Uploading bytes: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    const-string v2, "key"

    invoke-virtual {v4, v2, v0}, Lcom/twitter/android/network/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "message"

    invoke-virtual {v4, v0, p5}, Lcom/twitter/android/network/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    invoke-virtual {v4}, Lcom/twitter/android/network/g;->a()V

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x100

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v0, Lcom/twitter/android/network/i;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/a;Ljava/io/OutputStream;Lcom/twitter/android/network/l;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/i;->a(I)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_176

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "=\"UTF-8\">"

    const-string v3, "=\"UTF-8\"?>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_bd
    .catchall {:try_start_3b .. :try_end_bd} :catchall_1a3
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_bd} :catch_100
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3b .. :try_end_bd} :catch_1aa
    .catch Lorg/xml/sax/SAXException; {:try_start_3b .. :try_end_bd} :catch_1a8

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_1ba

    invoke-static {v6}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto/16 :goto_1c

    :pswitch_c8
    new-instance v3, Lcom/twitter/android/network/a;

    sget v0, Lcom/twitter/android/eb;->oauth_echo_url_xml:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p3, v0}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;Ljava/lang/String;)V

    const-string v1, "http://yfrog.com/api/xauth_upload"

    const-string v0, "28CFITXYdb4b82e828ee1f76ad71847fd23d1a5b"

    goto/16 :goto_2c

    :pswitch_d9
    :try_start_d9
    const-string v2, "url"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1b0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1b0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://twitpic.com/0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Upload failed [Invalid url]"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_100
    .catchall {:try_start_d9 .. :try_end_100} :catchall_1a3
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_100} :catch_100
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d9 .. :try_end_100} :catch_1aa
    .catch Lorg/xml/sax/SAXException; {:try_start_d9 .. :try_end_100} :catch_1a8

    :catch_100
    move-exception v0

    move-object v1, v6

    :goto_102
    :try_start_102
    sget-boolean v2, Lcom/twitter/android/util/j;->a:Z

    if-eqz v2, :cond_10d

    const-string v2, "MediaUtil"

    const-string v3, "upload"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10d
    .catchall {:try_start_102 .. :try_end_10d} :catchall_1a5

    :cond_10d
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    :goto_110
    const/4 v0, 0x0

    goto/16 :goto_1c

    :pswitch_113
    :try_start_113
    const-string v2, "stat"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_170

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_127
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_16e

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_16a

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mediaurl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16a

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_16a

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :cond_14d
    :goto_14d
    sget-boolean v1, Lcom/twitter/android/util/j;->a:Z

    if-eqz v1, :cond_165

    const-string v1, "MediaUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Media URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_165
    .catchall {:try_start_113 .. :try_end_165} :catchall_1a3
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_165} :catch_100
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_113 .. :try_end_165} :catch_1aa
    .catch Lorg/xml/sax/SAXException; {:try_start_113 .. :try_end_165} :catch_1a8

    :cond_165
    invoke-static {v6}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto/16 :goto_1c

    :cond_16a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_127

    :cond_16e
    move-object v0, v1

    goto :goto_14d

    :cond_170
    invoke-static {v6}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto/16 :goto_1c

    :cond_176
    invoke-static {v6}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_110

    :catch_17a
    move-exception v0

    move-object v6, v2

    :goto_17c
    :try_start_17c
    sget-boolean v1, Lcom/twitter/android/util/j;->a:Z

    if-eqz v1, :cond_187

    const-string v1, "MediaUtil"

    const-string v2, "upload"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_187
    .catchall {:try_start_17c .. :try_end_187} :catchall_1a3

    :cond_187
    invoke-static {v6}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_110

    :catch_18b
    move-exception v0

    move-object v6, v2

    :goto_18d
    :try_start_18d
    sget-boolean v1, Lcom/twitter/android/util/j;->a:Z

    if-eqz v1, :cond_198

    const-string v1, "MediaUtil"

    const-string v2, "upload"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_198
    .catchall {:try_start_18d .. :try_end_198} :catchall_1a3

    :cond_198
    invoke-static {v6}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto/16 :goto_110

    :catchall_19d
    move-exception v0

    move-object v6, v2

    :goto_19f
    invoke-static {v6}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1a3
    move-exception v0

    goto :goto_19f

    :catchall_1a5
    move-exception v0

    move-object v6, v1

    goto :goto_19f

    :catch_1a8
    move-exception v0

    goto :goto_18d

    :catch_1aa
    move-exception v0

    goto :goto_17c

    :catch_1ac
    move-exception v0

    move-object v1, v2

    goto/16 :goto_102

    :cond_1b0
    move-object v0, v1

    goto :goto_14d

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_c8
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_113
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/twitter/android/util/j;->c(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_138

    :cond_7
    :goto_7
    return-object p0

    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :pswitch_1c
    invoke-static {v0, p0}, Lcom/twitter/android/util/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://twitpic.com/show/large/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :pswitch_30
    invoke-static {v0, p0}, Lcom/twitter/android/util/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://api.plixi.com/api/tpapi.svc/imagefromurl?size=medium&url=http://tweetphoto.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :pswitch_44
    invoke-static {v0, p0}, Lcom/twitter/android/util/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://photozou.jp/p/img/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :pswitch_58
    invoke-static {v0, p0}, Lcom/twitter/android/util/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://twitgoo.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :pswitch_72
    invoke-static {v0, p0}, Lcom/twitter/android/util/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x24

    :try_start_79
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://api.dailybooth.com/v1/pictures/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x200

    new-array v2, v2, [B

    :goto_aa
    const/4 v3, 0x0

    const/16 v4, 0x200

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d9

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_b7
    .catchall {:try_start_79 .. :try_end_b7} :catchall_124
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_b7} :catch_b8
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_b7} :catch_103

    goto :goto_aa

    :catch_b8
    move-exception v0

    :try_start_b9
    sget-boolean v2, Lcom/twitter/android/util/j;->a:Z

    if-eqz v2, :cond_c4

    const-string v2, "MediaUtil"

    const-string v3, "Opening url"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c4
    .catchall {:try_start_b9 .. :try_end_c4} :catchall_124

    :cond_c4
    if-eqz v1, :cond_7

    :try_start_c6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_cb

    goto/16 :goto_7

    :catch_cb
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/util/j;->a:Z

    if-eqz v1, :cond_7

    const-string v1, "MediaUtil"

    const-string v2, "Closing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :cond_d9
    :try_start_d9
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "urls"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "large"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_ed
    .catchall {:try_start_d9 .. :try_end_ed} :catchall_124
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_ed} :catch_b8
    .catch Lorg/json/JSONException; {:try_start_d9 .. :try_end_ed} :catch_103

    move-result-object p0

    if-eqz v1, :cond_7

    :try_start_f0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f5

    goto/16 :goto_7

    :catch_f5
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/util/j;->a:Z

    if-eqz v1, :cond_7

    const-string v1, "MediaUtil"

    const-string v2, "Closing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catch_103
    move-exception v0

    :try_start_104
    sget-boolean v2, Lcom/twitter/android/util/j;->a:Z

    if-eqz v2, :cond_10f

    const-string v2, "MediaUtil"

    const-string v3, "Parsing"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10f
    .catchall {:try_start_104 .. :try_end_10f} :catchall_124

    :cond_10f
    if-eqz v1, :cond_7

    :try_start_111
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_116

    goto/16 :goto_7

    :catch_116
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/util/j;->a:Z

    if-eqz v1, :cond_7

    const-string v1, "MediaUtil"

    const-string v2, "Closing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catchall_124
    move-exception v0

    if-eqz v1, :cond_12a

    :try_start_127
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12a} :catch_12b

    :cond_12a
    :goto_12a
    throw v0

    :catch_12b
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/util/j;->a:Z

    if-eqz v2, :cond_12a

    const-string v2, "MediaUtil"

    const-string v3, "Closing"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12a

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1c
        :pswitch_30
        :pswitch_44
        :pswitch_58
        :pswitch_72
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/twitter/android/util/j;->c(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_34

    :cond_8
    :goto_8
    return v0

    :pswitch_9
    invoke-static {v1, p0}, Lcom/twitter/android/util/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    :goto_14
    if-ge v1, v3, :cond_31

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_8

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_8

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_8

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_8

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_31
    const/4 v0, 0x1

    goto :goto_8

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;)I
    .registers 2

    const-string v0, "http://yfrog.com/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const-string v0, "http://twitpic.com/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    goto :goto_9

    :cond_14
    const-string v0, "http://plixi.com/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x3

    goto :goto_9

    :cond_1e
    const-string v0, "http://photozou.jp/photo/show/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x4

    goto :goto_9

    :cond_28
    const-string v0, "http://twitgoo.com/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x5

    goto :goto_9

    :cond_32
    const-string v0, "http://dailybooth.com/u/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x6

    goto :goto_9

    :cond_3c
    const/4 v0, 0x0

    goto :goto_9
.end method
