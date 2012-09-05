.class public Lcom/google/android/apps/plus/util/MentionTokenizer;
.super Ljava/lang/Object;
.source "MentionTokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isMentionSpan(Ljava/lang/CharSequence;I)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_18

    .line 54
    check-cast p1, Landroid/text/Spannable;

    const-class v0, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-interface {p1, p2, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/views/MentionSpan;

    .line 55
    if-eqz v0, :cond_16

    array-length v0, v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 57
    :goto_15
    return v0

    :cond_16
    move v0, v1

    .line 55
    goto :goto_15

    :cond_18
    move v0, v1

    .line 57
    goto :goto_15
.end method

.method public static isMentionTrigger(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 22
    const/16 v0, 0x2b

    if-eq p0, v0, :cond_8

    const/16 v0, 0x40

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .registers 11
    .parameter "text"
    .parameter "cursor"

    .prologue
    const/16 v7, 0xa

    .line 62
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 63
    .local v4, n:I
    const/4 v5, 0x0

    .line 64
    .local v5, wordCount:I
    move v2, p2

    .local v2, i:I
    :goto_8
    if-ge v2, v4, :cond_11

    .line 65
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 68
    .local v0, c:C
    if-ne v0, v7, :cond_12

    move v4, v2

    .line 105
    .end local v0           #c:C
    .end local v4           #n:I
    :cond_11
    :goto_11
    return v4

    .line 73
    .restart local v0       #c:C
    .restart local v4       #n:I
    :cond_12
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 75
    const/4 v6, 0x4

    if-lt v5, v6, :cond_1f

    move v4, v2

    .line 76
    goto :goto_11

    .line 80
    :cond_1f
    add-int/lit8 v3, v2, 0x1

    .line 81
    .local v3, j:I
    :goto_21
    if-ge v3, v4, :cond_31

    .line 82
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 83
    .local v1, ch:C
    if-ne v1, v7, :cond_2b

    move v4, v2

    .line 84
    goto :goto_11

    .line 87
    :cond_2b
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_35

    .line 92
    .end local v1           #ch:C
    :cond_31
    if-ne v3, v4, :cond_38

    move v4, v2

    .line 93
    goto :goto_11

    .line 81
    .restart local v1       #ch:C
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 96
    .end local v1           #ch:C
    :cond_38
    move v2, v3

    .line 97
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 100
    .end local v3           #j:I
    :cond_3d
    invoke-static {v0}, Lcom/google/android/apps/plus/util/MentionTokenizer;->isMentionTrigger(C)Z

    move-result v6

    if-eqz v6, :cond_53

    if-eqz v2, :cond_51

    add-int/lit8 v6, v2, -0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_53

    :cond_51
    move v4, v2

    .line 102
    goto :goto_11

    .line 64
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .registers 6
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 27
    add-int/lit8 v1, p2, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_c

    .line 30
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 31
    .local v0, c:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_d

    .line 46
    .end local v0           #c:C
    .end local p2
    :cond_c
    :goto_c
    return p2

    .line 35
    .restart local v0       #c:C
    .restart local p2
    :cond_d
    invoke-static {v0}, Lcom/google/android/apps/plus/util/MentionTokenizer;->isMentionTrigger(C)Z

    move-result v2

    if-eqz v2, :cond_29

    if-eqz v1, :cond_21

    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 39
    :cond_21
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/util/MentionTokenizer;->isMentionSpan(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_c

    move p2, v1

    .line 43
    goto :goto_c

    .line 27
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 111
    if-eqz v0, :cond_13

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    move-object v4, p1

    .line 119
    :goto_14
    return-object v4

    .line 114
    :cond_15
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_3f

    .line 115
    new-instance v4, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 116
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    goto :goto_14

    .line 119
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_14
.end method
