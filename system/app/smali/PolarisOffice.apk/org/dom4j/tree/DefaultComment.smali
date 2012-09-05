.class public Lorg/dom4j/tree/DefaultComment;
.super Lorg/dom4j/tree/FlyweightComment;
.source "DefaultComment.java"


# instance fields
.field private parent:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/dom4j/tree/FlyweightComment;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/String;)V
    .registers 3
    .parameter "parent"
    .parameter "text"

    .prologue
    .line 45
    invoke-direct {p0, p2}, Lorg/dom4j/tree/FlyweightComment;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lorg/dom4j/tree/DefaultComment;->parent:Lorg/dom4j/Element;

    .line 47
    return-void
.end method


# virtual methods
.method public getParent()Lorg/dom4j/Element;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/dom4j/tree/DefaultComment;->parent:Lorg/dom4j/Element;

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 58
    iput-object p1, p0, Lorg/dom4j/tree/DefaultComment;->parent:Lorg/dom4j/Element;

    .line 59
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 50
    iput-object p1, p0, Lorg/dom4j/tree/DefaultComment;->text:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public supportsParent()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
