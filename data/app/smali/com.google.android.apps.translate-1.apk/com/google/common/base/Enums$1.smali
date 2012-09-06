.class final Lcom/google/common/base/Enums$1;
.super Lcom/google/common/base/Converter;
.source "Enums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Enums;->stringConverter(Ljava/lang/Class;)Lcom/google/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Converter",
        "<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$enumClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/common/base/Enums$1;->val$enumClass:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 142
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/base/Enums$1;->doBackward(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doBackward(Ljava/lang/Enum;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, enumValue:Ljava/lang/Enum;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doForward(Ljava/lang/String;)Ljava/lang/Enum;
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/common/base/Enums$1;->val$enumClass:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 142
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/base/Enums$1;->doForward(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
