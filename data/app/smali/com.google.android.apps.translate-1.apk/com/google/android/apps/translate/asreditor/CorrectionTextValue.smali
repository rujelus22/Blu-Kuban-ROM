.class public Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;
.super Lcom/google/android/apps/translate/editor/TextValue;
.source "CorrectionTextValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final WORD_BOUNDARY_PATTERN_STRING:Ljava/lang/String; = "(\\s+|[\\p{InHangulJamo}\\p{InHangulCompatibilityJamo}\\p{InHangulSyllables}\\p{InCjkRadicalsSupplement}\\p{InKangxiRadicals}\\p{InIdeographicDescriptionCharacters}\\p{InCjkSymbolsAndPunctuation}\\p{InEnclosedCjkLettersAndMonths}\\p{InCjkUnifiedIdeographs}\\p{InCjkUnifiedIdeographsExtensionA}\\p{InCjkUnifiedIdeographsExtensionB}\\p{InHiragana}\\p{InKatakana}])"

.field private static final WORD_PATTERN_STRING:Ljava/lang/String; = "([\\S&&[^\\p{InHangulJamo}\\p{InHangulCompatibilityJamo}\\p{InHangulSyllables}\\p{InCjkRadicalsSupplement}\\p{InKangxiRadicals}\\p{InIdeographicDescriptionCharacters}\\p{InCjkSymbolsAndPunctuation}\\p{InEnclosedCjkLettersAndMonths}\\p{InCjkUnifiedIdeographs}\\p{InCjkUnifiedIdeographsExtensionA}\\p{InCjkUnifiedIdeographsExtensionB}\\p{InHiragana}\\p{InKatakana}]]*)"

.field private static final WS_SUFFIX_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mPhrases:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    const-string v0, "([\\S&&[^\\p{InHangulJamo}\\p{InHangulCompatibilityJamo}\\p{InHangulSyllables}\\p{InCjkRadicalsSupplement}\\p{InKangxiRadicals}\\p{InIdeographicDescriptionCharacters}\\p{InCjkSymbolsAndPunctuation}\\p{InEnclosedCjkLettersAndMonths}\\p{InCjkUnifiedIdeographs}\\p{InCjkUnifiedIdeographsExtensionA}\\p{InCjkUnifiedIdeographsExtensionB}\\p{InHiragana}\\p{InKatakana}]]*)(\\s+|[\\p{InHangulJamo}\\p{InHangulCompatibilityJamo}\\p{InHangulSyllables}\\p{InCjkRadicalsSupplement}\\p{InKangxiRadicals}\\p{InIdeographicDescriptionCharacters}\\p{InCjkSymbolsAndPunctuation}\\p{InEnclosedCjkLettersAndMonths}\\p{InCjkUnifiedIdeographs}\\p{InCjkUnifiedIdeographsExtensionA}\\p{InCjkUnifiedIdeographsExtensionB}\\p{InHiragana}\\p{InKatakana}])"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->WS_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 59
    new-instance v0, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue$1;

    invoke-direct {v0}, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/editor/TextValue;-><init>(Landroid/os/Parcel;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 47
    .local v0, length:I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 41
    iget-object v0, p1, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;-><init>([Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/TextValue;-><init>()V

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 38
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 2
    .parameter "nbestPhrases"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/TextValue;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getAlternates(Ljava/lang/CharSequence;IIZ)Ljava/util/List;
    .registers 23
    .parameter "str"
    .parameter "start"
    .parameter "end"
    .parameter "capitalize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v15, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, head:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v15

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 78
    .local v14, tail:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3f

    .line 79
    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 80
    .local v11, nextChar:Ljava/lang/String;
    sget-object v15, Lcom/google/android/apps/translate/Constants;->CJK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_b8

    .line 81
    move-object v14, v11

    .line 91
    .end local v11           #nextChar:Ljava/lang/String;
    :cond_3f
    :goto_3f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v5, alternates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_4a
    if-ge v8, v9, :cond_ea

    aget-object v13, v6, v8

    .line 94
    .local v13, phraseCased:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, phrase:Ljava/lang/String;
    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 97
    .local v4, altStart:I
    if-ltz v4, :cond_b5

    .line 98
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v4, v15

    .line 101
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_e3

    .line 103
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    .line 110
    .local v3, altEnd:I
    :goto_6b
    if-ltz v3, :cond_b5

    .line 112
    invoke-virtual {v13, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, alt:Ljava/lang/String;
    if-eqz p4, :cond_a2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_a2

    .line 115
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    :cond_a2
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b5

    .line 118
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v2           #alt:Ljava/lang/String;
    .end local v3           #altEnd:I
    :cond_b5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    .line 84
    .end local v4           #altStart:I
    .end local v5           #alternates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #phrase:Ljava/lang/String;
    .end local v13           #phraseCased:Ljava/lang/String;
    .restart local v11       #nextChar:Ljava/lang/String;
    :cond_b8
    sget-object v15, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->WS_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    const/16 v16, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 85
    .local v10, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_3f

    .line 86
    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3f

    .line 106
    .end local v10           #matcher:Ljava/util/regex/Matcher;
    .end local v11           #nextChar:Ljava/lang/String;
    .restart local v4       #altStart:I
    .restart local v5       #alternates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v12       #phrase:Ljava/lang/String;
    .restart local v13       #phraseCased:Ljava/lang/String;
    :cond_e3
    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .restart local v3       #altEnd:I
    goto :goto_6b

    .line 124
    .end local v3           #altEnd:I
    .end local v4           #altStart:I
    .end local v12           #phrase:Ljava/lang/String;
    .end local v13           #phraseCased:Ljava/lang/String;
    :cond_ea
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    return-object v5
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/translate/editor/TextValue;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 56
    return-void
.end method
