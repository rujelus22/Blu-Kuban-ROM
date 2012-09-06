.class Lcom/google/android/apps/reader/content/Snippet;
.super Ljava/lang/Object;
.source "Snippet.java"


# static fields
.field private static final DEFAULT_MAX_LENGTH:I = 0x64

.field private static final ELLIPSIS:C = '\u2026'

.field private static final UNPRINTABLE:Ljava/lang/String; = "\ufffc"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static final valueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "source"

    .prologue
    .line 49
    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/google/android/apps/reader/content/Snippet;->valueOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final valueOf(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter "source"
    .parameter "maxLength"

    .prologue
    .line 34
    if-nez p0, :cond_8

    .line 35
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 37
    :cond_8
    invoke-static {p0}, Lcom/google/android/apps/reader/content/PlainText;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, text:Ljava/lang/String;
    const-string v1, "\ufffc"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_20

    move-object v1, v0

    .line 44
    :goto_1f
    return-object v1

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f
.end method
