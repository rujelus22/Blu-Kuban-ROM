.class public final enum Lcom/google/common/base/CaseFormat;
.super Ljava/lang/Enum;
.source "CaseFormat.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CaseFormat$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/CaseFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

.field public static final enum UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

.field public static final enum UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;


# instance fields
.field private final wordBoundary:Lcom/google/common/base/CharMatcher;

.field private final wordSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "LOWER_HYPHEN"

    const/16 v2, 0x2d

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    const-string v3, "-"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

    .line 38
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "LOWER_UNDERSCORE"

    const/16 v2, 0x5f

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    const-string v3, "_"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    .line 43
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "LOWER_CAMEL"

    const/16 v2, 0x41

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

    .line 48
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "UPPER_CAMEL"

    const/16 v2, 0x41

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    .line 53
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "UPPER_UNDERSCORE"

    const/16 v2, 0x5f

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    const-string v3, "_"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/base/CaseFormat;

    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/common/base/CaseFormat;->$VALUES:[Lcom/google/common/base/CaseFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter "wordBoundary"
    .parameter "wordSeparator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/CharMatcher;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/google/common/base/CaseFormat;->wordBoundary:Lcom/google/common/base/CharMatcher;

    .line 60
    iput-object p4, p0, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private static firstCharOnlyToUpper(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "word"

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 174
    .local v0, length:I
    if-nez v0, :cond_7

    .line 177
    .end local p0
    :goto_6
    return-object p0

    .restart local p0
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method private normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "word"

    .prologue
    .line 148
    sget-object v0, Lcom/google/common/base/CaseFormat$2;->$SwitchMap$com$google$common$base$CaseFormat:[I

    invoke-virtual {p0}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 152
    invoke-direct {p0, p1}, Lcom/google/common/base/CaseFormat;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    .line 150
    :pswitch_10
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 148
    nop

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_10
    .end packed-switch
.end method

.method private normalizeWord(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "word"

    .prologue
    .line 157
    sget-object v0, Lcom/google/common/base/CaseFormat$2;->$SwitchMap$com$google$common$base$CaseFormat:[I

    invoke-virtual {p0}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_24
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_28
    return-object v0

    .line 161
    :pswitch_29
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 163
    :pswitch_2e
    invoke-static {p1}, Lcom/google/common/base/CaseFormat;->firstCharOnlyToUpper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 165
    :pswitch_33
    invoke-static {p1}, Lcom/google/common/base/CaseFormat;->firstCharOnlyToUpper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 167
    :pswitch_38
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 157
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_38
        :pswitch_24
        :pswitch_2e
        :pswitch_33
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/CaseFormat;
    .registers 2
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/google/common/base/CaseFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CaseFormat;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/CaseFormat;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/common/base/CaseFormat;->$VALUES:[Lcom/google/common/base/CaseFormat;

    invoke-virtual {v0}, [Lcom/google/common/base/CaseFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/CaseFormat;

    return-object v0
.end method


# virtual methods
.method public converterTo(Lcom/google/common/base/CaseFormat;)Lcom/google/common/base/Converter;
    .registers 3
    .parameter "targetFormat"
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/CaseFormat;",
            ")",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/google/common/base/CaseFormat$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CaseFormat$1;-><init>(Lcom/google/common/base/CaseFormat;Lcom/google/common/base/CaseFormat;)V

    return-object v0
.end method

.method public to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "format"
    .parameter "s"

    .prologue
    const/16 v6, 0x5f

    const/16 v5, 0x2d

    .line 69
    if-nez p1, :cond_c

    .line 70
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 72
    :cond_c
    if-nez p2, :cond_14

    .line 73
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 76
    :cond_14
    if-ne p1, p0, :cond_17

    .line 127
    .end local p2
    :goto_16
    return-object p2

    .line 81
    .restart local p2
    :cond_17
    sget-object v3, Lcom/google/common/base/CaseFormat$2;->$SwitchMap$com$google$common$base$CaseFormat:[I

    invoke-virtual {p0}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_ce

    .line 109
    :goto_22
    const/4 v2, 0x0

    .line 110
    .local v2, out:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 111
    .local v0, i:I
    const/4 v1, -0x1

    .line 112
    .local v1, j:I
    :goto_25
    iget-object v3, p0, Lcom/google/common/base/CaseFormat;->wordBoundary:Lcom/google/common/base/CharMatcher;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, p2, v1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_b5

    .line 113
    if-nez v0, :cond_a9

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #out:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    .restart local v2       #out:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/google/common/base/CaseFormat;->normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :goto_4f
    iget-object v3, p1, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v3, p0, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v1, v3

    goto :goto_25

    .line 83
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #out:Ljava/lang/StringBuilder;
    :pswitch_5d
    sget-object v3, Lcom/google/common/base/CaseFormat$2;->$SwitchMap$com$google$common$base$CaseFormat:[I

    invoke-virtual {p1}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_d8

    goto :goto_22

    .line 85
    :pswitch_69
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    goto :goto_16

    .line 87
    :pswitch_6e
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_16

    .line 91
    :pswitch_77
    sget-object v3, Lcom/google/common/base/CaseFormat$2;->$SwitchMap$com$google$common$base$CaseFormat:[I

    invoke-virtual {p1}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_e0

    goto :goto_22

    .line 95
    :pswitch_83
    invoke-static {p2}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_16

    .line 93
    :pswitch_88
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    goto :goto_16

    .line 99
    :pswitch_8d
    sget-object v3, Lcom/google/common/base/CaseFormat$2;->$SwitchMap$com$google$common$base$CaseFormat:[I

    invoke-virtual {p1}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_e8

    :pswitch_98
    goto :goto_22

    .line 103
    :pswitch_99
    invoke-static {p2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_16

    .line 101
    :pswitch_9f
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_16

    .line 118
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #out:Ljava/lang/StringBuilder;
    :cond_a9
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/google/common/base/CaseFormat;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 123
    :cond_b5
    if-nez v0, :cond_bd

    .line 124
    invoke-direct {p1, p2}, Lcom/google/common/base/CaseFormat;->normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_16

    .line 126
    :cond_bd
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/google/common/base/CaseFormat;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_16

    .line 81
    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_77
        :pswitch_8d
        :pswitch_5d
    .end packed-switch

    .line 83
    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_69
        :pswitch_6e
    .end packed-switch

    .line 91
    :pswitch_data_e0
    .packed-switch 0x2
        :pswitch_83
        :pswitch_88
    .end packed-switch

    .line 99
    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_99
        :pswitch_98
        :pswitch_9f
    .end packed-switch
.end method
