.class public abstract Lcom/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CharMatcher$LookupTable;,
        Lcom/google/common/base/CharMatcher$Or;,
        Lcom/google/common/base/CharMatcher$And;
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


# instance fields
.field final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/16 v12, 0x2000

    const/16 v11, 0x600

    const/16 v10, 0x7f

    const/4 v9, 0x0

    .line 63
    const-string v6, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v6}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2006

    invoke-static {v12, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2008

    const/16 v8, 0x200a

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const-string v7, "CharMatcher.BREAKING_WHITESPACE"

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

    .line 73
    const-string v6, "CharMatcher.ASCII"

    invoke-static {v9, v10, v6}, Lcom/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    .line 82
    const/16 v6, 0x30

    const/16 v7, 0x39

    invoke-static {v6, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    .line 83
    .local v2, digit:Lcom/google/common/base/CharMatcher;
    const-string v5, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 87
    .local v5, zeroes:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_47
    if-ge v3, v4, :cond_59

    aget-char v1, v0, v3

    .line 88
    .local v1, base:C
    add-int/lit8 v6, v1, 0x9

    int-to-char v6, v6

    invoke-static {v1, v6}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 90
    .end local v1           #base:C
    :cond_59
    const-string v6, "CharMatcher.DIGIT"

    invoke-virtual {v2, v6}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->DIGIT:Lcom/google/common/base/CharMatcher;

    .line 97
    new-instance v6, Lcom/google/common/base/CharMatcher$1;

    const-string v7, "CharMatcher.JAVA_DIGIT"

    invoke-direct {v6, v7}, Lcom/google/common/base/CharMatcher$1;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 108
    new-instance v6, Lcom/google/common/base/CharMatcher$2;

    const-string v7, "CharMatcher.JAVA_LETTER"

    invoke-direct {v6, v7}, Lcom/google/common/base/CharMatcher$2;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/common/base/CharMatcher;

    .line 122
    new-instance v6, Lcom/google/common/base/CharMatcher$3;

    const-string v7, "CharMatcher.JAVA_LETTER_OR_DIGIT"

    invoke-direct {v6, v7}, Lcom/google/common/base/CharMatcher$3;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 133
    new-instance v6, Lcom/google/common/base/CharMatcher$4;

    const-string v7, "CharMatcher.JAVA_UPPER_CASE"

    invoke-direct {v6, v7}, Lcom/google/common/base/CharMatcher$4;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

    .line 144
    new-instance v6, Lcom/google/common/base/CharMatcher$5;

    const-string v7, "CharMatcher.JAVA_LOWER_CASE"

    invoke-direct {v6, v7}, Lcom/google/common/base/CharMatcher$5;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

    .line 155
    const/16 v6, 0x1f

    invoke-static {v9, v6}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x9f

    invoke-static {v10, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const-string v7, "CharMatcher.JAVA_ISO_CONTROL"

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

    .line 165
    const/16 v6, 0x20

    invoke-static {v9, v6}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xa0

    invoke-static {v10, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xad

    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x604

    invoke-static {v11, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const-string v7, "\u06dd\u070f\u1680\u180e"

    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x200f

    invoke-static {v12, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

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

    const-string v7, "CharMatcher.INVISIBLE"

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->INVISIBLE:Lcom/google/common/base/CharMatcher;

    .line 188
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

    const-string v7, "CharMatcher.SINGLE_WIDTH"

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

    .line 205
    new-instance v6, Lcom/google/common/base/CharMatcher$6;

    const-string v7, "CharMatcher.ANY"

    invoke-direct {v6, v7}, Lcom/google/common/base/CharMatcher$6;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/google/common/base/CharMatcher;->ANY:Lcom/google/common/base/CharMatcher;

    .line 285
    new-instance v6, Lcom/google/common/base/CharMatcher$7;

    const-string v7, "CharMatcher.NONE"

    invoke-direct {v6, v7}, Lcom/google/common/base/CharMatcher$7;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    .line 1236
    new-instance v6, Lcom/google/common/base/CharMatcher$16;

    const-string v7, "CharMatcher.WHITESPACE"

    invoke-direct {v6, v7}, Lcom/google/common/base/CharMatcher$16;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    const-string v0, "UnknownCharMatcher"

    iput-object v0, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    .line 567
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "description"

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    .line 559
    return-void
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .registers 7
    .parameter "sequence"

    .prologue
    const/4 v4, 0x0

    .line 437
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_5e

    .line 461
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 462
    .local v0, chars:[C
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 464
    new-instance v3, Lcom/google/common/base/CharMatcher$11;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CharMatcher.anyOf(\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/google/common/base/CharMatcher$11;-><init>(Ljava/lang/String;[C)V

    .end local v0           #chars:[C
    :goto_2d
    return-object v3

    .line 439
    :pswitch_2e
    sget-object v3, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    goto :goto_2d

    .line 441
    :pswitch_31
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    goto :goto_2d

    .line 443
    :pswitch_3a
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 444
    .local v1, match1:C
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 445
    .local v2, match2:C
    new-instance v3, Lcom/google/common/base/CharMatcher$10;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CharMatcher.anyOf(\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/google/common/base/CharMatcher$10;-><init>(Ljava/lang/String;CC)V

    goto :goto_2d

    .line 437
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_31
        :pswitch_3a
    .end packed-switch
.end method

.method public static forPredicate(Lcom/google/common/base/Predicate;)Lcom/google/common/base/CharMatcher;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/lang/Character;",
            ">;)",
            "Lcom/google/common/base/CharMatcher;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-Ljava/lang/Character;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    instance-of v1, p0, Lcom/google/common/base/CharMatcher;

    if-eqz v1, :cond_a

    .line 532
    check-cast p0, Lcom/google/common/base/CharMatcher;

    .line 538
    .end local p0           #predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-Ljava/lang/Character;>;"
    .local v0, description:Ljava/lang/String;
    :goto_9
    return-object p0

    .line 534
    .end local v0           #description:Ljava/lang/String;
    .restart local p0       #predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-Ljava/lang/Character;>;"
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CharMatcher.forPredicate("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    .restart local v0       #description:Ljava/lang/String;
    new-instance v1, Lcom/google/common/base/CharMatcher$13;

    invoke-direct {v1, v0, p0}, Lcom/google/common/base/CharMatcher$13;-><init>(Ljava/lang/String;Lcom/google/common/base/Predicate;)V

    move-object p0, v1

    goto :goto_9
.end method

.method public static inRange(CC)Lcom/google/common/base/CharMatcher;
    .registers 5
    .parameter "startInclusive"
    .parameter "endInclusive"

    .prologue
    .line 488
    if-lt p1, p0, :cond_32

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CharMatcher.inRange("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, description:Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    return-object v1

    .line 488
    .end local v0           #description:Ljava/lang/String;
    :cond_32
    const/4 v1, 0x0

    goto :goto_3
.end method

.method static inRange(CCLjava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 7
    .parameter "startInclusive"
    .parameter "endInclusive"
    .parameter "description"

    .prologue
    .line 500
    sub-int v2, p1, p0

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [C

    .line 501
    .local v0, chars:[C
    move v1, p0

    .local v1, i:I
    :goto_7
    if-gt v1, p1, :cond_11

    .line 502
    sub-int v2, v1, p0

    int-to-char v3, v1

    aput-char v3, v0, v2

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 504
    :cond_11
    new-instance v2, Lcom/google/common/base/CharMatcher$12;

    invoke-direct {v2, p2, p0, p1}, Lcom/google/common/base/CharMatcher$12;-><init>(Ljava/lang/String;CC)V

    return-object v2
.end method

.method public static is(C)Lcom/google/common/base/CharMatcher;
    .registers 4
    .parameter "match"

    .prologue
    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CharMatcher.is("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, description:Ljava/lang/String;
    new-instance v1, Lcom/google/common/base/CharMatcher$8;

    invoke-direct {v1, v0, p0}, Lcom/google/common/base/CharMatcher$8;-><init>(Ljava/lang/String;C)V

    return-object v1
.end method

.method public static isNot(C)Lcom/google/common/base/CharMatcher;
    .registers 4
    .parameter "match"

    .prologue
    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CharMatcher.isNot("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, description:Ljava/lang/String;
    new-instance v1, Lcom/google/common/base/CharMatcher$9;

    invoke-direct {v1, v0, p0}, Lcom/google/common/base/CharMatcher$9;-><init>(Ljava/lang/String;C)V

    return-object v1
.end method

.method public static noneOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .registers 2
    .parameter "sequence"

    .prologue
    .line 477
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 4
    .parameter "other"

    .prologue
    .line 608
    new-instance v1, Lcom/google/common/base/CharMatcher$And;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    invoke-direct {v1, p0, v0}, Lcom/google/common/base/CharMatcher$And;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v1
.end method

.method public apply(Ljava/lang/Character;)Z
    .registers 3
    .parameter "character"

    .prologue
    .line 1213
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
    .line 52
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 10
    .parameter "sequence"
    .parameter "replacement"
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1152
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1153
    .local v2, first:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_c

    .line 1154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1174
    :goto_b
    return-object v5

    .line 1158
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    invoke-interface {p1, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1161
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 1162
    .local v4, in:Z
    add-int/lit8 v3, v2, 0x1

    .local v3, i:I
    :goto_25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_43

    .line 1163
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1164
    .local v1, c:C
    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1165
    if-nez v4, :cond_3b

    .line 1166
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1167
    const/4 v4, 0x1

    .line 1162
    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1170
    :cond_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1171
    const/4 v4, 0x0

    goto :goto_3b

    .line 1174
    .end local v1           #c:C
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_b
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .registers 5
    .parameter "sequence"

    .prologue
    .line 914
    const/4 v0, 0x0

    .line 915
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 916
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 917
    add-int/lit8 v0, v0, 0x1

    .line 915
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 920
    :cond_17
    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .registers 5
    .parameter "sequence"

    .prologue
    .line 856
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 857
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_15

    .line 858
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 862
    .end local v0           #i:I
    :goto_11
    return v0

    .line 857
    .restart local v0       #i:I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 862
    :cond_15
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .registers 6
    .parameter "sequence"
    .parameter "start"

    .prologue
    .line 881
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 882
    .local v1, length:I
    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 883
    move v0, p2

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_18

    .line 884
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 888
    .end local v0           #i:I
    :goto_14
    return v0

    .line 883
    .restart local v0       #i:I
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 888
    :cond_18
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .registers 4
    .parameter "sequence"

    .prologue
    .line 902
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_6
    if-ltz v0, :cond_16

    .line 903
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 907
    .end local v0           #i:I
    :goto_12
    return v0

    .line 902
    .restart local v0       #i:I
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 907
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public abstract matches(C)Z
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "sequence"

    .prologue
    .line 822
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_6
    if-ltz v0, :cond_17

    .line 823
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_14

    .line 824
    const/4 v1, 0x0

    .line 827
    :goto_13
    return v1

    .line 822
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 827
    :cond_17
    const/4 v1, 0x1

    goto :goto_13
.end method

.method public matchesAnyOf(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "sequence"

    .prologue
    .line 808
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "sequence"

    .prologue
    .line 842
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .registers 5

    .prologue
    .line 580
    move-object v0, p0

    .line 581
    .local v0, original:Lcom/google/common/base/CharMatcher;
    new-instance v1, Lcom/google/common/base/CharMatcher$14;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".negate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/common/base/CharMatcher$14;-><init>(Lcom/google/common/base/CharMatcher;Ljava/lang/String;Lcom/google/common/base/CharMatcher;)V

    return-object v1
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 4
    .parameter "other"

    .prologue
    .line 645
    new-instance v1, Lcom/google/common/base/CharMatcher$Or;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    invoke-direct {v1, p0, v0}, Lcom/google/common/base/CharMatcher$Or;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v1
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .registers 2

    .prologue
    .line 688
    invoke-static {p0}, Lcom/google/common/base/Platform;->precomputeCharMatcher(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method precomputedInternal()Lcom/google/common/base/CharMatcher;
    .registers 7

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->slowGetChars()[C

    move-result-object v0

    .line 718
    .local v0, chars:[C
    array-length v3, v0

    .line 719
    .local v3, totalCharacters:I
    if-nez v3, :cond_a

    .line 720
    sget-object v4, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    .line 733
    :goto_9
    return-object v4

    .line 721
    :cond_a
    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 722
    const/4 v4, 0x0

    aget-char v4, v0, v4

    invoke-static {v4}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v4

    goto :goto_9

    .line 723
    :cond_15
    const/16 v4, 0x3f

    if-ge v3, v4, :cond_22

    .line 724
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/SmallCharMatcher;->from([CLjava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v4

    goto :goto_9

    .line 725
    :cond_22
    const/16 v4, 0x3ff

    if-ge v3, v4, :cond_2f

    .line 726
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/MediumCharMatcher;->from([CLjava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v4

    goto :goto_9

    .line 729
    :cond_2f
    new-instance v2, Lcom/google/common/base/CharMatcher$LookupTable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/google/common/base/CharMatcher$LookupTable;-><init>(Lcom/google/common/base/CharMatcher$1;)V

    .line 730
    .local v2, table:Lcom/google/common/base/CharMatcher$LookupTable;
    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V

    .line 731
    move-object v1, p0

    .line 733
    .local v1, outer:Lcom/google/common/base/CharMatcher;
    new-instance v4, Lcom/google/common/base/CharMatcher$15;

    invoke-virtual {v1}, Lcom/google/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lcom/google/common/base/CharMatcher$15;-><init>(Lcom/google/common/base/CharMatcher;Ljava/lang/String;Lcom/google/common/base/CharMatcher$LookupTable;)V

    goto :goto_9
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8
    .parameter "sequence"
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 933
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 934
    .local v3, string:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 935
    .local v1, pos:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_c

    .line 957
    .end local v3           #string:Ljava/lang/String;
    :goto_b
    return-object v3

    .line 939
    .restart local v3       #string:Ljava/lang/String;
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 940
    .local v0, chars:[C
    const/4 v2, 0x1

    .line 944
    .local v2, spread:I
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 946
    :goto_13
    array-length v4, v0

    if-ne v1, v4, :cond_1f

    .line 957
    new-instance v3, Ljava/lang/String;

    .end local v3           #string:Ljava/lang/String;
    const/4 v4, 0x0

    sub-int v5, v1, v2

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_b

    .line 949
    .restart local v3       #string:Ljava/lang/String;
    :cond_1f
    aget-char v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 955
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 952
    :cond_2a
    sub-int v4, v1, v2

    aget-char v5, v0, v1

    aput-char v5, v0, v4

    .line 953
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 8
    .parameter "sequence"
    .parameter "replacement"
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 992
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 993
    .local v3, string:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 994
    .local v2, pos:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_c

    .line 1004
    .end local v3           #string:Ljava/lang/String;
    :goto_b
    return-object v3

    .line 997
    .restart local v3       #string:Ljava/lang/String;
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 998
    .local v0, chars:[C
    aput-char p2, v0, v2

    .line 999
    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_14
    array-length v4, v0

    if-ge v1, v4, :cond_24

    .line 1000
    aget-char v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1001
    aput-char p2, v0, v1

    .line 999
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1004
    :cond_24
    new-instance v3, Ljava/lang/String;

    .end local v3           #string:Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_b
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 11
    .parameter "sequence"
    .parameter "replacement"
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 1025
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1026
    .local v4, replacementLen:I
    if-nez v4, :cond_c

    .line 1027
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1051
    :cond_b
    :goto_b
    return-object v5

    .line 1029
    :cond_c
    const/4 v6, 0x1

    if-ne v4, v6, :cond_19

    .line 1030
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    .line 1033
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1034
    .local v5, string:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1035
    .local v3, pos:I
    if-eq v3, v7, :cond_b

    .line 1039
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 1040
    .local v1, len:I
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v1, 0x3

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1042
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1044
    .local v2, oldpos:I
    :cond_33
    invoke-virtual {v0, v5, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1046
    add-int/lit8 v2, v3, 0x1

    .line 1047
    invoke-virtual {p0, v5, v2}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1048
    if-ne v3, v7, :cond_33

    .line 1050
    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_b
.end method

.method public retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .parameter "sequence"
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
    .registers 5
    .parameter "table"

    .prologue
    .line 765
    const/4 v0, 0x0

    .line 767
    .local v0, c:C
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 768
    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher$LookupTable;->set(C)V

    .line 770
    :cond_a
    add-int/lit8 v2, v0, 0x1

    int-to-char v1, v2

    .end local v0           #c:C
    .local v1, c:C
    const v2, 0xffff

    if-ne v0, v2, :cond_13

    .line 774
    return-void

    :cond_13
    move v0, v1

    .end local v1           #c:C
    .restart local v0       #c:C
    goto :goto_1
.end method

.method slowGetChars()[C
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 695
    const/high16 v5, 0x1

    new-array v0, v5, [C

    .line 696
    .local v0, allChars:[C
    const/4 v3, 0x0

    .line 697
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, c:I
    move v4, v3

    .end local v3           #size:I
    .local v4, size:I
    :goto_8
    const v5, 0xffff

    if-gt v1, v5, :cond_1d

    .line 698
    int-to-char v5, v1

    invoke-virtual {p0, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 699
    add-int/lit8 v3, v4, 0x1

    .end local v4           #size:I
    .restart local v3       #size:I
    int-to-char v5, v1

    aput-char v5, v0, v4

    .line 697
    :goto_19
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3           #size:I
    .restart local v4       #size:I
    goto :goto_8

    .line 702
    :cond_1d
    new-array v2, v4, [C

    .line 703
    .local v2, retValue:[C
    invoke-static {v0, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    return-object v2

    .end local v2           #retValue:[C
    :cond_23
    move v3, v4

    .end local v4           #size:I
    .restart local v3       #size:I
    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    return-object v0
.end method

.method public trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 9
    .parameter "sequence"
    .parameter "replacement"
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1185
    .local v2, first:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_e

    .line 1186
    const-string v5, ""

    .line 1202
    :goto_d
    return-object v5

    .line 1188
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1189
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1190
    .local v4, inMatchingGroup:Z
    move v3, v2

    .local v3, i:I
    :goto_19
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_37

    .line 1191
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1192
    .local v1, c:C
    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1193
    const/4 v4, 0x1

    .line 1190
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1195
    :cond_2d
    if-eqz v4, :cond_33

    .line 1196
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1197
    const/4 v4, 0x0

    .line 1199
    :cond_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 1202
    .end local v1           #c:C
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_d
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .parameter "sequence"
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1070
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1074
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, first:I
    :goto_5
    if-ge v0, v2, :cond_11

    .line 1075
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1079
    :cond_11
    add-int/lit8 v1, v2, -0x1

    .local v1, last:I
    :goto_13
    if-le v1, v0, :cond_1f

    .line 1080
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 1085
    :cond_1f
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1074
    .end local v1           #last:I
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1079
    .restart local v1       #last:I
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_13
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .parameter "sequence"
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1098
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1101
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, first:I
    :goto_5
    if-ge v0, v1, :cond_11

    .line 1102
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1107
    :cond_11
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1101
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .parameter "sequence"
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1120
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1123
    .local v1, len:I
    add-int/lit8 v0, v1, -0x1

    .local v0, last:I
    :goto_6
    if-ltz v0, :cond_12

    .line 1124
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1129
    :cond_12
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1123
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 3
    .parameter "description"

    .prologue
    .line 753
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
