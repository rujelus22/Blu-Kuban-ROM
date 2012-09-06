.class public final Lcom/google/android/apps/unveil/env/SpaceTokenizer;
.super Ljava/lang/Object;
.source "SpaceTokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# static fields
.field private static final TOKEN:C = ' '


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .registers 7
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 49
    move v0, p2

    .line 50
    .local v0, i:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 51
    .local v1, len:I
    :goto_5
    if-ge v0, v1, :cond_13

    .line 52
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_10

    .line 58
    .end local v0           #i:I
    :goto_f
    return v0

    .line 55
    .restart local v0       #i:I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    move v0, v1

    .line 58
    goto :goto_f
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .registers 6
    .parameter "text"
    .parameter "cursor"

    .prologue
    const/16 v2, 0x20

    .line 34
    move v0, p2

    .line 35
    .local v0, i:I
    :goto_3
    if-lez v0, :cond_10

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_10

    .line 36
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 38
    :cond_10
    :goto_10
    if-ge v0, p2, :cond_1b

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1b

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 41
    :cond_1b
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "text"

    .prologue
    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 22
    .local v0, i:I
    :goto_4
    if-lez v0, :cond_13

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_13

    .line 23
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 25
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
