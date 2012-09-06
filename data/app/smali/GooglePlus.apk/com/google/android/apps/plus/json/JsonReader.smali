.class public final Lcom/google/android/apps/plus/json/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/json/JsonReader$1;
    }
.end annotation


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/json/JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private token:Lcom/google/android/apps/plus/json/JsonToken;

.field private value:Ljava/lang/String;

.field private valueLength:I

.field private valuePos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-boolean v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->lenient:Z

    .line 188
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    .line 189
    iput v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 190
    iput v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->stack:Ljava/util/List;

    .line 194
    sget-object v0, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->push(Lcom/google/android/apps/plus/json/JsonScope;)V

    .line 215
    iput-boolean v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->skipping:Z

    .line 221
    if-nez p1, :cond_28

    .line 222
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_28
    iput-object p1, p0, Lcom/google/android/apps/plus/json/JsonReader;->in:Ljava/io/Reader;

    .line 225
    return-void
.end method

.method private advance()Lcom/google/android/apps/plus/json/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 358
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    .line 361
    .local v0, result:Lcom/google/android/apps/plus/json/JsonToken;
    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    .line 362
    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    .line 363
    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->name:Ljava/lang/String;

    .line 364
    return-object v0
.end method

.method private checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->lenient:Z

    if-nez v0, :cond_b

    .line 787
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 789
    :cond_b
    return-void
.end method

.method private decodeLiteral()Lcom/google/android/apps/plus/json/JsonToken;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x55

    const/16 v6, 0x45

    const/4 v5, 0x4

    const/16 v4, 0x6c

    const/16 v3, 0x4c

    .line 1020
    iget v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 1022
    sget-object v0, Lcom/google/android/apps/plus/json/JsonToken;->STRING:Lcom/google/android/apps/plus/json/JsonToken;

    .line 1047
    :goto_10
    return-object v0

    .line 1023
    :cond_11
    iget v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->valueLength:I

    if-ne v0, v5, :cond_6e

    const/16 v0, 0x6e

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_29

    const/16 v0, 0x4e

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_6e

    :cond_29
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_3f

    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    if-ne v7, v0, :cond_6e

    :cond_3f
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_53

    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6e

    :cond_53
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_67

    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6e

    .line 1028
    :cond_67
    const-string v0, "null"

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    .line 1029
    sget-object v0, Lcom/google/android/apps/plus/json/JsonToken;->NULL:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_10

    .line 1030
    :cond_6e
    iget v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->valueLength:I

    if-ne v0, v5, :cond_d2

    const/16 v0, 0x74

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_86

    const/16 v0, 0x54

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_d2

    :cond_86
    const/16 v0, 0x72

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_9e

    const/16 v0, 0x52

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_d2

    :cond_9e
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_b4

    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v7, v0, :cond_d2

    :cond_b4
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_ca

    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_d2

    .line 1035
    :cond_ca
    const-string v0, "true"

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    .line 1036
    sget-object v0, Lcom/google/android/apps/plus/json/JsonToken;->BOOLEAN:Lcom/google/android/apps/plus/json/JsonToken;

    goto/16 :goto_10

    .line 1037
    :cond_d2
    iget v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->valueLength:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14d

    const/16 v0, 0x66

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_eb

    const/16 v0, 0x46

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_14d

    :cond_eb
    const/16 v0, 0x61

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_103

    const/16 v0, 0x41

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_14d

    :cond_103
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_117

    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_14d

    :cond_117
    const/16 v0, 0x73

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_12f

    const/16 v0, 0x53

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_14d

    :cond_12f
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x4

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_145

    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_14d

    .line 1043
    :cond_145
    const-string v0, "false"

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    .line 1044
    sget-object v0, Lcom/google/android/apps/plus/json/JsonToken;->BOOLEAN:Lcom/google/android/apps/plus/json/JsonToken;

    goto/16 :goto_10

    .line 1046
    :cond_14d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->valueLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    .line 1047
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->valueLength:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/plus/json/JsonReader;->decodeNumber([CII)Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v0

    goto/16 :goto_10
.end method

.method private decodeNumber([CII)Lcom/google/android/apps/plus/json/JsonToken;
    .registers 10
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 1058
    move v1, p2

    .line 1059
    .local v1, i:I
    aget-char v0, p1, v1

    .line 1061
    .local v0, c:I
    if-ne v0, v5, :cond_f

    .line 1062
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1065
    :cond_f
    if-ne v0, v3, :cond_26

    .line 1066
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1076
    :cond_15
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_3c

    .line 1077
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1078
    :goto_1d
    if-lt v0, v3, :cond_3c

    if-gt v0, v4, :cond_3c

    .line 1079
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_1d

    .line 1067
    :cond_26
    const/16 v2, 0x31

    if-lt v0, v2, :cond_39

    if-gt v0, v4, :cond_39

    .line 1068
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1069
    :goto_30
    if-lt v0, v3, :cond_15

    if-gt v0, v4, :cond_15

    .line 1070
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_30

    .line 1073
    :cond_39
    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->STRING:Lcom/google/android/apps/plus/json/JsonToken;

    .line 1101
    :goto_3b
    return-object v2

    .line 1083
    :cond_3c
    const/16 v2, 0x65

    if-eq v0, v2, :cond_44

    const/16 v2, 0x45

    if-ne v0, v2, :cond_66

    .line 1084
    :cond_44
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1085
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_4e

    if-ne v0, v5, :cond_52

    .line 1086
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1088
    :cond_52
    if-lt v0, v3, :cond_63

    if-gt v0, v4, :cond_63

    .line 1089
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1090
    :goto_5a
    if-lt v0, v3, :cond_66

    if-gt v0, v4, :cond_66

    .line 1091
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_5a

    .line 1094
    :cond_63
    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->STRING:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_3b

    .line 1098
    :cond_66
    add-int v2, p2, p3

    if-ne v1, v2, :cond_6d

    .line 1099
    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->NUMBER:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_3b

    .line 1101
    :cond_6d
    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->STRING:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_3b
.end method

.method private expect(Lcom/google/android/apps/plus/json/JsonToken;)V
    .registers 5
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v0, p1, :cond_2e

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_2e
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->advance()Lcom/google/android/apps/plus/json/JsonToken;

    .line 300
    return-void
.end method

.method private fillBuffer(I)Z
    .registers 9
    .parameter "minimum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 712
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    if-eq v2, v3, :cond_39

    .line 713
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    .line 714
    iget-object v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 719
    :goto_19
    iput v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 721
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->in:Ljava/io/Reader;

    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    iget-object v5, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    array-length v5, v5

    iget v6, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .local v0, total:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_38

    .line 722
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    .line 723
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    if-lt v2, p1, :cond_1b

    .line 724
    const/4 v1, 0x1

    .line 727
    :cond_38
    return v1

    .line 716
    .end local v0           #total:I
    :cond_39
    iput v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    goto :goto_19
.end method

.method private getSnippet()Ljava/lang/CharSequence;
    .registers 7

    .prologue
    const/16 v5, 0x14

    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1115
    .local v2, snippet:Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1116
    .local v1, beforePos:I
    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1117
    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1118
    .local v0, afterPos:I
    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1119
    return-object v2
.end method

.method private nextInArray(Z)Lcom/google/android/apps/plus/json/JsonToken;
    .registers 3
    .parameter "firstElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    if-eqz p1, :cond_19

    .line 572
    sget-object v0, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->replaceTop(Lcom/google/android/apps/plus/json/JsonScope;)V

    .line 589
    :goto_7
    :sswitch_7
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_50

    .line 605
    iget v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 606
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->nextValue()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v0

    :goto_18
    return-object v0

    .line 575
    :cond_19
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_5e

    .line 585
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 577
    :sswitch_27
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->pop()Lcom/google/android/apps/plus/json/JsonScope;

    .line 578
    sget-object v0, Lcom/google/android/apps/plus/json/JsonToken;->END_ARRAY:Lcom/google/android/apps/plus/json/JsonToken;

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_18

    .line 580
    :sswitch_2f
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->checkLenient()V

    goto :goto_7

    .line 591
    :sswitch_33
    if-eqz p1, :cond_3d

    .line 592
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->pop()Lcom/google/android/apps/plus/json/JsonScope;

    .line 593
    sget-object v0, Lcom/google/android/apps/plus/json/JsonToken;->END_ARRAY:Lcom/google/android/apps/plus/json/JsonToken;

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_18

    .line 600
    :cond_3d
    :sswitch_3d
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->checkLenient()V

    .line 601
    iget v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 602
    const-string v0, "null"

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    .line 603
    sget-object v0, Lcom/google/android/apps/plus/json/JsonToken;->NULL:Lcom/google/android/apps/plus/json/JsonToken;

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_18

    .line 589
    nop

    :sswitch_data_50
    .sparse-switch
        0x2c -> :sswitch_3d
        0x3b -> :sswitch_3d
        0x5d -> :sswitch_33
    .end sparse-switch

    .line 575
    :sswitch_data_5e
    .sparse-switch
        0x2c -> :sswitch_7
        0x3b -> :sswitch_2f
        0x5d -> :sswitch_27
    .end sparse-switch
.end method

.method private nextInObject(Z)Lcom/google/android/apps/plus/json/JsonToken;
    .registers 4
    .parameter "firstElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    if-eqz p1, :cond_3d

    .line 618
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->nextNonWhitespace()I

    move-result v1

    packed-switch v1, :pswitch_data_68

    .line 623
    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 639
    :sswitch_f
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 640
    .local v0, quote:I
    sparse-switch v0, :sswitch_data_6e

    .line 648
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->checkLenient()V

    .line 649
    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 650
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/json/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->name:Ljava/lang/String;

    .line 651
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5d

    .line 652
    const-string v1, "Expected name"

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/json/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 620
    .end local v0           #quote:I
    :pswitch_35
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->pop()Lcom/google/android/apps/plus/json/JsonScope;

    .line 621
    sget-object v1, Lcom/google/android/apps/plus/json/JsonToken;->END_OBJECT:Lcom/google/android/apps/plus/json/JsonToken;

    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    .line 657
    :goto_3c
    return-object v1

    .line 626
    :cond_3d
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->nextNonWhitespace()I

    move-result v1

    sparse-switch v1, :sswitch_data_78

    .line 634
    const-string v1, "Unterminated object"

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/json/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 628
    :sswitch_4b
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->pop()Lcom/google/android/apps/plus/json/JsonScope;

    .line 629
    sget-object v1, Lcom/google/android/apps/plus/json/JsonToken;->END_OBJECT:Lcom/google/android/apps/plus/json/JsonToken;

    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_3c

    .line 642
    .restart local v0       #quote:I
    :sswitch_53
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->checkLenient()V

    .line 645
    :sswitch_56
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->name:Ljava/lang/String;

    .line 656
    :cond_5d
    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->DANGLING_NAME:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/json/JsonReader;->replaceTop(Lcom/google/android/apps/plus/json/JsonScope;)V

    .line 657
    sget-object v1, Lcom/google/android/apps/plus/json/JsonToken;->NAME:Lcom/google/android/apps/plus/json/JsonToken;

    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_3c

    .line 618
    nop

    :pswitch_data_68
    .packed-switch 0x7d
        :pswitch_35
    .end packed-switch

    .line 640
    :sswitch_data_6e
    .sparse-switch
        0x22 -> :sswitch_56
        0x27 -> :sswitch_53
    .end sparse-switch

    .line 626
    :sswitch_data_78
    .sparse-switch
        0x2c -> :sswitch_f
        0x3b -> :sswitch_f
        0x7d -> :sswitch_4b
    .end sparse-switch
.end method

.method private nextLiteral(Z)Ljava/lang/String;
    .registers 8
    .parameter "assignOffsetsOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    .line 876
    iput v5, p0, Lcom/google/android/apps/plus/json/JsonReader;->valueLength:I

    .line 877
    const/4 v1, 0x0

    .line 881
    .local v1, i:I
    :cond_8
    :goto_8
    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    if-ge v3, v4, :cond_33

    .line 882
    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_88

    .line 881
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 888
    :sswitch_1c
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->checkLenient()V

    .line 933
    :goto_1f
    :sswitch_1f
    if-eqz p1, :cond_68

    if-nez v0, :cond_68

    .line 934
    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    iput v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->valuePos:I

    .line 935
    const/4 v2, 0x0

    .line 944
    .local v2, result:Ljava/lang/String;
    :goto_28
    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->valueLength:I

    .line 945
    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 946
    return-object v2

    .line 910
    .end local v2           #result:Ljava/lang/String;
    :cond_33
    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_47

    .line 911
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/json/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 914
    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    aput-char v5, v3, v4

    goto :goto_1f

    .line 920
    :cond_47
    if-nez v0, :cond_4e

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_4e
    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 924
    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->valueLength:I

    .line 925
    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 926
    const/4 v1, 0x0

    .line 927
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/json/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1f

    .line 936
    :cond_68
    iget-boolean v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->skipping:Z

    if-eqz v3, :cond_6f

    .line 937
    const-string v2, "skipped!"

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_28

    .line 938
    .end local v2           #result:Ljava/lang/String;
    :cond_6f
    if-nez v0, :cond_7b

    .line 939
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_28

    .line 941
    .end local v2           #result:Ljava/lang/String;
    :cond_7b
    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_28

    .line 882
    nop

    :sswitch_data_88
    .sparse-switch
        0x9 -> :sswitch_1f
        0xa -> :sswitch_1f
        0xc -> :sswitch_1f
        0xd -> :sswitch_1f
        0x20 -> :sswitch_1f
        0x23 -> :sswitch_1c
        0x2c -> :sswitch_1f
        0x2f -> :sswitch_1c
        0x3a -> :sswitch_1f
        0x3b -> :sswitch_1c
        0x3d -> :sswitch_1c
        0x5b -> :sswitch_1f
        0x5c -> :sswitch_1c
        0x5d -> :sswitch_1f
        0x7b -> :sswitch_1f
        0x7d -> :sswitch_1f
    .end sparse-switch
.end method

.method private nextNonWhitespace()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 731
    :goto_1
    :sswitch_1
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    if-lt v2, v3, :cond_d

    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/json/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 732
    :cond_d
    iget-object v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    aget-char v0, v2, v3

    .line 733
    .local v0, c:I
    sparse-switch v0, :sswitch_data_6a

    .line 778
    :cond_1a
    :goto_1a
    return v0

    .line 741
    :sswitch_1b
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    if-ne v2, v3, :cond_27

    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/json/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 745
    :cond_27
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->checkLenient()V

    .line 746
    iget-object v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    aget-char v1, v2, v3

    .line 747
    .local v1, peek:C
    sparse-switch v1, :sswitch_data_84

    goto :goto_1a

    .line 750
    :sswitch_34
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 751
    const-string v2, "*/"

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/json/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 752
    const-string v2, "Unterminated comment"

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/json/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 754
    :cond_49
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    goto :goto_1

    .line 759
    :sswitch_50
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 760
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->skipToEndOfLine()V

    goto :goto_1

    .line 773
    .end local v1           #peek:C
    :sswitch_5a
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->checkLenient()V

    .line 774
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->skipToEndOfLine()V

    goto :goto_1

    .line 782
    .end local v0           #c:I
    :cond_61
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "End of input"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 733
    nop

    :sswitch_data_6a
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_5a
        0x2f -> :sswitch_1b
    .end sparse-switch

    .line 747
    :sswitch_data_84
    .sparse-switch
        0x2a -> :sswitch_34
        0x2f -> :sswitch_50
    .end sparse-switch
.end method

.method private nextString(C)Ljava/lang/String;
    .registers 8
    .parameter "quote"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    const/4 v0, 0x0

    .line 832
    .local v0, builder:Ljava/lang/StringBuilder;
    :cond_1
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 833
    .local v2, start:I
    :cond_3
    :goto_3
    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    if-ge v3, v4, :cond_59

    .line 834
    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    aget-char v1, v3, v4

    .line 836
    .local v1, c:I
    if-ne v1, p1, :cond_3a

    .line 837
    iget-boolean v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->skipping:Z

    if-eqz v3, :cond_1c

    .line 838
    const-string v3, "skipped!"

    .line 843
    :goto_1b
    return-object v3

    .line 839
    :cond_1c
    if-nez v0, :cond_2b

    .line 840
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, v2, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1b

    .line 842
    :cond_2b
    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    .line 846
    :cond_3a
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_3

    .line 847
    if-nez v0, :cond_45

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_45
    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 851
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    goto :goto_3

    .line 856
    .end local v1           #c:I
    :cond_59
    if-nez v0, :cond_60

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_60
    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 860
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/json/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 862
    const-string v3, "Unterminated string"

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/json/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method private nextValue()Lcom/google/android/apps/plus/json/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 684
    .local v0, c:I
    sparse-switch v0, :sswitch_data_36

    .line 701
    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 702
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->readLiteral()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v1

    :goto_11
    return-object v1

    .line 686
    :sswitch_12
    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/json/JsonReader;->push(Lcom/google/android/apps/plus/json/JsonScope;)V

    .line 687
    sget-object v1, Lcom/google/android/apps/plus/json/JsonToken;->BEGIN_OBJECT:Lcom/google/android/apps/plus/json/JsonToken;

    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_11

    .line 690
    :sswitch_1c
    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/json/JsonReader;->push(Lcom/google/android/apps/plus/json/JsonScope;)V

    .line 691
    sget-object v1, Lcom/google/android/apps/plus/json/JsonToken;->BEGIN_ARRAY:Lcom/google/android/apps/plus/json/JsonToken;

    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_11

    .line 694
    :sswitch_26
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->checkLenient()V

    .line 697
    :sswitch_29
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    .line 698
    sget-object v1, Lcom/google/android/apps/plus/json/JsonToken;->STRING:Lcom/google/android/apps/plus/json/JsonToken;

    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_11

    .line 684
    nop

    :sswitch_data_36
    .sparse-switch
        0x22 -> :sswitch_29
        0x27 -> :sswitch_26
        0x5b -> :sswitch_1c
        0x7b -> :sswitch_12
    .end sparse-switch
.end method

.method private objectValue()Lcom/google/android/apps/plus/json/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->nextNonWhitespace()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 675
    :pswitch_7
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 669
    :pswitch_e
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->checkLenient()V

    .line 670
    iget v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    if-lt v0, v1, :cond_1e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_2e

    .line 671
    iget v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 678
    :cond_2e
    :pswitch_2e
    sget-object v0, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->replaceTop(Lcom/google/android/apps/plus/json/JsonScope;)V

    .line 679
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->nextValue()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v0

    return-object v0

    .line 665
    :pswitch_data_38
    .packed-switch 0x3a
        :pswitch_2e
        :pswitch_7
        :pswitch_7
        :pswitch_e
    .end packed-switch
.end method

.method private peekStack()Lcom/google/android/apps/plus/json/JsonScope;
    .registers 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/json/JsonScope;

    return-object v0
.end method

.method private pop()Lcom/google/android/apps/plus/json/JsonScope;
    .registers 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/json/JsonScope;

    return-object v0
.end method

.method private push(Lcom/google/android/apps/plus/json/JsonScope;)V
    .registers 3
    .parameter "newTop"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    return-void
.end method

.method private readEscapeCharacter()C
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 963
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    if-ne v2, v3, :cond_15

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/json/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 964
    const-string v2, "Unterminated escape sequence"

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/json/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 967
    :cond_15
    iget-object v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    aget-char v0, v2, v3

    .line 968
    .local v0, escaped:C
    sparse-switch v0, :sswitch_data_5e

    .line 996
    .end local v0           #escaped:C
    :goto_22
    return v0

    .line 970
    .restart local v0       #escaped:C
    :sswitch_23
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    if-le v2, v3, :cond_38

    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/json/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_38

    .line 971
    const-string v2, "Unterminated escape sequence"

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/json/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 973
    :cond_38
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 974
    .local v1, hex:Ljava/lang/String;
    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    .line 975
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v0, v2

    goto :goto_22

    .line 978
    .end local v1           #hex:Ljava/lang/String;
    :sswitch_4f
    const/16 v0, 0x9

    goto :goto_22

    .line 981
    :sswitch_52
    const/16 v0, 0x8

    goto :goto_22

    .line 984
    :sswitch_55
    const/16 v0, 0xa

    goto :goto_22

    .line 987
    :sswitch_58
    const/16 v0, 0xd

    goto :goto_22

    .line 990
    :sswitch_5b
    const/16 v0, 0xc

    goto :goto_22

    .line 968
    :sswitch_data_5e
    .sparse-switch
        0x62 -> :sswitch_52
        0x66 -> :sswitch_5b
        0x6e -> :sswitch_55
        0x72 -> :sswitch_58
        0x74 -> :sswitch_4f
        0x75 -> :sswitch_23
    .end sparse-switch
.end method

.method private readLiteral()Lcom/google/android/apps/plus/json/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1004
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    .line 1005
    iget v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->valueLength:I

    if-nez v0, :cond_12

    .line 1006
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1008
    :cond_12
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->decodeLiteral()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    .line 1009
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v1, Lcom/google/android/apps/plus/json/JsonToken;->STRING:Lcom/google/android/apps/plus/json/JsonToken;

    if-ne v0, v1, :cond_21

    .line 1010
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->checkLenient()V

    .line 1012
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    return-object v0
.end method

.method private replaceTop(Lcom/google/android/apps/plus/json/JsonScope;)V
    .registers 4
    .parameter "newTop"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .registers 5
    .parameter "toFind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    :goto_0
    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    if-lt v1, v2, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/json/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 808
    :cond_15
    const/4 v0, 0x0

    .local v0, c:I
    :goto_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 809
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_30

    .line 807
    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    goto :goto_0

    .line 808
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 813
    :cond_33
    const/4 v1, 0x1

    .line 815
    .end local v0           #c:I
    :goto_34
    return v1

    :cond_35
    const/4 v1, 0x0

    goto :goto_34
.end method

.method private skipToEndOfLine()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    :cond_0
    iget v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->limit:I

    if-lt v1, v2, :cond_d

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/json/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 798
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->pos:I

    aget-char v0, v1, v2

    .line 799
    .local v0, c:C
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 803
    .end local v0           #c:C
    :cond_1f
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1110
    new-instance v0, Lcom/google/android/apps/plus/json/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " near "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/json/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    sget-object v0, Lcom/google/android/apps/plus/json/JsonToken;->BEGIN_ARRAY:Lcom/google/android/apps/plus/json/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->expect(Lcom/google/android/apps/plus/json/JsonToken;)V

    .line 265
    return-void
.end method

.method public beginObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    sget-object v0, Lcom/google/android/apps/plus/json/JsonToken;->BEGIN_OBJECT:Lcom/google/android/apps/plus/json/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->expect(Lcom/google/android/apps/plus/json/JsonToken;)V

    .line 281
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 522
    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    .line 523
    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    .line 524
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 525
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->stack:Ljava/util/List;

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->CLOSED:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 527
    return-void
.end method

.method public endArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    sget-object v0, Lcom/google/android/apps/plus/json/JsonToken;->END_ARRAY:Lcom/google/android/apps/plus/json/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->expect(Lcom/google/android/apps/plus/json/JsonToken;)V

    .line 273
    return-void
.end method

.method public endObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    sget-object v0, Lcom/google/android/apps/plus/json/JsonToken;->END_OBJECT:Lcom/google/android/apps/plus/json/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonReader;->expect(Lcom/google/android/apps/plus/json/JsonToken;)V

    .line 289
    return-void
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v1, Lcom/google/android/apps/plus/json/JsonToken;->END_OBJECT:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v1, Lcom/google/android/apps/plus/json/JsonToken;->END_ARRAY:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public nextBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    .line 412
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->BOOLEAN:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v1, v2, :cond_24

    .line 413
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_24
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    const-string v2, "true"

    if-ne v1, v2, :cond_2f

    const/4 v0, 0x1

    .line 417
    .local v0, result:Z
    :goto_2b
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->advance()Lcom/google/android/apps/plus/json/JsonToken;

    .line 418
    return v0

    .line 416
    .end local v0           #result:Z
    :cond_2f
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public nextDouble()D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    .line 446
    iget-object v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v3, Lcom/google/android/apps/plus/json/JsonToken;->STRING:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v2, v3, :cond_2a

    iget-object v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v3, Lcom/google/android/apps/plus/json/JsonToken;->NUMBER:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v2, v3, :cond_2a

    .line 447
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a double but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 450
    :cond_2a
    iget-object v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 451
    .local v0, result:D
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->advance()Lcom/google/android/apps/plus/json/JsonToken;

    .line 452
    return-wide v0
.end method

.method public nextInt()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    .line 498
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v5, Lcom/google/android/apps/plus/json/JsonToken;->STRING:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v4, v5, :cond_2a

    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v5, Lcom/google/android/apps/plus/json/JsonToken;->NUMBER:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v4, v5, :cond_2a

    .line 499
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 504
    :cond_2a
    :try_start_2a
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2f} :catch_34

    move-result v3

    .line 513
    .local v3, result:I
    :cond_30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->advance()Lcom/google/android/apps/plus/json/JsonToken;

    .line 514
    return v3

    .line 505
    .end local v3           #result:I
    :catch_34
    move-exception v2

    .line 506
    .local v2, ignored:Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 507
    .local v0, asDouble:D
    double-to-int v3, v0

    .line 508
    .restart local v3       #result:I
    int-to-double v4, v3

    cmpl-double v4, v4, v0

    if-eqz v4, :cond_30

    .line 509
    new-instance v4, Ljava/lang/NumberFormatException;

    iget-object v5, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public nextLong()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    .line 467
    iget-object v5, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v6, Lcom/google/android/apps/plus/json/JsonToken;->STRING:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v5, v6, :cond_2a

    iget-object v5, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v6, Lcom/google/android/apps/plus/json/JsonToken;->NUMBER:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v5, v6, :cond_2a

    .line 468
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 473
    :cond_2a
    :try_start_2a
    iget-object v5, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2f} :catch_34

    move-result-wide v3

    .line 482
    .local v3, result:J
    :cond_30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->advance()Lcom/google/android/apps/plus/json/JsonToken;

    .line 483
    return-wide v3

    .line 474
    .end local v3           #result:J
    :catch_34
    move-exception v2

    .line 475
    .local v2, ignored:Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 476
    .local v0, asDouble:D
    double-to-long v3, v0

    .line 477
    .restart local v3       #result:J
    long-to-double v5, v3

    cmpl-double v5, v5, v0

    if-eqz v5, :cond_30

    .line 478
    new-instance v5, Ljava/lang/NumberFormatException;

    iget-object v6, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public nextName()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    .line 376
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->NAME:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v1, v2, :cond_26

    .line 377
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_26
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->name:Ljava/lang/String;

    .line 380
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->advance()Lcom/google/android/apps/plus/json/JsonToken;

    .line 381
    return-object v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    .line 394
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->STRING:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v1, v2, :cond_2c

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->NUMBER:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v1, v2, :cond_2c

    .line 395
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    :cond_2c
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonReader;->value:Ljava/lang/String;

    .line 399
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->advance()Lcom/google/android/apps/plus/json/JsonToken;

    .line 400
    return-object v0
.end method

.method public peek()Lcom/google/android/apps/plus/json/JsonToken;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 314
    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    if-eqz v3, :cond_9

    .line 315
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    .line 345
    :cond_8
    :goto_8
    return-object v1

    .line 318
    :cond_9
    sget-object v3, Lcom/google/android/apps/plus/json/JsonReader$1;->$SwitchMap$com$google$android$apps$plus$json$JsonScope:[I

    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->peekStack()Lcom/google/android/apps/plus/json/JsonScope;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/json/JsonScope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_8a

    .line 350
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 320
    :pswitch_1e
    sget-object v3, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/json/JsonReader;->replaceTop(Lcom/google/android/apps/plus/json/JsonScope;)V

    .line 321
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->nextValue()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v1

    .line 322
    .local v1, firstToken:Lcom/google/android/apps/plus/json/JsonToken;
    iget-boolean v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->lenient:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v4, Lcom/google/android/apps/plus/json/JsonToken;->BEGIN_ARRAY:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    sget-object v4, Lcom/google/android/apps/plus/json/JsonToken;->BEGIN_OBJECT:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v3, v4, :cond_8

    .line 323
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 328
    .end local v1           #firstToken:Lcom/google/android/apps/plus/json/JsonToken;
    :pswitch_52
    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/json/JsonReader;->nextInArray(Z)Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v1

    goto :goto_8

    .line 330
    :pswitch_57
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/json/JsonReader;->nextInArray(Z)Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v1

    goto :goto_8

    .line 332
    :pswitch_5c
    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/json/JsonReader;->nextInObject(Z)Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v1

    goto :goto_8

    .line 334
    :pswitch_61
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->objectValue()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v1

    goto :goto_8

    .line 336
    :pswitch_66
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/json/JsonReader;->nextInObject(Z)Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v1

    goto :goto_8

    .line 339
    :pswitch_6b
    :try_start_6b
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->nextValue()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v2

    .line 340
    .local v2, token:Lcom/google/android/apps/plus/json/JsonToken;
    iget-boolean v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->lenient:Z

    if-eqz v3, :cond_75

    move-object v1, v2

    .line 341
    goto :goto_8

    .line 343
    :cond_75
    const-string v3, "Expected EOF"

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/json/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_7c
    .catch Ljava/io/EOFException; {:try_start_6b .. :try_end_7c} :catch_7c

    .line 344
    .end local v2           #token:Lcom/google/android/apps/plus/json/JsonToken;
    :catch_7c
    move-exception v0

    .line 345
    .local v0, e:Ljava/io/EOFException;
    sget-object v1, Lcom/google/android/apps/plus/json/JsonToken;->END_DOCUMENT:Lcom/google/android/apps/plus/json/JsonToken;

    iput-object v1, p0, Lcom/google/android/apps/plus/json/JsonReader;->token:Lcom/google/android/apps/plus/json/JsonToken;

    goto :goto_8

    .line 348
    .end local v0           #e:Ljava/io/EOFException;
    :pswitch_82
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_52
        :pswitch_57
        :pswitch_5c
        :pswitch_61
        :pswitch_66
        :pswitch_6b
        :pswitch_82
    .end packed-switch
.end method

.method public skipValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 535
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/json/JsonReader;->skipping:Z

    .line 537
    const/4 v0, 0x0

    .line 539
    .local v0, count:I
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->advance()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v1

    .line 540
    .local v1, token:Lcom/google/android/apps/plus/json/JsonToken;
    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->BEGIN_ARRAY:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v1, v2, :cond_11

    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->BEGIN_OBJECT:Lcom/google/android/apps/plus/json/JsonToken;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_23

    if-ne v1, v2, :cond_18

    .line 541
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 545
    :cond_13
    :goto_13
    if-nez v0, :cond_5

    .line 547
    iput-boolean v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->skipping:Z

    .line 549
    return-void

    .line 542
    :cond_18
    :try_start_18
    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->END_ARRAY:Lcom/google/android/apps/plus/json/JsonToken;

    if-eq v1, v2, :cond_20

    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->END_OBJECT:Lcom/google/android/apps/plus/json/JsonToken;
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_23

    if-ne v1, v2, :cond_13

    .line 543
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 547
    .end local v1           #token:Lcom/google/android/apps/plus/json/JsonToken;
    :catchall_23
    move-exception v2

    iput-boolean v3, p0, Lcom/google/android/apps/plus/json/JsonReader;->skipping:Z

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
