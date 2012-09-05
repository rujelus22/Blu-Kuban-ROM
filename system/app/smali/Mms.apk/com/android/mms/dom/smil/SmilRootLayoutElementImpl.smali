.class public Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilRootLayoutElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILRootLayoutElement;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private parseAbsoluteLength(Ljava/lang/String;)I
    .registers 5
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 77
    const-string v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 78
    const-string v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 81
    :cond_13
    :try_start_13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_16} :catch_18

    move-result v1

    .line 83
    :goto_17
    return v1

    .line 82
    :catch_18
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_17
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "backgroundColor"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 3

    .prologue
    .line 42
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, heightString:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->parseAbsoluteLength(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getWidth()I
    .registers 3

    .prologue
    .line 51
    const-string v1, "width"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, widthString:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->parseAbsoluteLength(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .registers 3
    .parameter "backgroundColor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 56
    const-string v0, "backgroundColor"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setHeight(I)V
    .registers 5
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "height"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setWidth(I)V
    .registers 5
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v0, "width"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
