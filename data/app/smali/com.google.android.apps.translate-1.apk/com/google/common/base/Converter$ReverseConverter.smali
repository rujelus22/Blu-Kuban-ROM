.class final Lcom/google/common/base/Converter$ReverseConverter;
.super Lcom/google/common/base/Converter;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReverseConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/Converter",
        "<TB;TA;>;"
    }
.end annotation


# instance fields
.field final original:Lcom/google/common/base/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Converter",
            "<TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Converter;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Converter",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lcom/google/common/base/Converter$ReverseConverter;,"Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, original:Lcom/google/common/base/Converter;,"Lcom/google/common/base/Converter<TA;TB;>;"
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    .line 137
    return-void
.end method


# virtual methods
.method public doBackward(Ljava/lang/Object;)Ljava/lang/Object;
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

    .prologue
    .line 144
    .local p0, this:Lcom/google/common/base/Converter$ReverseConverter;,"Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, object:Ljava/lang/Object;,"TA;"
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public doForward(Ljava/lang/Object;)Ljava/lang/Object;
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

    .prologue
    .line 140
    .local p0, this:Lcom/google/common/base/Converter$ReverseConverter;,"Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, object:Ljava/lang/Object;,"TB;"
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/base/Converter$ReverseConverter;,"Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    const/4 v0, 0x1

    .line 152
    if-ne p0, p1, :cond_4

    .line 156
    .end local p1
    :cond_3
    :goto_3
    return v0

    .restart local p1
    :cond_4
    instance-of v1, p1, Lcom/google/common/base/Converter$ReverseConverter;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    check-cast p1, Lcom/google/common/base/Converter$ReverseConverter;

    .end local p1
    iget-object v2, p1, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Converter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 161
    .local p0, this:Lcom/google/common/base/Converter$ReverseConverter;,"Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reverse()Lcom/google/common/base/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, this:Lcom/google/common/base/Converter$ReverseConverter;,"Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 165
    .local p0, this:Lcom/google/common/base/Converter$ReverseConverter;,"Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReverseConverter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
