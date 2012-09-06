.class final Lcom/google/common/flags/Flag$13;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->value(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/common/flags/Flag;
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
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$constraint:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 584
    .local p1, x0:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    iput-object p2, p0, Lcom/google/common/flags/Flag$13;->val$constraint:Ljava/lang/Class;

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
            "<+TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, value:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsableStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 584
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$13;->parsableStringValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 588
    :try_start_0
    #calls: Lcom/google/common/flags/Flag;->classForName(Ljava/lang/String;)Ljava/lang/Class;
    invoke-static {p1}, Lcom/google/common/flags/Flag;->access$600(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/flags/Flag$13;->val$constraint:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 589
    :catch_b
    move-exception v0

    .line 590
    .local v0, ex:Ljava/lang/ClassCastException;
    new-instance v1, Lcom/google/common/flags/InvalidFlagValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a subtype of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/flags/Flag$13;->val$constraint:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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
    .line 584
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$13;->parse(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
