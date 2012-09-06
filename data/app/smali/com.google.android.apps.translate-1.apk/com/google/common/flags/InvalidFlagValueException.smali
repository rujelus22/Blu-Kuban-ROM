.class public Lcom/google/common/flags/InvalidFlagValueException;
.super Lcom/google/common/flags/FlagException;
.source "InvalidFlagValueException.java"


# static fields
.field private static final serialVersionUID:J = 0x8ef5e282L


# instance fields
.field flagName:Ljava/lang/String;

.field flagValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/common/flags/FlagException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/flags/Flag;)V
    .registers 5
    .parameter "text"
    .parameter "flagName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/Flag",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p3, flag:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<*>;"
    invoke-direct {p0, p1}, Lcom/google/common/flags/FlagException;-><init>(Ljava/lang/String;)V

    .line 77
    iput-object p2, p0, Lcom/google/common/flags/InvalidFlagValueException;->flagName:Ljava/lang/String;

    .line 78
    invoke-virtual {p3}, Lcom/google/common/flags/Flag;->parsableStringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flags/InvalidFlagValueException;->flagValue:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "text"
    .parameter "cause"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/common/flags/FlagException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/common/flags/FlagException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/common/flags/InvalidFlagValueException;->flagName:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/flags/InvalidFlagValueException;->flagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/flags/InvalidFlagValueException;->flagValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .end local v0           #text:Ljava/lang/String;
    :cond_39
    return-object v0
.end method
