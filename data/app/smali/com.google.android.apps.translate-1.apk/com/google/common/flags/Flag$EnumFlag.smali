.class Lcom/google/common/flags/Flag$EnumFlag;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flags/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lcom/google/common/flags/Flag",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final autoUpperCase:Z

.field private final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Enum;Ljava/lang/Class;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter "autoUpperCase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Class",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p0, this:Lcom/google/common/flags/Flag$EnumFlag;,"Lcom/google/common/flags/Flag$EnumFlag<TT;>;"
    .local p1, defaultValue:Ljava/lang/Enum;,"TT;"
    .local p2, enumType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    .line 680
    iput-object p2, p0, Lcom/google/common/flags/Flag$EnumFlag;->enumType:Ljava/lang/Class;

    .line 681
    iput-boolean p3, p0, Lcom/google/common/flags/Flag$EnumFlag;->autoUpperCase:Z

    .line 682
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Enum;Ljava/lang/Class;ZLcom/google/common/flags/Flag$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 666
    .local p0, this:Lcom/google/common/flags/Flag$EnumFlag;,"Lcom/google/common/flags/Flag$EnumFlag<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/flags/Flag$EnumFlag;-><init>(Ljava/lang/Enum;Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public parsableStringValue(Ljava/lang/Enum;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, this:Lcom/google/common/flags/Flag$EnumFlag;,"Lcom/google/common/flags/Flag$EnumFlag<TT;>;"
    .local p1, value:Ljava/lang/Enum;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsableStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 666
    .local p0, this:Lcom/google/common/flags/Flag$EnumFlag;,"Lcom/google/common/flags/Flag$EnumFlag<TT;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$EnumFlag;->parsableStringValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)Ljava/lang/Enum;
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 687
    .local p0, this:Lcom/google/common/flags/Flag$EnumFlag;,"Lcom/google/common/flags/Flag$EnumFlag<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/common/flags/Flag$EnumFlag;->enumType:Ljava/lang/Class;

    iget-boolean v2, p0, Lcom/google/common/flags/Flag$EnumFlag;->autoUpperCase:Z

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_a
    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    return-object v1

    .line 689
    :catch_f
    move-exception v0

    .line 690
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/common/flags/InvalidFlagValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/flags/Flag$EnumFlag;->enumType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " constant"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 666
    .local p0, this:Lcom/google/common/flags/Flag$EnumFlag;,"Lcom/google/common/flags/Flag$EnumFlag<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$EnumFlag;->parse(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
