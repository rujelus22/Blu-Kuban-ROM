.class public Lcom/sec/android/framework/draw/XMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/framework/draw/XMLParser$a;
    }
.end annotation


# static fields
.field private static synthetic h:[I


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Ljava/lang/StringBuilder;

.field private c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

.field private d:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

.field private e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/framework/draw/XMLParser$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    .line 61
    return-void
.end method

.method private static a(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 278
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-interface {p0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_7

    move-object p2, v0

    :cond_7
    return-object p2
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Vector;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 232
    if-nez p0, :cond_8

    .line 242
    :cond_7
    return-object v0

    .line 235
    :cond_8
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 237
    :try_start_14
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_23} :catch_26

    .line 235
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :catch_26
    move-exception v4

    goto :goto_23
.end method

.method private static synthetic a()[I
    .registers 3

    .prologue
    .line 33
    sget-object v0, Lcom/sec/android/framework/draw/XMLParser;->h:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/sec/android/framework/draw/XMLParser$a;->values()[Lcom/sec/android/framework/draw/XMLParser$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->i:Lcom/sec/android/framework/draw/XMLParser$a;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$a;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_72

    :goto_16
    :try_start_16
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->f:Lcom/sec/android/framework/draw/XMLParser$a;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1f} :catch_70

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->b:Lcom/sec/android/framework/draw/XMLParser$a;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_28} :catch_6e

    :goto_28
    :try_start_28
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->d:Lcom/sec/android/framework/draw/XMLParser$a;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_31} :catch_6c

    :goto_31
    :try_start_31
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->e:Lcom/sec/android/framework/draw/XMLParser$a;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3a} :catch_6a

    :goto_3a
    :try_start_3a
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->h:Lcom/sec/android/framework/draw/XMLParser$a;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$a;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_44} :catch_68

    :goto_44
    :try_start_44
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->a:Lcom/sec/android/framework/draw/XMLParser$a;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_66

    :goto_4d
    :try_start_4d
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->c:Lcom/sec/android/framework/draw/XMLParser$a;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_56} :catch_64

    :goto_56
    :try_start_56
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->g:Lcom/sec/android/framework/draw/XMLParser$a;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$a;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_5f} :catch_62

    :goto_5f
    sput-object v0, Lcom/sec/android/framework/draw/XMLParser;->h:[I

    goto :goto_4

    :catch_62
    move-exception v1

    goto :goto_5f

    :catch_64
    move-exception v1

    goto :goto_56

    :catch_66
    move-exception v1

    goto :goto_4d

    :catch_68
    move-exception v1

    goto :goto_44

    :catch_6a
    move-exception v1

    goto :goto_3a

    :catch_6c
    move-exception v1

    goto :goto_31

    :catch_6e
    move-exception v1

    goto :goto_28

    :catch_70
    move-exception v1

    goto :goto_1f

    :catch_72
    move-exception v1

    goto :goto_16
.end method

.method private static b(Ljava/lang/String;)Ljava/util/Vector;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 248
    if-nez p0, :cond_8

    .line 258
    :cond_7
    return-object v0

    .line 251
    :cond_8
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 253
    :try_start_14
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_23} :catch_26

    .line 251
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :catch_26
    move-exception v4

    goto :goto_23
.end method

.method private static c(Ljava/lang/String;)Ljava/util/Vector;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 264
    if-nez p0, :cond_8

    .line 274
    :cond_7
    return-object v0

    .line 267
    :cond_8
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 269
    :try_start_14
    new-instance v5, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_26} :catch_29

    .line 267
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :catch_29
    move-exception v4

    goto :goto_26
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/XMLParser$a;

    .line 123
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 125
    invoke-static {}, Lcom/sec/android/framework/draw/XMLParser;->a()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/XMLParser$a;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_28

    .line 133
    :goto_1a
    return-void

    .line 127
    :pswitch_1b
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 130
    :pswitch_21
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 125
    nop

    :pswitch_data_28
    .packed-switch 0x4
        :pswitch_1b
        :pswitch_21
    .end packed-switch
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    .line 137
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/XMLParser$a;

    .line 139
    invoke-static {}, Lcom/sec/android/framework/draw/XMLParser;->a()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/XMLParser$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_78

    .line 145
    :cond_16
    :goto_16
    return-void

    .line 141
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->d:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    check-cast v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/framework/draw/XMLParser;->c(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v7

    .line 142
    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/framework/draw/XMLParser;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v8

    .line 141
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v1, 0x0

    move v6, v1

    :goto_35
    if-lt v6, v9, :cond_52

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->endStroke()Landroid/graphics/RectF;

    invoke-virtual {v0, v10}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->markStrokeEnded(Z)V

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeFixed()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->clearVectors(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStroker()Lcom/sec/android/framework/draw/sprites/strokes/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/c;->a()V

    goto :goto_16

    :cond_52
    invoke-virtual {v7, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v3, v1

    iget v1, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    iget v2, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->addPoint(FFFJ)Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {v0, v10}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->strokeLineSegment(Z)Landroid/graphics/RectF;

    :cond_73
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_35

    .line 139
    nop

    :pswitch_data_78
    .packed-switch 0x3
        :pswitch_17
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;[BLjava/util/Vector;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Vector",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 64
    .line 65
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/sec/android/framework/draw/XMLParser;->e:Ljava/util/Stack;

    .line 66
    iget-object v2, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v2, v2, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v2}, Lcom/sec/android/framework/draw/AbstractStage;->clearStage()V

    .line 67
    iput-object p3, p0, Lcom/sec/android/framework/draw/XMLParser;->f:Ljava/util/Vector;

    .line 68
    iput v0, p0, Lcom/sec/android/framework/draw/XMLParser;->g:I

    .line 70
    if-eqz p2, :cond_23

    .line 71
    iget-object v2, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v2, v2, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    array-length v3, p2

    invoke-static {p2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/AbstractStage;->initializeSprites(Landroid/graphics/Bitmap;)V

    .line 73
    :cond_23
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 75
    :try_start_2b
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_36
    .catch Lorg/xml/sax/SAXException; {:try_start_2b .. :try_end_36} :catch_4a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2b .. :try_end_36} :catch_50
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_36} :catch_56

    move-result-object v3

    .line 76
    :try_start_37
    invoke-interface {v3, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 77
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v3, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_47
    .catch Lorg/xml/sax/SAXException; {:try_start_37 .. :try_end_47} :catch_6b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_37 .. :try_end_47} :catch_69
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_47} :catch_67

    .line 86
    :goto_47
    if-nez v3, :cond_5c

    .line 95
    :goto_49
    return v0

    .line 78
    :catch_4a
    move-exception v2

    move-object v3, v4

    :goto_4c
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_47

    .line 80
    :catch_50
    move-exception v2

    move-object v3, v4

    :goto_52
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_47

    .line 82
    :catch_56
    move-exception v2

    move-object v3, v4

    :goto_58
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 90
    :cond_5c
    iput-object v4, p0, Lcom/sec/android/framework/draw/XMLParser;->f:Ljava/util/Vector;

    .line 91
    iput-object v4, p0, Lcom/sec/android/framework/draw/XMLParser;->d:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 93
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->onActivate(Z)V

    move v0, v1

    .line 95
    goto :goto_49

    .line 82
    :catch_67
    move-exception v2

    goto :goto_58

    .line 80
    :catch_69
    move-exception v2

    goto :goto_52

    .line 78
    :catch_6b
    move-exception v2

    goto :goto_4c
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 100
    invoke-static {p2}, Lcom/sec/android/framework/draw/XMLParser$a;->a(Ljava/lang/String;)Lcom/sec/android/framework/draw/XMLParser$a;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->e:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/sec/android/framework/draw/XMLParser;->a()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/XMLParser$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_254

    .line 117
    :cond_19
    :goto_19
    :pswitch_19
    return-void

    .line 105
    :pswitch_1a
    const-string v0, "%d,%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/sec/android/framework/draw/Setting;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    sget v2, Lcom/sec/android/framework/draw/Setting;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-static {p4, v1, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v7, v7, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->changeCanvasSize(Landroid/graphics/Rect;)V

    goto :goto_19

    .line 108
    :pswitch_5c
    const-string v0, "type"

    sget-object v1, Lcom/sec/android/framework/draw/Setting;->c:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->lookup(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v1

    const-string v0, "#%08x"

    new-array v2, v8, [Ljava/lang/Object;

    sget v3, Lcom/sec/android/framework/draw/Setting;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "color"

    invoke-static {p4, v2, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v5, v2

    const-string v0, "parameter"

    sget-object v2, Lcom/sec/android/framework/draw/Setting;->d:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    invoke-virtual {v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v0, v2}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->lookup(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    move-result-object v2

    const-string v0, "input"

    sget-object v3, Lcom/sec/android/framework/draw/Setting;->e:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v0, v3}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->lookup(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    move-result-object v3

    sget v0, Lcom/sec/android/framework/draw/Setting;->a:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v4, "width"

    invoke-static {p4, v4, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const-string v0, "1"

    const-string v6, "visible"

    invoke-static {p4, v6, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_250

    move v6, v7

    :goto_ce
    const-string v0, "0"

    const-string v9, "fixed"

    invoke-static {p4, v9, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24d

    :goto_de
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v0, v0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->factory:Lcom/sec/android/framework/draw/sprites/ISpriteFactory;

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/framework/draw/sprites/ISpriteFactory;->createStrokeSprite(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;FI)Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Hand:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    if-ne v3, v1, :cond_11f

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getHandSpeedParameter()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setSpeedParameters([F)V

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getHandPressureParameter()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setPressureParameters([F)V

    :goto_100
    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v1, v0, v7}, Lcom/sec/android/framework/draw/AbstractStage;->addSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Z)V

    invoke-virtual {v0, v6}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setVisible(Z)V

    invoke-virtual {v0, v8}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setStrokeFixed(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->a:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->b:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->d:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    goto/16 :goto_19

    :cond_11f
    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getTabletSpeedParameter()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setSpeedParameters([F)V

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getTabletPressureParameter()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setPressureParameters([F)V

    goto :goto_100

    .line 111
    :pswitch_136
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->f:Ljava/util/Vector;

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/framework/draw/XMLParser;->g:I

    if-gt v0, v1, :cond_149

    :cond_144
    const/4 v0, 0x0

    :goto_145
    iput-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->d:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    goto/16 :goto_19

    :cond_149
    const-string v0, "point"

    invoke-static {p4, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/framework/draw/XMLParser;->b(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    const-string v0, "size"

    invoke-static {p4, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    const-string v0, "angle"

    invoke-static {p4, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "1"

    const-string v1, "visible"

    invoke-static {p4, v1, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24a

    move v1, v7

    :goto_178
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v5, v0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->factory:Lcom/sec/android/framework/draw/sprites/ISpriteFactory;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v5, v6, v2, v9, v0}, Lcom/sec/android/framework/draw/sprites/ISpriteFactory;->createImageSprite(FFII)Lcom/sec/android/framework/draw/sprites/c;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v0, v0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0, v2, v7}, Lcom/sec/android/framework/draw/AbstractStage;->addSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Z)V

    invoke-virtual {v2, v1}, Lcom/sec/android/framework/draw/sprites/c;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->f:Ljava/util/Vector;

    iget v1, p0, Lcom/sec/android/framework/draw/XMLParser;->g:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->f:Ljava/util/Vector;

    iget v3, p0, Lcom/sec/android/framework/draw/XMLParser;->g:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_206

    iget-object v1, v2, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1d6

    iget-object v1, v2, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1d6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v3, :cond_211

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    iget-object v3, v2, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v0, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_203
    invoke-virtual {v2}, Lcom/sec/android/framework/draw/sprites/c;->a()V

    :cond_206
    iput v4, v2, Lcom/sec/android/framework/draw/sprites/c;->b:I

    iget v0, p0, Lcom/sec/android/framework/draw/XMLParser;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/framework/draw/XMLParser;->g:I

    move-object v0, v2

    goto/16 :goto_145

    :cond_211
    iput-object v0, v2, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    goto :goto_203

    .line 114
    :pswitch_214
    const-string v0, "id"

    invoke-static {p4, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "createCommand"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/AbstractStage;->getUndoList()Ljava/util/LinkedList;

    move-result-object v1

    new-instance v2, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;

    iget-object v3, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v3, v3, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/AbstractStage;->getSprites()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    iget-object v3, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v3, v3, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-direct {v2, v0, v3}, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;-><init>(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Lcom/sec/android/framework/draw/AbstractStage;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :cond_24a
    move v1, v8

    goto/16 :goto_178

    :cond_24d
    move v8, v7

    goto/16 :goto_de

    :cond_250
    move v6, v8

    goto/16 :goto_ce

    .line 103
    nop

    :pswitch_data_254
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_5c
        :pswitch_19
        :pswitch_19
        :pswitch_136
        :pswitch_19
        :pswitch_19
        :pswitch_214
    .end packed-switch
.end method
