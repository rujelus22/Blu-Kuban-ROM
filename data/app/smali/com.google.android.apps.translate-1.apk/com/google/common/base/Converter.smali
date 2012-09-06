.class public abstract Lcom/google/common/base/Converter;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Converter$IdentityConverter;,
        Lcom/google/common/base/Converter$ConverterComposition;,
        Lcom/google/common/base/Converter$ReverseConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TA;TB;>;"
    }
.end annotation


# static fields
.field private static final IDENTITY_CONVERTER:Lcom/google/common/base/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Converter",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 262
    new-instance v0, Lcom/google/common/base/Converter$IdentityConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Converter$IdentityConverter;-><init>(Lcom/google/common/base/Converter$1;)V

    sput-object v0, Lcom/google/common/base/Converter;->IDENTITY_CONVERTER:Lcom/google/common/base/Converter;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 48
    .local p0, this:Lcom/google/common/base/Converter;,"Lcom/google/common/base/Converter<TA;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/base/Converter;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/common/base/Converter;->IDENTITY_CONVERTER:Lcom/google/common/base/Converter;

    return-object v0
.end method

.method public static identity()Lcom/google/common/base/Converter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Converter",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lcom/google/common/base/Converter;->IDENTITY_CONVERTER:Lcom/google/common/base/Converter;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/google/common/base/Converter;,"Lcom/google/common/base/Converter<TA;TB;>;"
    .local p1, input:Ljava/lang/Object;,"TA;"
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compose(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Converter",
            "<TB;TC;>;)",
            "Lcom/google/common/base/Converter",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, this:Lcom/google/common/base/Converter;,"Lcom/google/common/base/Converter<TA;TB;>;"
    .local p1, secondConverter:Lcom/google/common/base/Converter;,"Lcom/google/common/base/Converter<TB;TC;>;"
    const-string v0, "secondConverter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Converter;

    invoke-static {p0, v0}, Lcom/google/common/base/Converter$ConverterComposition;->of(Lcom/google/common/base/Converter;Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;

    move-result-object v0

    return-object v0
.end method

.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/google/common/base/Converter;,"Lcom/google/common/base/Converter<TA;TB;>;"
    .local p1, a:Ljava/lang/Object;,"TA;"
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertAll(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TA;>;)",
            "Ljava/lang/Iterable",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, this:Lcom/google/common/base/Converter;,"Lcom/google/common/base/Converter<TA;TB;>;"
    .local p1, fromIterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TA;>;"
    const-string v0, "fromIterable"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v0, Lcom/google/common/base/Converter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Converter$1;-><init>(Lcom/google/common/base/Converter;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method protected abstract doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected abstract doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 112
    .local p0, this:Lcom/google/common/base/Converter;,"Lcom/google/common/base/Converter<TA;TB;>;"
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public inverse()Lcom/google/common/base/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<TB;TA;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, this:Lcom/google/common/base/Converter;,"Lcom/google/common/base/Converter<TA;TB;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Converter;->reverse()Lcom/google/common/base/Converter;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lcom/google/common/base/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<TB;TA;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lcom/google/common/base/Converter;,"Lcom/google/common/base/Converter<TA;TB;>;"
    new-instance v0, Lcom/google/common/base/Converter$ReverseConverter;

    invoke-direct {v0, p0}, Lcom/google/common/base/Converter$ReverseConverter;-><init>(Lcom/google/common/base/Converter;)V

    return-object v0
.end method

.method public final reverse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/base/Converter;,"Lcom/google/common/base/Converter<TA;TB;>;"
    .local p1, b:Ljava/lang/Object;,"TB;"
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
