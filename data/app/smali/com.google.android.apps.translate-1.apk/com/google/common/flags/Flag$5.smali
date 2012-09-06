.class final Lcom/google/common/flags/Flag$5;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->value(J)Lcom/google/common/flags/Flag;
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
    .line 347
    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected parse(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 351
    :try_start_0
    #calls: Lcom/google/common/flags/Flag;->parseLongOrMax(Ljava/lang/String;)Ljava/lang/Long;
    invoke-static {p1}, Lcom/google/common/flags/Flag;->access$100(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 352
    :catch_5
    move-exception v0

    .line 353
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/common/flags/InvalidFlagValueException;

    const-string v2, "Invalid long syntax"

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
    .line 347
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$5;->parse(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
