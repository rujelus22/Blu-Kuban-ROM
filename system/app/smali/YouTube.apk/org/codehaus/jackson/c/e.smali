.class public abstract Lorg/codehaus/jackson/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/codehaus/jackson/c/e;->a:Ljava/lang/String;

    .line 18
    iput p2, p0, Lorg/codehaus/jackson/c/e;->b:I

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lorg/codehaus/jackson/c/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(I)Z
.end method

.method public abstract a(II)Z
.end method

.method public abstract a([II)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 48
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lorg/codehaus/jackson/c/e;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/codehaus/jackson/c/e;->a:Ljava/lang/String;

    return-object v0
.end method
