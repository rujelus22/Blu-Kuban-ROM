.class public abstract Lorg/codehaus/jackson/JsonGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected a:Lorg/codehaus/jackson/d;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lorg/codehaus/jackson/JsonGenerator;
.end method

.method public a(Lorg/codehaus/jackson/b/b;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 2
    .parameter

    .prologue
    .line 431
    return-object p0
.end method

.method public final a(Lorg/codehaus/jackson/d;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 2
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lorg/codehaus/jackson/JsonGenerator;->a:Lorg/codehaus/jackson/d;

    .line 360
    return-object p0
.end method

.method public abstract a(C)V
.end method

.method public abstract a(D)V
.end method

.method public abstract a(F)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/math/BigDecimal;)V
.end method

.method public abstract a(Ljava/math/BigInteger;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a([CII)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c()V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method
