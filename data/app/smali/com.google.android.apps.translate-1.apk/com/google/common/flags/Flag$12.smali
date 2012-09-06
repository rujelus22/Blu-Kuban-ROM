.class final Lcom/google/common/flags/Flag$12;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->value(Ljava/math/BigDecimal;)Lcom/google/common/flags/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flags/Flag",
        "<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/math/BigDecimal;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$12;->parse(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 563
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 564
    :catch_6
    move-exception v0

    .line 565
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/common/flags/InvalidFlagValueException;

    const-string v2, "Invalid BigDecimal syntax"

    invoke-direct {v1, v2}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
