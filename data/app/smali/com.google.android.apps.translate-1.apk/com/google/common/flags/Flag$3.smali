.class final Lcom/google/common/flags/Flag$3;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->nonnegativeValue(I)Lcom/google/common/flags/Flag;
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
    .line 278
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
    .line 282
    :try_start_0
    #calls: Lcom/google/common/flags/Flag;->parseIntegerOrMax(Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/common/flags/Flag;->access$000(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 283
    .local v2, val:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_1e

    .line 284
    new-instance v3, Lcom/google/common/flags/InvalidFlagValueException;

    const-string v4, "Must not be negative"

    invoke-direct {v3, v4}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_12} :catch_12

    .line 287
    .end local v2           #val:Ljava/lang/Integer;
    :catch_12
    move-exception v0

    .line 288
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/common/flags/InvalidFlagValueException;

    const-string v3, "Invalid integer syntax"

    invoke-direct {v1, v3}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    .line 290
    .local v1, ex1:Lcom/google/common/flags/InvalidFlagValueException;
    invoke-virtual {v1, v0}, Lcom/google/common/flags/InvalidFlagValueException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 291
    throw v1

    .line 286
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v1           #ex1:Lcom/google/common/flags/InvalidFlagValueException;
    .restart local v2       #val:Ljava/lang/Integer;
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
    .line 278
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$3;->parse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
