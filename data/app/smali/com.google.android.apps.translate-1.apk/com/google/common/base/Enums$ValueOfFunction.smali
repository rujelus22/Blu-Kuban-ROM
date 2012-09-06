.class final Lcom/google/common/base/Enums$ValueOfFunction;
.super Ljava/lang/Object;
.source "Enums.java"

# interfaces
.implements Lcom/google/common/base/Function;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueOfFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/String;",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/google/common/base/Enums$ValueOfFunction;,"Lcom/google/common/base/Enums$ValueOfFunction<TT;>;"
    .local p1, enumClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/base/Enums$ValueOfFunction;->enumClass:Ljava/lang/Class;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/google/common/base/Enums$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    .local p0, this:Lcom/google/common/base/Enums$ValueOfFunction;,"Lcom/google/common/base/Enums$ValueOfFunction<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/base/Enums$ValueOfFunction;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Ljava/lang/Enum;
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/google/common/base/Enums$ValueOfFunction;,"Lcom/google/common/base/Enums$ValueOfFunction<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/common/base/Enums$ValueOfFunction;->enumClass:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 92
    :goto_6
    return-object v1

    .line 91
    :catch_7
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 78
    .local p0, this:Lcom/google/common/base/Enums$ValueOfFunction;,"Lcom/google/common/base/Enums$ValueOfFunction<TT;>;"
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/base/Enums$ValueOfFunction;->apply(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 97
    .local p0, this:Lcom/google/common/base/Enums$ValueOfFunction;,"Lcom/google/common/base/Enums$ValueOfFunction<TT;>;"
    instance-of v0, p1, Lcom/google/common/base/Enums$ValueOfFunction;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/common/base/Enums$ValueOfFunction;->enumClass:Ljava/lang/Class;

    check-cast p1, Lcom/google/common/base/Enums$ValueOfFunction;

    .end local p1
    iget-object v1, p1, Lcom/google/common/base/Enums$ValueOfFunction;->enumClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 102
    .local p0, this:Lcom/google/common/base/Enums$ValueOfFunction;,"Lcom/google/common/base/Enums$ValueOfFunction<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Enums$ValueOfFunction;->enumClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    .local p0, this:Lcom/google/common/base/Enums$ValueOfFunction;,"Lcom/google/common/base/Enums$ValueOfFunction<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enums.valueOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Enums$ValueOfFunction;->enumClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
