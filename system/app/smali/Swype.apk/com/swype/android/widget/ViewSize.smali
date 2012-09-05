.class public Lcom/swype/android/widget/ViewSize;
.super Ljava/lang/Object;
.source "ViewSize.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/swype/android/widget/ViewSize;->width:I

    .line 10
    iput p2, p0, Lcom/swype/android/widget/ViewSize;->height:I

    .line 11
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 18
    iget v0, p0, Lcom/swype/android/widget/ViewSize;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 14
    iget v0, p0, Lcom/swype/android/widget/ViewSize;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v1, "Width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v1, p0, Lcom/swype/android/widget/ViewSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, " Height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/swype/android/widget/ViewSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
