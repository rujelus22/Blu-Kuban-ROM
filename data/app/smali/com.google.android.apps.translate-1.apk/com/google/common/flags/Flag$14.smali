.class final Lcom/google/common/flags/Flag$14;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->value(Ljava/util/Date;Ljava/text/DateFormat;)Lcom/google/common/flags/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flags/Flag",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$format:Ljava/text/DateFormat;


# direct methods
.method constructor <init>(Ljava/util/Date;Ljava/text/DateFormat;)V
    .registers 3
    .parameter "x0"
    .parameter

    .prologue
    .line 714
    iput-object p2, p0, Lcom/google/common/flags/Flag$14;->val$format:Ljava/text/DateFormat;

    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic parsableStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 714
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$14;->parsableStringValue(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parsableStringValue(Ljava/util/Date;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/common/flags/Flag$14;->val$format:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 714
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$14;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 718
    :try_start_0
    iget-object v1, p0, Lcom/google/common/flags/Flag$14;->val$format:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 719
    :catch_7
    move-exception v0

    .line 720
    .local v0, ex:Ljava/text/ParseException;
    new-instance v1, Lcom/google/common/flags/InvalidFlagValueException;

    const-string v2, "Invalid date syntax"

    invoke-direct {v1, v2}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
