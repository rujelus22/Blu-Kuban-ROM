.class public Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;
.super Ljava/lang/Object;
.source "MoreKeySpecParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;,
        Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;
    }
.end annotation


# static fields
.field public static final DIGIT_FILTER:Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter; = null

.field private static final ESCAPE:C = '\\'

.field private static final LABEL_END:Ljava/lang/String; = "|"

.field private static final PREFIX_AT:Ljava/lang/String; = "@"

.field private static final PREFIX_CODE:Ljava/lang/String; = "@integer/"

.field private static final PREFIX_ICON:Ljava/lang/String; = "@icon/"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->TAG:Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$1;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$1;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->DIGIT_FILTER:Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static filterOut(Landroid/content/res/Resources;[Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;)[Ljava/lang/CharSequence;
    .registers 10
    .parameter "res"
    .parameter "moreKeys"
    .parameter "filter"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 201
    if-eqz p1, :cond_7

    array-length v5, p1

    if-ge v5, v6, :cond_9

    :cond_7
    move-object p1, v4

    .line 228
    .end local p1
    :cond_8
    :goto_8
    return-object p1

    .line 204
    .restart local p1
    :cond_9
    array-length v5, p1

    if-ne v5, v6, :cond_1f

    .line 205
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getCode(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;->shouldFilterOut(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object p1, v4

    .line 206
    goto :goto_8

    .line 208
    :cond_1f
    const/4 v0, 0x0

    .line 209
    .local v0, filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    array-length v5, p1

    if-lt v1, v5, :cond_2e

    .line 222
    if-eqz v0, :cond_8

    .line 225
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_59

    move-object p1, v4

    .line 226
    goto :goto_8

    .line 210
    :cond_2e
    aget-object v3, p1, v1

    .line 211
    .local v3, moreKeySpec:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getCode(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;->shouldFilterOut(I)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 212
    if-nez v0, :cond_48

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .restart local v0       #filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_46
    if-lt v2, v1, :cond_4b

    .line 209
    .end local v2           #j:I
    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 215
    .restart local v2       #j:I
    :cond_4b
    aget-object v5, p1, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 218
    .end local v2           #j:I
    :cond_53
    if-eqz v0, :cond_48

    .line 219
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 228
    .end local v3           #moreKeySpec:Ljava/lang/CharSequence;
    :cond_59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    move-object p1, v4

    goto :goto_8
.end method

.method public static getCode(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 9
    .parameter "res"
    .parameter "moreKeySpec"

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->hasCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 142
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, end:I
    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_28

    .line 144
    new-instance v4, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Multiple |: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 146
    :cond_28
    const-string v4, "|"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    const-string v5, "@"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {p0, v4}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getResourceId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v3

    .line 147
    .local v3, resId:I
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 156
    .end local v1           #end:I
    .end local v3           #resId:I
    :cond_42
    :goto_42
    return v0

    .line 150
    :cond_43
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_42

    .line 152
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, label:Ljava/lang/String;
    if-eqz v2, :cond_42

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_42

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_42
.end method

.method public static getIconId(Ljava/lang/String;)I
    .registers 8
    .parameter "moreKeySpec"

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->hasIcon(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 161
    const-string v4, "|"

    const-string v5, "@icon/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 162
    .local v1, end:I
    const-string v4, "@icon/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, iconId:Ljava/lang/String;
    :try_start_1f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_26} :catch_28

    move-result v3

    .line 170
    .end local v1           #end:I
    .end local v2           #iconId:Ljava/lang/String;
    :cond_27
    :goto_27
    return v3

    .line 165
    .restart local v1       #end:I
    .restart local v2       #iconId:Ljava/lang/String;
    :catch_28
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "illegal icon id specified: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public static getLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "moreKeySpec"

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->hasIcon(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 109
    const/4 v1, 0x0

    .line 115
    :cond_8
    return-object v1

    .line 110
    :cond_9
    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, end:I
    if-lez v0, :cond_32

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, label:Ljava/lang/String;
    :goto_17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 114
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Empty label: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    .end local v1           #label:Ljava/lang/String;
    :cond_32
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_17
.end method

.method public static getOutputText(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "moreKeySpec"

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->hasCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 137
    :cond_7
    :goto_7
    return-object v2

    .line 121
    :cond_8
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, end:I
    if-lez v0, :cond_56

    .line 123
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_2c

    .line 124
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Multiple |: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-direct {v3, v4}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_2c
    const-string v3, "|"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, outputText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 129
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Empty outputText: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    .end local v2           #outputText:Ljava/lang/String;
    :cond_56
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, label:Ljava/lang/String;
    if-nez v1, :cond_71

    .line 133
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Empty label: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    move-object v2, v1

    .line 137
    goto :goto_7
.end method

.method private static getResourceId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 7
    .parameter "res"
    .parameter "name"

    .prologue
    .line 174
    const v2, 0x7f0c0079

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, resId:I
    if-nez v1, :cond_23

    .line 177
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown resource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_23
    return v1
.end method

.method private static hasCode(Ljava/lang/String;)Z
    .registers 5
    .parameter "moreKeySpec"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v1}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, end:I
    if-lez v0, :cond_1e

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 66
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@integer/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 67
    const/4 v1, 0x1

    .line 69
    :cond_1e
    return v1
.end method

.method private static hasIcon(Ljava/lang/String;)Z
    .registers 5
    .parameter "moreKeySpec"

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string v2, "@icon/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 55
    invoke-static {p0, v1}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, end:I
    if-lez v0, :cond_11

    .line 57
    const/4 v1, 0x1

    .line 60
    .end local v0           #end:I
    :cond_10
    return v1

    .line 58
    .restart local v0       #end:I
    :cond_11
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "outputText or code not specified: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static indexOfLabelEnd(Ljava/lang/String;I)I
    .registers 9
    .parameter "moreKeySpec"
    .parameter "start"

    .prologue
    const/16 v5, 0x5c

    .line 89
    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_2f

    .line 90
    const-string v4, "|"

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, end:I
    if-nez v1, :cond_37

    .line 92
    new-instance v4, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "| at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    .end local v1           #end:I
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 96
    .local v2, length:I
    move v3, p1

    .local v3, pos:I
    :goto_34
    if-lt v3, v2, :cond_38

    .line 104
    const/4 v1, -0x1

    .end local v2           #length:I
    .end local v3           #pos:I
    :cond_37
    :goto_37
    return v1

    .line 97
    .restart local v2       #length:I
    .restart local v3       #pos:I
    :cond_38
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 98
    .local v0, c:C
    if-ne v0, v5, :cond_47

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v2, :cond_47

    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 96
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 100
    :cond_47
    const-string v4, "|"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_44

    move v1, v3

    .line 101
    goto :goto_37
.end method

.method private static parseEscape(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "text"

    .prologue
    const/16 v5, 0x5c

    .line 73
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_9

    .line 85
    .end local p0
    :goto_8
    return-object p0

    .line 75
    .restart local p0
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 76
    .local v1, length:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, pos:I
    :goto_13
    if-lt v2, v1, :cond_1a

    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 78
    :cond_1a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 79
    .local v0, c:C
    if-ne v0, v5, :cond_30

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_30

    .line 80
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 82
    :cond_30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2d
.end method
