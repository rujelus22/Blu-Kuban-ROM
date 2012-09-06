.class Lcom/google/common/base/Converter$IdentityConverter;
.super Lcom/google/common/base/Converter;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentityConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Converter",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Converter$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/google/common/base/Converter$IdentityConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public compose(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/Object;",
            "TC;>;)",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/Object;",
            "TC;>;"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, otherConverter:Lcom/google/common/base/Converter;,"Lcom/google/common/base/Converter<Ljava/lang/Object;TC;>;"
    const-string v0, "otherConverter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Converter;

    return-object v0
.end method

.method public convertAll(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, fromIterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    const-string v0, "fromIterable"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 273
    return-object p1
.end method

.method public doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 269
    return-object p1
.end method

.method public reverse()Lcom/google/common/base/Converter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    const-string v0, "IdentityConverter"

    return-object v0
.end method
