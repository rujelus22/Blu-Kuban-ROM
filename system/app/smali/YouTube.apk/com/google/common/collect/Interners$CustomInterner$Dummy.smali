.class final enum Lcom/google/common/collect/Interners$CustomInterner$Dummy;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/Interners$CustomInterner$Dummy;

.field public static final enum VALUE:Lcom/google/common/collect/Interners$CustomInterner$Dummy;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Interners$CustomInterner$Dummy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/Interners$CustomInterner$Dummy;->VALUE:Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    sget-object v1, Lcom/google/common/collect/Interners$CustomInterner$Dummy;->VALUE:Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/Interners$CustomInterner$Dummy;->$VALUES:[Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/Interners$CustomInterner$Dummy;
    .registers 2
    .parameter

    .prologue
    .line 91
    const-class v0, Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/Interners$CustomInterner$Dummy;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/common/collect/Interners$CustomInterner$Dummy;->$VALUES:[Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    invoke-virtual {v0}, [Lcom/google/common/collect/Interners$CustomInterner$Dummy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    return-object v0
.end method
