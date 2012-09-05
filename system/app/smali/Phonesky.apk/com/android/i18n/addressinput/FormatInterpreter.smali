.class Lcom/android/i18n/addressinput/FormatInterpreter;
.super Ljava/lang/Object;
.source "FormatInterpreter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/FormatInterpreter$2;
    }
.end annotation


# instance fields
.field private final mDefaultFormat:Ljava/lang/String;

.field private final mFormOptions:Lcom/android/i18n/addressinput/FormOptions;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/FormOptions;)V
    .registers 4
    .parameter "options"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/android/i18n/addressinput/RegionDataConstants;->getCountryFormatMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "null country name map not allowed"

    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    iput-object p1, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    .line 51
    const-string v0, "ZZ"

    sget-object v1, Lcom/android/i18n/addressinput/AddressDataKey;->FMT:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-direct {p0, v0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->getJsonValue(Ljava/lang/String;Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mDefaultFormat:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mDefaultFormat:Ljava/lang/String;

    const-string v1, "null default format not allowed"

    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private getFormatString(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "scriptType"
    .parameter "regionCode"

    .prologue
    .line 257
    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    if-ne p1, v1, :cond_b

    sget-object v1, Lcom/android/i18n/addressinput/AddressDataKey;->FMT:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-direct {p0, p2, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->getJsonValue(Ljava/lang/String;Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, format:Ljava/lang/String;
    :goto_a
    return-object v0

    .line 257
    .end local v0           #format:Ljava/lang/String;
    :cond_b
    sget-object v1, Lcom/android/i18n/addressinput/AddressDataKey;->LFMT:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-direct {p0, p2, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->getJsonValue(Ljava/lang/String;Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private getFormatSubStrings(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .parameter "scriptType"
    .parameter "regionCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/LookupKey$ScriptType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/addressinput/FormatInterpreter;->getFormatString(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, formatString:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v6, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 231
    .local v2, escaped:Z
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_10
    if-ge v4, v5, :cond_92

    aget-char v1, v0, v4

    .line 232
    .local v1, c:C
    if-eqz v2, :cond_75

    .line 233
    const/4 v2, 0x0

    .line 234
    const-string v7, "%n"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 235
    const-string v7, "%n"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 237
    :cond_3a
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressField;->of(C)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in format pattern: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 241
    :cond_75
    const/16 v7, 0x25

    if-ne v1, v7, :cond_7b

    .line 242
    const/4 v2, 0x1

    goto :goto_37

    .line 244
    :cond_7b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 247
    .end local v1           #c:C
    :cond_92
    return-object v6
.end method

.method private getJsonValue(Ljava/lang/String;Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;
    .registers 10
    .parameter "regionCode"
    .parameter "key"

    .prologue
    .line 264
    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 265
    invoke-static {}, Lcom/android/i18n/addressinput/RegionDataConstants;->getCountryFormatMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 266
    .local v2, jsonString:Ljava/lang/String;
    if-nez v2, :cond_12

    .line 268
    iget-object v3, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mDefaultFormat:Ljava/lang/String;

    .line 279
    :goto_11
    return-object v3

    .line 272
    :cond_12
    :try_start_12
    new-instance v1, Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 273
    .local v1, jsonObj:Lorg/json/JSONObject;
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressDataKey;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 275
    iget-object v3, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mDefaultFormat:Ljava/lang/String;

    goto :goto_11

    .line 278
    :cond_2d
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressDataKey;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_38} :catch_3a

    move-result-object v3

    .line 279
    .local v3, parsedJsonString:Ljava/lang/String;
    goto :goto_11

    .line 280
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    .end local v3           #parsedJsonString:Ljava/lang/String;
    :catch_3a
    move-exception v0

    .line 281
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid json for region code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private overrideFieldOrder(Ljava/lang/String;Ljava/util/List;)V
    .registers 14
    .parameter "regionCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, fieldOrder:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/AddressField;>;"
    iget-object v9, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-virtual {v9, p1}, Lcom/android/i18n/addressinput/FormOptions;->getCustomFieldOrder(Ljava/lang/String;)[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v9

    if-nez v9, :cond_9

    .line 136
    :cond_8
    return-void

    .line 105
    :cond_9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v2, fieldPriority:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/i18n/addressinput/AddressField;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 107
    .local v3, i:I
    iget-object v9, p0, Lcom/android/i18n/addressinput/FormatInterpreter;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-virtual {v9, p1}, Lcom/android/i18n/addressinput/FormOptions;->getCustomFieldOrder(Ljava/lang/String;)[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v0

    .local v0, arr$:[Lcom/android/i18n/addressinput/AddressField;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_17
    if-ge v4, v6, :cond_27

    aget-object v1, v0, v4

    .line 108
    .local v1, field:Lcom/android/i18n/addressinput/AddressField;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 113
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressField;
    :cond_27
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v8, union:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/AddressField;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v7, slots:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 116
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressField;

    .line 117
    .restart local v1       #field:Lcom/android/i18n/addressinput/AddressField;
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 118
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 125
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressField;
    :cond_55
    new-instance v9, Lcom/android/i18n/addressinput/FormatInterpreter$1;

    invoke-direct {v9, p0, v2}, Lcom/android/i18n/addressinput/FormatInterpreter$1;-><init>(Lcom/android/i18n/addressinput/FormatInterpreter;Ljava/util/Map;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    const/4 v5, 0x0

    .local v5, j:I
    :goto_5e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 134
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e
.end method

.method private removeAllRedundantSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"

    .prologue
    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 252
    const-string v0, " +"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    return-object p1
.end method


# virtual methods
.method getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .parameter "scriptType"
    .parameter "regionCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/LookupKey$ScriptType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    invoke-static {p2}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, fieldOrder:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/AddressField;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/addressinput/FormatInterpreter;->getFormatSubStrings(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    .local v4, substring:Ljava/lang/String;
    const-string v5, "%."

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "%n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 71
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/i18n/addressinput/AddressField;->of(C)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v0

    .line 72
    .local v0, field:Lcom/android/i18n/addressinput/AddressField;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 75
    .end local v0           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v4           #substring:Ljava/lang/String;
    :cond_3c
    invoke-direct {p0, p2, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->overrideFieldOrder(Ljava/lang/String;Ljava/util/List;)V

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, finalFieldOrder:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/AddressField;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressField;

    .line 80
    .restart local v0       #field:Lcom/android/i18n/addressinput/AddressField;
    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    if-ne v0, v5, :cond_63

    .line 81
    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 84
    :cond_63
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 87
    .end local v0           #field:Lcom/android/i18n/addressinput/AddressField;
    :cond_67
    return-object v2
.end method

.method getEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Ljava/lang/String;)Ljava/util/List;
    .registers 19
    .parameter "address"
    .parameter "defaultCountry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressData;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const-string v12, "null input address not allowed"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, regionCode:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/i18n/addressinput/AddressWidget;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    .line 152
    move-object/from16 v8, p2

    .line 155
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, lc:Ljava/lang/String;
    sget-object v9, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 157
    .local v9, scriptType:Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    if-eqz v5, :cond_23

    .line 158
    invoke-static {v5}, Lcom/android/i18n/addressinput/Util;->isExplicitLatinScript(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_63

    sget-object v9, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 161
    :cond_23
    :goto_23
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v6, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v2, currentLine:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/i18n/addressinput/FormatInterpreter;->getFormatSubStrings(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_da

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 164
    .local v10, substr:Ljava/lang/String;
    const-string v12, "%n"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_66

    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/i18n/addressinput/FormatInterpreter;->removeAllRedundantSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, normalizedStr:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_37

    .line 167
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_37

    .line 158
    .end local v2           #currentLine:Ljava/lang/StringBuilder;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #normalizedStr:Ljava/lang/String;
    .end local v10           #substr:Ljava/lang/String;
    :cond_63
    sget-object v9, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    goto :goto_23

    .line 170
    .restart local v2       #currentLine:Ljava/lang/StringBuilder;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #substr:Ljava/lang/String;
    :cond_66
    const-string v12, "%"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d5

    .line 171
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 172
    .local v1, c:C
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressField;->of(C)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v3

    .line 173
    .local v3, field:Lcom/android/i18n/addressinput/AddressField;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "null address field for character "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    const/4 v11, 0x0

    .line 176
    .local v11, value:Ljava/lang/String;
    sget-object v12, Lcom/android/i18n/addressinput/FormatInterpreter$2;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_ee

    .line 207
    :goto_99
    :pswitch_99
    if-eqz v11, :cond_37

    .line 208
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 178
    :pswitch_9f
    const-string v12, "\n"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/i18n/addressinput/Util;->joinAndSkipNulls(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 181
    goto :goto_99

    .line 186
    :pswitch_b7
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v11

    .line 187
    goto :goto_99

    .line 189
    :pswitch_bc
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v11

    .line 190
    goto :goto_99

    .line 192
    :pswitch_c1
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v11

    .line 193
    goto :goto_99

    .line 195
    :pswitch_c6
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v11

    .line 196
    goto :goto_99

    .line 198
    :pswitch_cb
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getOrganization()Ljava/lang/String;

    move-result-object v11

    .line 199
    goto :goto_99

    .line 201
    :pswitch_d0
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v11

    .line 202
    goto :goto_99

    .line 211
    .end local v1           #c:C
    .end local v3           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v11           #value:Ljava/lang/String;
    :cond_d5
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_37

    .line 214
    .end local v10           #substr:Ljava/lang/String;
    :cond_da
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/i18n/addressinput/FormatInterpreter;->removeAllRedundantSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 215
    .restart local v7       #normalizedStr:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_ed

    .line 216
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_ed
    return-object v6

    .line 176
    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_99
        :pswitch_b7
        :pswitch_bc
        :pswitch_c1
        :pswitch_c6
        :pswitch_cb
        :pswitch_d0
    .end packed-switch
.end method
