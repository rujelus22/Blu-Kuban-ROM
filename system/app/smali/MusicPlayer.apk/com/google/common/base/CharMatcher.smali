.class public abstract Lcom/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CharMatcher$LookupTable;,
        Lcom/google/common/base/CharMatcher$Or;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/google/common/base/CharMatcher;

.field public static final ASCII:Lcom/google/common/base/CharMatcher;

.field public static final BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

.field public static final DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final INVISIBLE:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LETTER:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

.field public static final NONE:Lcom/google/common/base/CharMatcher;

.field public static final SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

.field public static final WHITESPACE:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/16 v12, 0x200a

    const/16 v11, 0x600

    const/16 v10, 0x2000

    const/16 v8, 0x7f

    const/4 v9, 0x0

    .line 75
    const-string v6, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f"

    invoke-static {v6}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-static {v10, v12}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    .line 87
    const-string v6, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v6}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2006

    invoke-static {v10, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2008

    invoke-static {v7, v12}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

    .line 96
    invoke-static {v9, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    .line 105
    const/16 v6, 0x30

    const/16 v7, 0x39

    invoke-static {v6, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    .line 106
    .local v2, digit:Lcom/google/common/base/CharMatcher;
    const-string v5, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 110
    .local v5, zeroes:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_53
    if-ge v3, v4, :cond_65

    aget-char v1, v0, v3

    .line 111
    .local v1, base:C
    add-int/lit8 v6, v1, 0x9

    int-to-char v6, v6

    invoke-static {v1, v6}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 113
    .end local v1           #base:C
    :cond_65
    invoke-virtual {v2}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->DIGIT:Lcom/google/common/base/CharMatcher;

    .line 120
    new-instance v6, Lcom/google/common/base/CharMatcher$1;

    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$1;-><init>()V

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 131
    new-instance v6, Lcom/google/common/base/CharMatcher$2;

    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$2;-><init>()V

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/common/base/CharMatcher;

    .line 141
    new-instance v6, Lcom/google/common/base/CharMatcher$3;

    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$3;-><init>()V

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 151
    new-instance v6, Lcom/google/common/base/CharMatcher$4;

    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$4;-><init>()V

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

    .line 161
    new-instance v6, Lcom/google/common/base/CharMatcher$5;

    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$5;-><init>()V

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

    .line 171
    const/16 v6, 0x1f

    invoke-static {v9, v6}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x9f

    invoke-static {v8, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

    .line 179
    const/16 v6, 0x20

    invoke-static {v9, v6}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xa0

    invoke-static {v8, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xad

    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x603

    invoke-static {v11, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const-string v7, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x200f

    invoke-static {v10, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2028

    const/16 v8, 0x202f

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x205f

    const/16 v8, 0x2064

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x206a

    const/16 v8, 0x206f

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x3000

    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xd800

    const v8, 0xf8ff

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const-string v7, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->INVISIBLE:Lcom/google/common/base/CharMatcher;

    .line 201
    const/16 v6, 0x4f9

    invoke-static {v9, v6}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5be

    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5d0

    const/16 v8, 0x5ea

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5f3

    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5f4

    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x6ff

    invoke-static {v11, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x750

    const/16 v8, 0x77f

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xe00

    const/16 v8, 0xe7f

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x1e00

    const/16 v8, 0x20af

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2100

    const/16 v8, 0x213a

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xfb50

    const v8, 0xfdff

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xfe70

    const v8, 0xfeff

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xff61

    const v8, 0xffdc

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

    .line 217
    new-instance v6, Lcom/google/common/base/CharMatcher$6;

    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$6;-><init>()V

    sput-object v6, Lcom/google/common/base/CharMatcher;->ANY:Lcom/google/common/base/CharMatcher;

    .line 297
    new-instance v6, Lcom/google/common/base/CharMatcher$7;

    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$7;-><init>()V

    sput-object v6, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .registers 6
    .parameter "sequence"

    .prologue
    const/4 v4, 0x0

    .line 441
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_34

    .line 465
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 466
    .local v0, chars:[C
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 468
    new-instance v3, Lcom/google/common/base/CharMatcher$11;

    invoke-direct {v3, v0}, Lcom/google/common/base/CharMatcher$11;-><init>([C)V

    .end local v0           #chars:[C
    :goto_18
    return-object v3

    .line 443
    :pswitch_19
    sget-object v3, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    goto :goto_18

    .line 445
    :pswitch_1c
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    goto :goto_18

    .line 447
    :pswitch_25
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 448
    .local v1, match1:C
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 449
    .local v2, match2:C
    new-instance v3, Lcom/google/common/base/CharMatcher$10;

    invoke-direct {v3, v1, v2}, Lcom/google/common/base/CharMatcher$10;-><init>(CC)V

    goto :goto_18

    .line 441
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1c
        :pswitch_25
    .end packed-switch
.end method

.method public static inRange(CC)Lcom/google/common/base/CharMatcher;
    .registers 3
    .parameter "startInclusive"
    .parameter "endInclusive"

    .prologue
    .line 497
    if-lt p1, p0, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 498
    new-instance v0, Lcom/google/common/base/CharMatcher$12;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$12;-><init>(CC)V

    return-object v0

    .line 497
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static is(C)Lcom/google/common/base/CharMatcher;
    .registers 2
    .parameter "match"

    .prologue
    .line 380
    new-instance v0, Lcom/google/common/base/CharMatcher$8;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$8;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Character;)Z
    .registers 3
    .parameter "character"

    .prologue
    .line 1146
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public abstract matches(C)Z
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 6
    .parameter "other"

    .prologue
    .line 615
    new-instance v1, Lcom/google/common/base/CharMatcher$Or;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/google/common/base/CharMatcher;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/base/CharMatcher$Or;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .registers 2

    .prologue
    .line 657
    invoke-static {p0}, Lcom/google/common/base/Platform;->precomputeCharMatcher(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method precomputedInternal()Lcom/google/common/base/CharMatcher;
    .registers 3

    .prologue
    .line 672
    new-instance v0, Lcom/google/common/base/CharMatcher$LookupTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$LookupTable;-><init>(Lcom/google/common/base/CharMatcher$1;)V

    .line 673
    .local v0, table:Lcom/google/common/base/CharMatcher$LookupTable;
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V

    .line 675
    new-instance v1, Lcom/google/common/base/CharMatcher$15;

    invoke-direct {v1, p0, v0}, Lcom/google/common/base/CharMatcher$15;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher$LookupTable;)V

    return-object v1
.end method

.method setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
    .registers 5
    .parameter "table"

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 698
    .local v0, c:C
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 699
    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher$LookupTable;->set(C)V

    .line 701
    :cond_a
    add-int/lit8 v2, v0, 0x1

    int-to-char v1, v2

    .end local v0           #c:C
    .local v1, c:C
    const v2, 0xffff

    if-ne v0, v2, :cond_13

    .line 705
    return-void

    :cond_13
    move v0, v1

    .end local v1           #c:C
    .restart local v0       #c:C
    goto :goto_1
.end method
