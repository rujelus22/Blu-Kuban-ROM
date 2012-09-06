.class public LD/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/xmlpull/v1/XmlPullParserFactory;

.field private final b:LH/e;

.field private c:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(LH/e;)V
    .registers 3
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, LD/n;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 60
    iput-object p1, p0, LD/n;->b:LH/e;

    .line 61
    invoke-virtual {p0}, LD/n;->a()V

    .line 62
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)LD/g;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, p1}, LD/n;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 171
    :cond_7
    :goto_7
    return-object v0

    .line 162
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 164
    const-string v2, "location-scan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 165
    invoke-direct {p0, p1}, LD/n;->d(Lorg/xmlpull/v1/XmlPullParser;)LD/d;

    move-result-object v0

    goto :goto_7

    .line 166
    :cond_19
    const-string v2, "provider-enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 167
    invoke-direct {p0, p1}, LD/n;->e(Lorg/xmlpull/v1/XmlPullParser;)LD/e;

    move-result-object v0

    goto :goto_7

    .line 168
    :cond_26
    const-string v2, "provider-status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 169
    invoke-direct {p0, p1}, LD/n;->f(Lorg/xmlpull/v1/XmlPullParser;)LD/f;

    move-result-object v0

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 198
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

    .prologue
    .line 81
    iget-object v0, p0, LD/n;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 82
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v0, p0, LD/n;->b:LH/e;

    invoke-interface {v0}, LH/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 83
    return-object v1
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 181
    :goto_5
    if-eq v1, v0, :cond_1a

    .line 182
    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    .line 183
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v1}, LD/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 190
    :goto_14
    return v0

    .line 188
    :cond_15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_5

    .line 190
    :cond_1a
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)J
    .registers 3
    .parameter

    .prologue
    .line 212
    const/4 v0, 0x0

    const-string v1, "time"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/google/googlenav/common/util/f;->a(Ljava/lang/String;)Lcom/google/googlenav/common/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/util/f;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method private d(Lorg/xmlpull/v1/XmlPullParser;)LD/d;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 224
    const-string v0, "accuracy"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string v1, "latitude"

    invoke-interface {p1, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    const-string v2, "longitude"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    const-string v3, "speed"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    const-string v4, "provider"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    new-instance v5, Landroid/location/Location;

    invoke-direct {v5, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v5, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 236
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 237
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 238
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 239
    invoke-virtual {v5}, Landroid/location/Location;->removeSpeed()V

    .line 243
    :goto_42
    invoke-static {p1}, LD/n;->c(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 245
    new-instance v0, LC/R;

    invoke-direct {v0, v5}, LC/R;-><init>(Landroid/location/Location;)V

    .line 246
    const-string v1, "gps"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 247
    sget-object v1, LC/S;->a:LC/S;

    invoke-virtual {v0, v1}, LC/R;->a(LC/S;)V

    .line 251
    :cond_5b
    :goto_5b
    new-instance v1, LD/d;

    invoke-direct {v1, v0}, LD/d;-><init>(LC/R;)V

    return-object v1

    .line 241
    :cond_61
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v5, v0}, Landroid/location/Location;->setSpeed(F)V

    goto :goto_42

    .line 248
    :cond_69
    const-string v1, "network"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 249
    sget-object v1, LC/S;->b:LC/S;

    invoke-virtual {v0, v1}, LC/R;->a(LC/S;)V

    goto :goto_5b
.end method

.method private e(Lorg/xmlpull/v1/XmlPullParser;)LD/e;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 258
    const-string v0, "provider"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "enabled"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 261
    new-instance v2, LD/e;

    invoke-static {p1}, LD/n;->c(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0, v1}, LD/e;-><init>(JLjava/lang/String;Z)V

    return-object v2
.end method

.method private f(Lorg/xmlpull/v1/XmlPullParser;)LD/f;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 268
    const-string v0, "provider"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    const-string v1, "status"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v2, LD/f;

    invoke-static {p1}, LD/n;->c(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0, v1}, LD/f;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .registers 5
    .parameter

    .prologue
    .line 141
    invoke-static {p1}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 142
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_f

    .line 143
    iget-object v2, p0, LD/n;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v2}, LD/n;->a(Lorg/xmlpull/v1/XmlPullParser;)LD/g;

    move-result-object v2

    .line 144
    if-nez v2, :cond_10

    .line 149
    :cond_f
    return-object v1

    .line 147
    :cond_10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public a()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, LD/n;->b()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, LD/n;->c:Lorg/xmlpull/v1/XmlPullParser;

    .line 72
    return-void
.end method
