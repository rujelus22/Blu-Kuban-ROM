.class final Lcom/google/common/flags/Flag$21;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->stringCollector([Ljava/lang/String;)Lcom/google/common/flags/Flag;
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


# instance fields
.field private resultCleared:Z

.field final synthetic val$defaults:Ljava/util/List;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1060
    .local p1, x0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/google/common/flags/Flag$21;->val$result:Ljava/util/List;

    iput-object p3, p0, Lcom/google/common/flags/Flag$21;->val$defaults:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    .line 1061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/flags/Flag$21;->resultCleared:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic parsableStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1060
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$21;->parsableStringValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parsableStringValue(Ljava/util/List;)Ljava/lang/String;
    .registers 5
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
    .line 1073
    .local p1, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List can not be represented in a single String: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 1060
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$21;->parse(Ljava/lang/String;)Ljava/util/List;

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
    .line 1064
    iget-boolean v0, p0, Lcom/google/common/flags/Flag$21;->resultCleared:Z

    if-nez v0, :cond_c

    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/flags/Flag$21;->resultCleared:Z

    .line 1066
    iget-object v0, p0, Lcom/google/common/flags/Flag$21;->val$result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1068
    :cond_c
    iget-object v0, p0, Lcom/google/common/flags/Flag$21;->val$result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    iget-object v0, p0, Lcom/google/common/flags/Flag$21;->val$result:Ljava/util/List;

    #calls: Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/google/common/flags/Flag;->access$800(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resetForTest()V
    .registers 3

    .prologue
    .line 1079
    invoke-super {p0}, Lcom/google/common/flags/Flag;->resetForTest()V

    .line 1080
    iget-object v0, p0, Lcom/google/common/flags/Flag$21;->val$result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1081
    iget-object v0, p0, Lcom/google/common/flags/Flag$21;->val$result:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/flags/Flag$21;->val$defaults:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/flags/Flag$21;->resultCleared:Z

    .line 1083
    return-void
.end method
