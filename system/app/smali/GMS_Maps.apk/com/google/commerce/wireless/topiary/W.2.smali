.class public final enum Lcom/google/commerce/wireless/topiary/W;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/commerce/wireless/topiary/W;

.field public static final enum b:Lcom/google/commerce/wireless/topiary/W;

.field public static final enum c:Lcom/google/commerce/wireless/topiary/W;

.field private static final synthetic d:[Lcom/google/commerce/wireless/topiary/W;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/google/commerce/wireless/topiary/W;

    const-string v1, "NotAuthenticated"

    invoke-direct {v0, v1, v2}, Lcom/google/commerce/wireless/topiary/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/W;->a:Lcom/google/commerce/wireless/topiary/W;

    .line 24
    new-instance v0, Lcom/google/commerce/wireless/topiary/W;

    const-string v1, "InProgress"

    invoke-direct {v0, v1, v3}, Lcom/google/commerce/wireless/topiary/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/W;->b:Lcom/google/commerce/wireless/topiary/W;

    .line 25
    new-instance v0, Lcom/google/commerce/wireless/topiary/W;

    const-string v1, "Authenticated"

    invoke-direct {v0, v1, v4}, Lcom/google/commerce/wireless/topiary/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/W;->c:Lcom/google/commerce/wireless/topiary/W;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/commerce/wireless/topiary/W;

    sget-object v1, Lcom/google/commerce/wireless/topiary/W;->a:Lcom/google/commerce/wireless/topiary/W;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/commerce/wireless/topiary/W;->b:Lcom/google/commerce/wireless/topiary/W;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/commerce/wireless/topiary/W;->c:Lcom/google/commerce/wireless/topiary/W;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/commerce/wireless/topiary/W;->d:[Lcom/google/commerce/wireless/topiary/W;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/commerce/wireless/topiary/W;
    .registers 2
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/google/commerce/wireless/topiary/W;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/W;

    return-object v0
.end method

.method public static values()[Lcom/google/commerce/wireless/topiary/W;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/commerce/wireless/topiary/W;->d:[Lcom/google/commerce/wireless/topiary/W;

    invoke-virtual {v0}, [Lcom/google/commerce/wireless/topiary/W;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/commerce/wireless/topiary/W;

    return-object v0
.end method
