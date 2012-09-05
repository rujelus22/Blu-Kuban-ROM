.class public Lcom/samsung/swift/service/content/Resolution;
.super Ljava/lang/Object;
.source "Resolution.java"


# instance fields
.field private _height:I

.field private _width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public height()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/swift/service/content/Resolution;->_height:I

    return v0
.end method

.method public setHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 97
    iput p1, p0, Lcom/samsung/swift/service/content/Resolution;->_height:I

    .line 98
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 107
    iput p1, p0, Lcom/samsung/swift/service/content/Resolution;->_width:I

    .line 108
    return-void
.end method

.method public width()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcom/samsung/swift/service/content/Resolution;->_width:I

    return v0
.end method
