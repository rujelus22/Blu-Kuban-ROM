.class final Lcom/google/common/flags/Flag$7;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->positiveValue(J)Lcom/google/common/flags/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flags/Flag",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected parse(Ljava/lang/String;)Ljava/lang/Long;
    .registers 9
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 403
    :try_start_0
    #calls: Lcom/google/common/flags/Flag;->parseLongOrMax(Ljava/lang/String;)Ljava/lang/Long;
    invoke-static {p1}, Lcom/google/common/flags/Flag;->access$100(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 404
    .local v2, value:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_22

    .line 405
    new-instance v3, Lcom/google/common/flags/InvalidFlagValueException;

    const-string v4, "Must be positive"

    invoke-direct {v3, v4}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_16} :catch_16

    .line 408
    .end local v2           #value:Ljava/lang/Long;
    :catch_16
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/common/flags/InvalidFlagValueException;

    const-string v3, "Invalid integer syntax"

    invoke-direct {v1, v3}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, e1:Lcom/google/common/flags/InvalidFlagValueException;
    invoke-virtual {v1, v0}, Lcom/google/common/flags/InvalidFlagValueException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 412
    throw v1

    .line 407
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #e1:Lcom/google/common/flags/InvalidFlagValueException;
    .restart local v2       #value:Ljava/lang/Long;
    :cond_22
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
    .line 399
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$7;->parse(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
