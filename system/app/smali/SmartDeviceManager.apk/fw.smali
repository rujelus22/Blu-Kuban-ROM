.class public final enum Lfw;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfw;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfw;

.field public static final enum ALL:Lfw;

.field public static final enum CREATOR:Lfw;

.field public static final enum FIELD:Lfw;

.field public static final enum GETTER:Lfw;

.field public static final enum IS_GETTER:Lfw;

.field public static final enum NONE:Lfw;

.field public static final enum SETTER:Lfw;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lfw;

    const-string v1, "GETTER"

    invoke-direct {v0, v1, v3}, Lfw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfw;->GETTER:Lfw;

    .line 31
    new-instance v0, Lfw;

    const-string v1, "SETTER"

    invoke-direct {v0, v1, v4}, Lfw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfw;->SETTER:Lfw;

    .line 37
    new-instance v0, Lfw;

    const-string v1, "CREATOR"

    invoke-direct {v0, v1, v5}, Lfw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfw;->CREATOR:Lfw;

    .line 47
    new-instance v0, Lfw;

    const-string v1, "FIELD"

    invoke-direct {v0, v1, v6}, Lfw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfw;->FIELD:Lfw;

    .line 56
    new-instance v0, Lfw;

    const-string v1, "IS_GETTER"

    invoke-direct {v0, v1, v7}, Lfw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfw;->IS_GETTER:Lfw;

    .line 61
    new-instance v0, Lfw;

    const-string v1, "NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfw;->NONE:Lfw;

    .line 66
    new-instance v0, Lfw;

    const-string v1, "ALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lfw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfw;->ALL:Lfw;

    .line 13
    const/4 v0, 0x7

    new-array v0, v0, [Lfw;

    sget-object v1, Lfw;->GETTER:Lfw;

    aput-object v1, v0, v3

    sget-object v1, Lfw;->SETTER:Lfw;

    aput-object v1, v0, v4

    sget-object v1, Lfw;->CREATOR:Lfw;

    aput-object v1, v0, v5

    sget-object v1, Lfw;->FIELD:Lfw;

    aput-object v1, v0, v6

    sget-object v1, Lfw;->IS_GETTER:Lfw;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfw;->NONE:Lfw;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfw;->ALL:Lfw;

    aput-object v2, v0, v1

    sput-object v0, Lfw;->$VALUES:[Lfw;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfw;
    .registers 2
    .parameter

    .prologue
    .line 13
    const-class v0, Lfw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfw;

    return-object p0
.end method

.method public static values()[Lfw;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lfw;->$VALUES:[Lfw;

    invoke-virtual {v0}, [Lfw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfw;

    return-object v0
.end method
