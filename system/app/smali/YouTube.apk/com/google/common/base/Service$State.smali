.class public final enum Lcom/google/common/base/Service$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/Service$State;

.field public static final enum FAILED:Lcom/google/common/base/Service$State;

.field public static final enum NEW:Lcom/google/common/base/Service$State;

.field public static final enum RUNNING:Lcom/google/common/base/Service$State;

.field public static final enum STARTING:Lcom/google/common/base/Service$State;

.field public static final enum STOPPING:Lcom/google/common/base/Service$State;

.field public static final enum TERMINATED:Lcom/google/common/base/Service$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    new-instance v0, Lcom/google/common/base/Service$State;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/google/common/base/Service$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Service$State;->NEW:Lcom/google/common/base/Service$State;

    .line 133
    new-instance v0, Lcom/google/common/base/Service$State;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v4}, Lcom/google/common/base/Service$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Service$State;->STARTING:Lcom/google/common/base/Service$State;

    .line 138
    new-instance v0, Lcom/google/common/base/Service$State;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/google/common/base/Service$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Service$State;->RUNNING:Lcom/google/common/base/Service$State;

    .line 143
    new-instance v0, Lcom/google/common/base/Service$State;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v6}, Lcom/google/common/base/Service$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Service$State;->STOPPING:Lcom/google/common/base/Service$State;

    .line 149
    new-instance v0, Lcom/google/common/base/Service$State;

    const-string v1, "TERMINATED"

    invoke-direct {v0, v1, v7}, Lcom/google/common/base/Service$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Service$State;->TERMINATED:Lcom/google/common/base/Service$State;

    .line 155
    new-instance v0, Lcom/google/common/base/Service$State;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Service$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Service$State;->FAILED:Lcom/google/common/base/Service$State;

    .line 122
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->NEW:Lcom/google/common/base/Service$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/base/Service$State;->STARTING:Lcom/google/common/base/Service$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/base/Service$State;->RUNNING:Lcom/google/common/base/Service$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/base/Service$State;->STOPPING:Lcom/google/common/base/Service$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/base/Service$State;->TERMINATED:Lcom/google/common/base/Service$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/common/base/Service$State;->FAILED:Lcom/google/common/base/Service$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/base/Service$State;->$VALUES:[Lcom/google/common/base/Service$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Service$State;
    .registers 2
    .parameter

    .prologue
    .line 122
    const-class v0, Lcom/google/common/base/Service$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Service$State;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/Service$State;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/google/common/base/Service$State;->$VALUES:[Lcom/google/common/base/Service$State;

    invoke-virtual {v0}, [Lcom/google/common/base/Service$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Service$State;

    return-object v0
.end method