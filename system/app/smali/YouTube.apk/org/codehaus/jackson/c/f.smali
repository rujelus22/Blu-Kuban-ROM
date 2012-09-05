.class public final Lorg/codehaus/jackson/c/f;
.super Lorg/codehaus/jackson/c/e;
.source "SourceFile"


# static fields
.field static final c:Lorg/codehaus/jackson/c/f;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 15
    new-instance v0, Lorg/codehaus/jackson/c/f;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Lorg/codehaus/jackson/c/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/jackson/c/f;->c:Lorg/codehaus/jackson/c/f;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/c/e;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lorg/codehaus/jackson/c/f;->d:I

    .line 23
    return-void
.end method

.method static final b()Lorg/codehaus/jackson/c/f;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lorg/codehaus/jackson/c/f;->c:Lorg/codehaus/jackson/c/f;

    return-object v0
.end method


# virtual methods
.method public final a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lorg/codehaus/jackson/c/f;->d:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final a(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lorg/codehaus/jackson/c/f;->d:I

    if-ne p1, v0, :cond_8

    if-nez p2, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final a([II)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    if-ne p2, v0, :cond_b

    aget v2, p1, v1

    iget v3, p0, Lorg/codehaus/jackson/c/f;->d:I

    if-ne v2, v3, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method
