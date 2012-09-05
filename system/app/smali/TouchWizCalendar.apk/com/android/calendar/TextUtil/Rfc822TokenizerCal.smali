.class public Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;
.super Ljava/lang/Object;
.source "Rfc822TokenizerCal.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# static fields
.field public static final EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field public static final PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "[^\\s@]+@[^\\s@]+\\.[a-zA-z][a-zA-Z][a-zA-Z]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, "^[0-9][0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getToken(Ljava/lang/StringBuilder;)Lcom/android/calendar/TextUtil/Rfc822TokenCal;
    .registers 6
    .parameter "string"

    .prologue
    .line 50
    sget-object v0, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 51
    new-instance v0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_1b
    return-object v0

    .line 52
    :cond_1c
    sget-object v0, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 53
    new-instance v0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 55
    :cond_38
    new-instance v0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .registers 8
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/TextUtil/Rfc822TokenCal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, out:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/calendar/TextUtil/Rfc822TokenCal;>;"
    const/16 v5, 0x20

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v3, str:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 62
    .local v2, i:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 64
    .local v1, cursor:I
    :goto_c
    if-ge v2, v1, :cond_28

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_28

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 78
    .local v0, c:C
    :cond_17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_24

    .line 79
    invoke-static {v3}, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->getToken(Ljava/lang/StringBuilder;)Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_24
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 68
    .end local v0           #c:C
    :cond_28
    :goto_28
    if-ge v2, v1, :cond_49

    .line 69
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 71
    .restart local v0       #c:C
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_36

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_43

    .line 72
    :cond_36
    add-int/lit8 v2, v2, 0x1

    .line 74
    :goto_38
    if-ge v2, v1, :cond_17

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_17

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 82
    :cond_43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 86
    .end local v0           #c:C
    :cond_49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_57

    .line 87
    invoke-static {v3}, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->getToken(Ljava/lang/StringBuilder;)Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_57
    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .registers 12
    .parameter "text"
    .parameter "cursor"

    .prologue
    const/16 v8, 0x7b

    const/16 v7, 0x28

    const/16 v6, 0x22

    const/16 v5, 0x5c

    .line 166
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 167
    .local v2, len:I
    move v1, p2

    .line 169
    .local v1, i:I
    :cond_d
    :goto_d
    if-ge v1, v2, :cond_1b

    .line 170
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 172
    .local v0, c:C
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_1b

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_1c

    .line 245
    .end local v0           #c:C
    :cond_1b
    return v1

    .line 174
    .restart local v0       #c:C
    :cond_1c
    if-ne v0, v6, :cond_33

    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 177
    :goto_20
    if-ge v1, v2, :cond_d

    .line 178
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 180
    if-ne v0, v6, :cond_2b

    .line 181
    add-int/lit8 v1, v1, 0x1

    .line 182
    goto :goto_d

    .line 183
    :cond_2b
    if-ne v0, v5, :cond_30

    .line 184
    add-int/lit8 v1, v1, 0x2

    goto :goto_20

    .line 186
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 189
    :cond_33
    if-ne v0, v8, :cond_58

    .line 190
    const/4 v3, 0x1

    .line 191
    .local v3, level:I
    add-int/lit8 v1, v1, 0x1

    .line 193
    :goto_38
    if-ge v1, v2, :cond_d

    if-lez v3, :cond_d

    .line 194
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 196
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_49

    .line 197
    add-int/lit8 v3, v3, -0x1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 199
    :cond_49
    if-ne v0, v8, :cond_50

    .line 200
    add-int/lit8 v3, v3, 0x1

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 202
    :cond_50
    if-ne v0, v5, :cond_55

    .line 203
    add-int/lit8 v1, v1, 0x2

    goto :goto_38

    .line 205
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 208
    .end local v3           #level:I
    :cond_58
    if-ne v0, v7, :cond_7d

    .line 209
    const/4 v3, 0x1

    .line 210
    .restart local v3       #level:I
    add-int/lit8 v1, v1, 0x1

    .line 212
    :goto_5d
    if-ge v1, v2, :cond_d

    if-lez v3, :cond_d

    .line 213
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 215
    const/16 v4, 0x29

    if-ne v0, v4, :cond_6e

    .line 216
    add-int/lit8 v3, v3, -0x1

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 218
    :cond_6e
    if-ne v0, v7, :cond_75

    .line 219
    add-int/lit8 v3, v3, 0x1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 221
    :cond_75
    if-ne v0, v5, :cond_7a

    .line 222
    add-int/lit8 v1, v1, 0x2

    goto :goto_5d

    .line 224
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 227
    .end local v3           #level:I
    :cond_7d
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_94

    .line 228
    add-int/lit8 v1, v1, 0x1

    .line 230
    :goto_83
    if-ge v1, v2, :cond_d

    .line 231
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 233
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_91

    .line 234
    add-int/lit8 v1, v1, 0x1

    .line 235
    goto/16 :goto_d

    .line 237
    :cond_91
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 241
    :cond_94
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .registers 7
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, best:I
    const/4 v1, 0x0

    .line 143
    .local v1, i:I
    :cond_2
    :goto_2
    if-ge v1, p2, :cond_1d

    .line 144
    invoke-virtual {p0, p1, v1}, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 146
    if-ge v1, p2, :cond_2

    .line 147
    add-int/lit8 v1, v1, 0x1

    .line 149
    :goto_c
    if-ge v1, p2, :cond_19

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_19

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 153
    :cond_19
    if-ge v1, p2, :cond_2

    .line 154
    move v0, v1

    goto :goto_2

    .line 159
    :cond_1d
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "text"

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
