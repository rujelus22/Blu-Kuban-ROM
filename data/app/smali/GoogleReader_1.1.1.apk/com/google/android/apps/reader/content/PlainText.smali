.class Lcom/google/android/apps/reader/content/PlainText;
.super Ljava/lang/Object;
.source "PlainText.java"


# static fields
.field private static final HTML_CHARACTERS:Ljava/lang/String; = "&<>\r\n"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static isPlainText(Ljava/lang/String;)Z
    .registers 7
    .parameter "source"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 43
    .local v0, c:C
    const-string v2, "&<>\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    move v2, v4

    .line 52
    .end local v0           #c:C
    :goto_17
    return v2

    .line 48
    .restart local v0       #c:C
    :cond_18
    if-lez v1, :cond_2e

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2e

    sub-int v2, v1, v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v4

    .line 49
    goto :goto_17

    .line 39
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0           #c:C
    :cond_31
    move v2, v5

    .line 52
    goto :goto_17
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "source"

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/google/android/apps/reader/content/PlainText;->isPlainText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p0

    .line 68
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method
