.class public Lcom/samsung/upnp/media/server/object/ValueValidator;
.super Ljava/lang/Object;
.source "ValueValidator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidAttribute(Lcom/samsung/xml/Attribute;)Z
    .registers 4
    .parameter "attr"

    .prologue
    const/4 v0, 0x0

    .line 13
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/samsung/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/samsung/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 25
    :cond_15
    :goto_15
    return v0

    .line 17
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/samsung/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/upnp/media/server/object/ValueValidator;->isValidDate(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 19
    :cond_2c
    invoke-virtual {p0}, Lcom/samsung/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lcom/samsung/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/upnp/media/server/object/ValueValidator;->isValidTime(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 21
    :cond_42
    invoke-virtual {p0}, Lcom/samsung/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "restricted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p0}, Lcom/samsung/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/upnp/media/server/object/ValueValidator;->isValidBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 23
    :cond_58
    invoke-virtual {p0}, Lcom/samsung/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "searchable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-virtual {p0}, Lcom/samsung/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/upnp/media/server/object/ValueValidator;->isValidBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 25
    :cond_6e
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private static isValidBoolean(Ljava/lang/String;)Z
    .registers 2
    .parameter "value"

    .prologue
    .line 100
    if-eqz p0, :cond_12

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 101
    :cond_12
    const/4 v0, 0x0

    .line 102
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static isValidContentProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)Z
    .registers 7
    .parameter "cp"

    .prologue
    const/4 v3, 0x0

    .line 42
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 64
    :cond_f
    :goto_f
    return v3

    .line 45
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getNAttributes()I

    move-result v2

    .line 46
    .local v2, nAttr:I
    if-nez v2, :cond_22

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 50
    :cond_22
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "date"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/upnp/media/server/object/ValueValidator;->isValidDate(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 52
    :cond_38
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/upnp/media/server/object/ValueValidator;->isValidTime(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 54
    :cond_4e
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "upnp:storageMedium"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 58
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5b
    if-lt v1, v2, :cond_5f

    .line 64
    const/4 v3, 0x1

    goto :goto_f

    .line 59
    :cond_5f
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttribute(I)Lcom/samsung/xml/Attribute;

    move-result-object v0

    .line 60
    .local v0, attr:Lcom/samsung/xml/Attribute;
    invoke-static {v0}, Lcom/samsung/upnp/media/server/object/ValueValidator;->isValidAttribute(Lcom/samsung/xml/Attribute;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->removeAttribute(Lcom/samsung/xml/Attribute;)Z

    .line 62
    :cond_6c
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getNAttributes()I

    move-result v2

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b
.end method

.method private static isValidDate(Ljava/lang/String;)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 78
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 80
    .local v0, date:Ljava/text/DateFormat;
    :try_start_4
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    .line 84
    const/4 v2, 0x1

    :goto_8
    return v2

    .line 81
    :catch_9
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_8
.end method

.method private static isValidTime(Ljava/lang/String;)Z
    .registers 6
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x9

    if-le v3, v4, :cond_a

    .line 96
    :goto_9
    return v2

    .line 90
    :cond_a
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "hh:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, date:Ljava/text/SimpleDateFormat;
    :try_start_11
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_16

    .line 96
    const/4 v2, 0x1

    goto :goto_9

    .line 93
    :catch_16
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/Exception;
    goto :goto_9
.end method
