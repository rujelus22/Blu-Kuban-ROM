.class public Lcom/android/mms/dom/smil/SmilLayoutElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilLayoutElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILLayoutElement;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getRegions()Lorg/w3c/dom/NodeList;
    .registers 2

    .prologue
    .line 41
    const-string v0, "region"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;
    .registers 7

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 46
    .local v0, childNodes:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .line 47
    .local v3, rootLayoutNode:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 48
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v1, :cond_25

    .line 49
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "root-layout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 50
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .end local v3           #rootLayoutNode:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    check-cast v3, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 48
    .restart local v3       #rootLayoutNode:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 53
    :cond_25
    if-nez v3, :cond_54

    .line 55
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    const-string v5, "root-layout"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .end local v3           #rootLayoutNode:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    check-cast v3, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 56
    .restart local v3       #rootLayoutNode:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 57
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 58
    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 60
    :cond_54
    return-object v3
.end method
