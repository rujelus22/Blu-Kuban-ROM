.class final Lcom/google/common/flags/Flag$19;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->stringList([Ljava/lang/String;)Lcom/google/common/flags/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flags/Flag",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 979
    .local p1, x0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic parsableStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 979
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$19;->parsableStringValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parsableStringValue(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 986
    .local p1, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    #calls: Lcom/google/common/flags/Flag;->joinToStrings(Ljava/lang/Iterable;)Ljava/lang/String;
    invoke-static {p1}, Lcom/google/common/flags/Flag;->access$900(Ljava/lang/Iterable;)Ljava/lang/String;

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
    .line 979
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$19;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 981
    #calls: Lcom/google/common/flags/Flag;->splitCsvString(Ljava/lang/String;)Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/flags/Flag;->access$1000(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    #calls: Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/google/common/flags/Flag;->access$800(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
