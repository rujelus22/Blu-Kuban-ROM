.class public abstract Lcom/google/android/common/html/parser/HtmlDocument$Text;
.super Lcom/google/android/common/html/parser/HtmlDocument$Node;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Text"
.end annotation


# instance fields
.field private final originalHtml:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "originalHtml"

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlDocument$Node;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    .line 333
    return-void
.end method


# virtual methods
.method public accept(Lcom/google/android/common/html/parser/HtmlDocument$Visitor;)V
    .registers 2
    .parameter "visitor"

    .prologue
    .line 379
    invoke-interface {p1, p0}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->visitText(Lcom/google/android/common/html/parser/HtmlDocument$Text;)V

    .line 380
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 354
    if-ne p1, p0, :cond_5

    .line 363
    :cond_4
    :goto_4
    return v1

    .line 357
    :cond_5
    instance-of v3, p1, Lcom/google/android/common/html/parser/HtmlDocument$Text;

    if-eqz v3, :cond_1f

    move-object v0, p1

    .line 358
    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$Text;

    .line 360
    .local v0, that:Lcom/google/android/common/html/parser/HtmlDocument$Text;
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    if-nez v3, :cond_16

    iget-object v3, v0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_16
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    .end local v0           #that:Lcom/google/android/common/html/parser/HtmlDocument$Text;
    :cond_1f
    move v1, v2

    .line 363
    goto :goto_4
.end method

.method public getOriginalHTML()Ljava/lang/String;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public isWhitespace()Z
    .registers 5

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/google/android/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 344
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_1a

    .line 345
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_17

    .line 346
    const/4 v3, 0x0

    .line 349
    :goto_16
    return v3

    .line 344
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 349
    :cond_1a
    const/4 v3, 0x1

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/android/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
