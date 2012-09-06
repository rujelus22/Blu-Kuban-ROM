.class final Lcom/google/common/flags/Flag$9;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->value(D)Lcom/google/common/flags/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flags/Flag",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Double;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected parse(Ljava/lang/String;)Ljava/lang/Double;
    .registers 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 476
    :try_start_0
    #calls: Lcom/google/common/flags/Flag;->parseDoubleOrMax(Ljava/lang/String;)Ljava/lang/Double;
    invoke-static {p1}, Lcom/google/common/flags/Flag;->access$300(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 477
    :catch_5
    move-exception v0

    .line 478
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/common/flags/InvalidFlagValueException;

    const-string v2, "Invalid double syntax"

    invoke-direct {v1, v2}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 472
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$9;->parse(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
