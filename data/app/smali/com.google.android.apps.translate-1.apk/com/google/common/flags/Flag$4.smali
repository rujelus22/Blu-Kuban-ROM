.class final Lcom/google/common/flags/Flag$4;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->positiveValue(I)Lcom/google/common/flags/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flags/Flag",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected parse(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 311
    :try_start_0
    #calls: Lcom/google/common/flags/Flag;->parseIntegerOrMax(Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/common/flags/Flag;->access$000(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 312
    .local v2, value:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_1e

    .line 313
    new-instance v3, Lcom/google/common/flags/InvalidFlagValueException;

    const-string v4, "Must be positive"

    invoke-direct {v3, v4}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_12} :catch_12

    .line 316
    .end local v2           #value:Ljava/lang/Integer;
    :catch_12
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/common/flags/InvalidFlagValueException;

    const-string v3, "Invalid integer syntax"

    invoke-direct {v1, v3}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, e1:Lcom/google/common/flags/InvalidFlagValueException;
    invoke-virtual {v1, v0}, Lcom/google/common/flags/InvalidFlagValueException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 320
    throw v1

    .line 315
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #e1:Lcom/google/common/flags/InvalidFlagValueException;
    .restart local v2       #value:Ljava/lang/Integer;
    :cond_1e
    return-object v2
.end method

.method protected bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$4;->parse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
