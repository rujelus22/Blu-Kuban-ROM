.class public Ljavax/activation/MimeTypeParameterList;
.super Ljava/lang/Object;
.source "MimeTypeParameterList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/activation/MimeTypeParameterList$IteratorEnumeration;
    }
.end annotation


# instance fields
.field private parameterNames:Ljava/util/List;

.field private parameterValues:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameterNames:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameterValues:Ljava/util/Map;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameterNames:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameterValues:Ljava/util/Map;

    .line 68
    invoke-virtual {p0, p1}, Ljavax/activation/MimeTypeParameterList;->parse(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/16 v5, 0x5c

    const/16 v4, 0x22

    const/4 v0, 0x0

    .line 245
    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 247
    :goto_a
    if-ge v1, v2, :cond_3f

    .line 249
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljavax/activation/MimeType;->isValidChar(C)Z

    move-result v3

    if-nez v3, :cond_34

    .line 251
    const/4 v1, 0x1

    .line 256
    :goto_17
    if-eqz v1, :cond_3e

    .line 258
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 259
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    :goto_21
    if-ge v0, v2, :cond_37

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 263
    if-eq v3, v5, :cond_2b

    if-ne v3, v4, :cond_2e

    .line 265
    :cond_2b
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 267
    :cond_2e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 247
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 269
    :cond_37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 272
    :cond_3e
    return-object p0

    :cond_3f
    move v1, v0

    goto :goto_17
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/16 v5, 0x5c

    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 278
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 279
    const/4 v1, 0x1

    :goto_c
    add-int/lit8 v0, v2, -0x1

    if-ge v1, v0, :cond_2f

    .line 281
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 282
    if-ne v0, v5, :cond_29

    .line 284
    add-int/lit8 v1, v1, 0x1

    .line 285
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_29

    .line 287
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 288
    if-eq v0, v5, :cond_29

    const/16 v4, 0x22

    if-eq v0, v4, :cond_29

    .line 290
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    :cond_29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 296
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected parse(Ljava/lang/String;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/16 v10, 0x22

    const/4 v2, 0x0

    .line 79
    if-nez p1, :cond_7

    .line 144
    :cond_6
    return-void

    .line 84
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 85
    array-length v5, v4

    .line 87
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    move v0, v2

    .line 89
    :goto_18
    if-ge v3, v5, :cond_44

    .line 91
    aget-char v8, v4, v3

    .line 92
    const/16 v9, 0x3b

    if-ne v8, v9, :cond_39

    if-nez v0, :cond_39

    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 95
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_33

    .line 97
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_33
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 89
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 103
    :cond_39
    if-ne v8, v10, :cond_3e

    .line 105
    if-nez v0, :cond_42

    move v0, v1

    .line 107
    :cond_3e
    :goto_3e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36

    :cond_42
    move v0, v2

    .line 105
    goto :goto_3e

    .line 110
    :cond_44
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_55

    .line 113
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_55
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 121
    const/4 v5, -0x1

    if-ne v4, v5, :cond_76

    .line 123
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string v1, "Couldn\'t find the \'=\' that separates a parameter name from its value."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_76
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 128
    const-string v6, "Parameter name is invalid"

    invoke-static {v5, v6}, Ljavax/activation/MimeType;->checkValidity(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 131
    if-le v4, v1, :cond_b4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_b4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_b4

    .line 134
    invoke-static {v0}, Ljavax/activation/MimeTypeParameterList;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_a5
    iget-object v4, p0, Ljavax/activation/MimeTypeParameterList;->parameterNames:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v4, p0, Ljavax/activation/MimeTypeParameterList;->parameterValues:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    .line 138
    :cond_b4
    const-string v4, "Parameter value is invalid"

    invoke-static {v5, v4}, Ljavax/activation/MimeType;->checkValidity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 228
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameterNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 231
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    iget-object v1, p0, Ljavax/activation/MimeTypeParameterList;->parameterValues:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 234
    const/16 v4, 0x3b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    invoke-static {v1}, Ljavax/activation/MimeTypeParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3e

    goto :goto_c

    .line 228
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 240
    :cond_41
    :try_start_41
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method
