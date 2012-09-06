.class final enum Lcom/google/common/flags/Flags$ParseState;
.super Ljava/lang/Enum;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ParseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/flags/Flags$ParseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/flags/Flags$ParseState;

.field public static final enum DONE:Lcom/google/common/flags/Flags$ParseState;

.field public static final enum IN_PROGRESS:Lcom/google/common/flags/Flags$ParseState;

.field public static final enum NOT_STARTED:Lcom/google/common/flags/Flags$ParseState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/google/common/flags/Flags$ParseState;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/google/common/flags/Flags$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/flags/Flags$ParseState;->NOT_STARTED:Lcom/google/common/flags/Flags$ParseState;

    .line 117
    new-instance v0, Lcom/google/common/flags/Flags$ParseState;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/google/common/flags/Flags$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/flags/Flags$ParseState;->IN_PROGRESS:Lcom/google/common/flags/Flags$ParseState;

    .line 118
    new-instance v0, Lcom/google/common/flags/Flags$ParseState;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/google/common/flags/Flags$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/flags/Flags$ParseState;->DONE:Lcom/google/common/flags/Flags$ParseState;

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/flags/Flags$ParseState;

    sget-object v1, Lcom/google/common/flags/Flags$ParseState;->NOT_STARTED:Lcom/google/common/flags/Flags$ParseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/flags/Flags$ParseState;->IN_PROGRESS:Lcom/google/common/flags/Flags$ParseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/flags/Flags$ParseState;->DONE:Lcom/google/common/flags/Flags$ParseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/common/flags/Flags$ParseState;->$VALUES:[Lcom/google/common/flags/Flags$ParseState;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/flags/Flags$ParseState;
    .registers 2
    .parameter "name"

    .prologue
    .line 115
    const-class v0, Lcom/google/common/flags/Flags$ParseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/flags/Flags$ParseState;

    return-object v0
.end method

.method public static values()[Lcom/google/common/flags/Flags$ParseState;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/google/common/flags/Flags$ParseState;->$VALUES:[Lcom/google/common/flags/Flags$ParseState;

    invoke-virtual {v0}, [Lcom/google/common/flags/Flags$ParseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/flags/Flags$ParseState;

    return-object v0
.end method
