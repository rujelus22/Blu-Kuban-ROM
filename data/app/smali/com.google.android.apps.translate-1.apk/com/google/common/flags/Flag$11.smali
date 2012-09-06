.class final Lcom/google/common/flags/Flag$11;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->value(Ljava/lang/Class;)Lcom/google/common/flags/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flags/Flag",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter

    .prologue
    .line 538
    .local p1, x0:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public parsableStringValue(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, value:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsableStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 538
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$11;->parsableStringValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 541
    #calls: Lcom/google/common/flags/Flag;->classForName(Ljava/lang/String;)Ljava/lang/Class;
    invoke-static {p1}, Lcom/google/common/flags/Flag;->access$600(Ljava/lang/String;)Ljava/lang/Class;

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
    .line 538
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$11;->parse(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
