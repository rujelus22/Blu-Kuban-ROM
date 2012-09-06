.class public Lapm;
.super Ljava/lang/Object;
.source "MoreTypes.java"

# interfaces
.implements Lapl;
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/GenericArrayType;


# instance fields
.field private final a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 3
    .parameter

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    invoke-static {p1}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lapm;->a:Ljava/lang/reflect/Type;

    .line 415
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lapm;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 426
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, p1}, Lapk;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lapm;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lapm;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lapm;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
