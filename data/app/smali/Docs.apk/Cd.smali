.class public LCd;
.super Ljava/lang/Object;
.source "CharWrapper.java"

# interfaces
.implements LCk;
.implements Landroid/text/GetChars;
.implements Ljava/lang/CharSequence;


# instance fields
.field private a:I

.field private a:[C

.field private b:I


# direct methods
.method public constructor <init>([CII)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, LCd;->a:[C

    .line 18
    iput p2, p0, LCd;->a:I

    .line 19
    iput p3, p0, LCd;->b:I

    .line 20
    return-void
.end method


# virtual methods
.method public a([C)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, LCd;->a:[C

    .line 33
    return-void
.end method

.method public a([CII)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, LCd;->a:[C

    .line 24
    iput p2, p0, LCd;->a:I

    .line 25
    iput p3, p0, LCd;->b:I

    .line 26
    return-void
.end method

.method public charAt(I)C
    .registers 4
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, LCd;->a:[C

    iget v1, p0, LCd;->a:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public getChars(II[CI)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    if-ltz p1, :cond_c

    if-ltz p2, :cond_c

    iget v0, p0, LCd;->b:I

    if-gt p1, v0, :cond_c

    iget v0, p0, LCd;->b:I

    if-le p2, v0, :cond_29

    .line 62
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_29
    iget-object v0, p0, LCd;->a:[C

    iget v1, p0, LCd;->a:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, LCd;->b:I

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 52
    if-ltz p1, :cond_c

    if-ltz p2, :cond_c

    iget v0, p0, LCd;->b:I

    if-gt p1, v0, :cond_c

    iget v0, p0, LCd;->b:I

    if-le p2, v0, :cond_29

    .line 53
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_29
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, LCd;->a:[C

    iget v2, p0, LCd;->a:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 47
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, LCd;->a:[C

    iget v2, p0, LCd;->a:I

    iget v3, p0, LCd;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
