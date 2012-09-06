.class public final enum Lcom/google/common/base/CaseFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

.field public static final enum UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

.field public static final enum UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;


# instance fields
.field private final wordBoundary:Lcom/google/common/base/d;

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

    .line 32
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "LOWER_HYPHEN"

    const/16 v2, 0x2d

    invoke-static {v2}, Lcom/google/common/base/d;->a(C)Lcom/google/common/base/d;

    move-result-object v2

    const-string v3, "-"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/d;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

    .line 37
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "LOWER_UNDERSCORE"

    const/16 v2, 0x5f

    invoke-static {v2}, Lcom/google/common/base/d;->a(C)Lcom/google/common/base/d;

    move-result-object v2

    const-string v3, "_"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/d;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    .line 42
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "LOWER_CAMEL"

    const/16 v2, 0x41

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/d;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

    .line 47
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "UPPER_CAMEL"

    const/16 v2, 0x41

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/d;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    .line 52
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "UPPER_UNDERSCORE"

    const/16 v2, 0x5f

    invoke-static {v2}, Lcom/google/common/base/d;->a(C)Lcom/google/common/base/d;

    move-result-object v2

    const-string v3, "_"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/d;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    .line 27
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

.method private constructor <init>(Ljava/lang/String;ILcom/google/common/base/d;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/google/common/base/CaseFormat;->wordBoundary:Lcom/google/common/base/d;

    .line 59
    iput-object p4, p0, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private static firstCharOnlyToUpper(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 156
    if-nez v0, :cond_7

    .line 159
    :goto_6
    return-object p0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/b;->a(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method private normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 130
    sget-object v0, Lcom/google/common/base/c;->a:[I

    invoke-virtual {p0}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 134
    invoke-direct {p0, p1}, Lcom/google/common/base/CaseFormat;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    .line 132
    :pswitch_10
    invoke-static {p1}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 130
    nop

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_10
    .end packed-switch
.end method

.method private normalizeWord(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 139
    sget-object v0, Lcom/google/common/base/c;->a:[I

    invoke-virtual {p0}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown case: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :pswitch_20
    invoke-static {p1}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_24
    return-object v0

    .line 143
    :pswitch_25
    invoke-static {p1}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 145
    :pswitch_2a
    invoke-static {p1}, Lcom/google/common/base/CaseFormat;->firstCharOnlyToUpper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 147
    :pswitch_2f
    invoke-static {p1}, Lcom/google/common/base/CaseFormat;->firstCharOnlyToUpper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 149
    :pswitch_34
    invoke-static {p1}, Lcom/google/common/base/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 139
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_34
        :pswitch_20
        :pswitch_2a
        :pswitch_2f
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/CaseFormat;
    .registers 2
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/google/common/base/CaseFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CaseFormat;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/CaseFormat;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/common/base/CaseFormat;->$VALUES:[Lcom/google/common/base/CaseFormat;

    invoke-virtual {v0}, [Lcom/google/common/base/CaseFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/CaseFormat;

    return-object v0
.end method


# virtual methods
.method public final to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/16 v4, 0x5f

    const/16 v3, 0x2d

    .line 68
    if-nez p1, :cond_d

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 71
    :cond_d
    if-nez p2, :cond_15

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_15
    if-ne p1, p0, :cond_18

    .line 126
    :goto_17
    return-object p2

    .line 80
    :cond_18
    sget-object v0, Lcom/google/common/base/c;->a:[I

    invoke-virtual {p0}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_d0

    .line 108
    :goto_23
    const/4 v1, 0x0

    .line 109
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v2

    .line 111
    :goto_28
    iget-object v4, p0, Lcom/google/common/base/CaseFormat;->wordBoundary:Lcom/google/common/base/d;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, p2, v1}, Lcom/google/common/base/d;->a(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eq v1, v2, :cond_b6

    .line 112
    if-nez v3, :cond_aa

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 115
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/google/common/base/CaseFormat;->normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :goto_51
    iget-object v3, p1, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v3, p0, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_28

    .line 82
    :pswitch_5e
    sget-object v0, Lcom/google/common/base/c;->a:[I

    invoke-virtual {p1}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_da

    goto :goto_23

    .line 84
    :pswitch_6a
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    goto :goto_17

    .line 86
    :pswitch_6f
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_17

    .line 90
    :pswitch_78
    sget-object v0, Lcom/google/common/base/c;->a:[I

    invoke-virtual {p1}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_e2

    goto :goto_23

    .line 94
    :pswitch_84
    invoke-static {p2}, Lcom/google/common/base/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_17

    .line 92
    :pswitch_89
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    goto :goto_17

    .line 98
    :pswitch_8e
    sget-object v0, Lcom/google/common/base/c;->a:[I

    invoke-virtual {p1}, Lcom/google/common/base/CaseFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ea

    :pswitch_99
    goto :goto_23

    .line 102
    :pswitch_9a
    invoke-static {p2}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_17

    .line 100
    :pswitch_a0
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_17

    .line 117
    :cond_aa
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/google/common/base/CaseFormat;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 122
    :cond_b6
    if-nez v3, :cond_be

    .line 123
    invoke-direct {p1, p2}, Lcom/google/common/base/CaseFormat;->normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_17

    .line 125
    :cond_be
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/common/base/CaseFormat;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_17

    .line 80
    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_78
        :pswitch_8e
        :pswitch_5e
    .end packed-switch

    .line 82
    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_6f
    .end packed-switch

    .line 90
    :pswitch_data_e2
    .packed-switch 0x2
        :pswitch_84
        :pswitch_89
    .end packed-switch

    .line 98
    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_99
        :pswitch_a0
    .end packed-switch
.end method
