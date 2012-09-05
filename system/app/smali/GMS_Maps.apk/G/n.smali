.class public LG/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/xmlpull/v1/XmlPullParserFactory;

.field private final b:LL/e;

.field private c:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(LL/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, LG/n;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    iput-object p1, p0, LG/n;->b:LL/e;

    invoke-virtual {p0}, LG/n;->a()V

    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)LG/g;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1}, LG/n;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "location-scan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-direct {p0, p1}, LG/n;->d(Lorg/xmlpull/v1/XmlPullParser;)LG/d;

    move-result-object v0

    goto :goto_7

    :cond_19
    const-string v2, "provider-enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-direct {p0, p1}, LG/n;->e(Lorg/xmlpull/v1/XmlPullParser;)LG/e;

    move-result-object v0

    goto :goto_7

    :cond_26
    const-string v2, "provider-status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, LG/n;->f(Lorg/xmlpull/v1/XmlPullParser;)LG/f;

    move-result-object v0

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "wifi-scan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "cell-scan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "location-scan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "provider-enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "provider-status"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private b()Lorg/xmlpull/v1/XmlPullParser;
    .registers 5

    iget-object v0, p0, LG/n;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v0, p0, LG/n;->b:LL/e;

    invoke-interface {v0}, LL/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    return-object v1
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    :goto_5
    if-eq v1, v0, :cond_1a

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LG/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    :goto_14
    return v0

    :cond_15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_5

    :cond_1a
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)J
    .registers 3

    const/4 v0, 0x0

    const-string v1, "time"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lar/f;->a(Ljava/lang/String;)Lar/f;

    move-result-object v0

    invoke-virtual {v0}, Lar/f;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method private d(Lorg/xmlpull/v1/XmlPullParser;)LG/d;
    .registers 8

    const/4 v5, 0x0

    const-string v0, "accuracy"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "latitude"

    invoke-interface {p1, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "longitude"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "speed"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "provider"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/location/Location;

    invoke-direct {v5, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v5, v0}, Landroid/location/Location;->setAccuracy(F)V

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {v5}, Landroid/location/Location;->removeSpeed()V

    :goto_42
    invoke-static {p1}, LG/n;->c(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setTime(J)V

    new-instance v0, LF/R;

    invoke-direct {v0, v5}, LF/R;-><init>(Landroid/location/Location;)V

    const-string v1, "gps"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    sget-object v1, LF/S;->a:LF/S;

    invoke-virtual {v0, v1}, LF/R;->a(LF/S;)V

    :cond_5b
    :goto_5b
    new-instance v1, LG/d;

    invoke-direct {v1, v0}, LG/d;-><init>(LF/R;)V

    return-object v1

    :cond_61
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v5, v0}, Landroid/location/Location;->setSpeed(F)V

    goto :goto_42

    :cond_69
    const-string v1, "network"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    sget-object v1, LF/S;->b:LF/S;

    invoke-virtual {v0, v1}, LF/R;->a(LF/S;)V

    goto :goto_5b
.end method

.method private e(Lorg/xmlpull/v1/XmlPullParser;)LG/e;
    .registers 7

    const/4 v2, 0x0

    const-string v0, "provider"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enabled"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v2, LG/e;

    invoke-static {p1}, LG/n;->c(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0, v1}, LG/e;-><init>(JLjava/lang/String;Z)V

    return-object v2
.end method

.method private f(Lorg/xmlpull/v1/XmlPullParser;)LG/f;
    .registers 7

    const/4 v2, 0x0

    const-string v0, "provider"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LG/f;

    invoke-static {p1}, LG/n;->c(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0, v1}, LG/f;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .registers 5

    invoke-static {p1}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_f

    iget-object v2, p0, LG/n;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v2}, LG/n;->a(Lorg/xmlpull/v1/XmlPullParser;)LG/g;

    move-result-object v2

    if-nez v2, :cond_10

    :cond_f
    return-object v1

    :cond_10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public a()V
    .registers 2

    invoke-direct {p0}, LG/n;->b()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, LG/n;->c:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method
