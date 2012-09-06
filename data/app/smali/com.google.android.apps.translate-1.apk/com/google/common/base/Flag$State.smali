.class final enum Lcom/google/common/base/Flag$State;
.super Ljava/lang/Enum;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/Flag$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/Flag$State;

.field public static final enum ACCESSED:Lcom/google/common/base/Flag$State;

.field public static final enum PARSED:Lcom/google/common/base/Flag$State;

.field public static final enum REGISTERED:Lcom/google/common/base/Flag$State;

.field public static final enum UNUSED:Lcom/google/common/base/Flag$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/google/common/base/Flag$State;

    const-string v1, "UNUSED"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Flag$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Flag$State;->UNUSED:Lcom/google/common/base/Flag$State;

    new-instance v0, Lcom/google/common/base/Flag$State;

    const-string v1, "REGISTERED"

    invoke-direct {v0, v1, v3}, Lcom/google/common/base/Flag$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Flag$State;->REGISTERED:Lcom/google/common/base/Flag$State;

    new-instance v0, Lcom/google/common/base/Flag$State;

    const-string v1, "PARSED"

    invoke-direct {v0, v1, v4}, Lcom/google/common/base/Flag$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Flag$State;->PARSED:Lcom/google/common/base/Flag$State;

    new-instance v0, Lcom/google/common/base/Flag$State;

    const-string v1, "ACCESSED"

    invoke-direct {v0, v1, v5}, Lcom/google/common/base/Flag$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Flag$State;->ACCESSED:Lcom/google/common/base/Flag$State;

    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/base/Flag$State;

    sget-object v1, Lcom/google/common/base/Flag$State;->UNUSED:Lcom/google/common/base/Flag$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/Flag$State;->REGISTERED:Lcom/google/common/base/Flag$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/base/Flag$State;->PARSED:Lcom/google/common/base/Flag$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/base/Flag$State;->ACCESSED:Lcom/google/common/base/Flag$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/base/Flag$State;->$VALUES:[Lcom/google/common/base/Flag$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Flag$State;
    .registers 2
    .parameter "name"

    .prologue
    .line 96
    const-class v0, Lcom/google/common/base/Flag$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Flag$State;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/Flag$State;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/google/common/base/Flag$State;->$VALUES:[Lcom/google/common/base/Flag$State;

    invoke-virtual {v0}, [Lcom/google/common/base/Flag$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Flag$State;

    return-object v0
.end method
