.class final enum Lcom/sdgtl/mediahub/spr/common/gi;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/sdgtl/mediahub/spr/common/gi;

.field public static final enum b:Lcom/sdgtl/mediahub/spr/common/gi;

.field public static final enum c:Lcom/sdgtl/mediahub/spr/common/gi;

.field public static final enum d:Lcom/sdgtl/mediahub/spr/common/gi;

.field private static final synthetic e:[Lcom/sdgtl/mediahub/spr/common/gi;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gi;

    const-string v1, "DOMAIN_STATE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/gi;->a:Lcom/sdgtl/mediahub/spr/common/gi;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gi;

    const-string v1, "DOMAIN_STATE_JOIN"

    invoke-direct {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/gi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/gi;->b:Lcom/sdgtl/mediahub/spr/common/gi;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gi;

    const-string v1, "DOMAIN_STATE_REJOIN"

    invoke-direct {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/common/gi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/gi;->c:Lcom/sdgtl/mediahub/spr/common/gi;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gi;

    const-string v1, "DOMAIN_STATE_LEAVE"

    invoke-direct {v0, v1, v5}, Lcom/sdgtl/mediahub/spr/common/gi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/gi;->d:Lcom/sdgtl/mediahub/spr/common/gi;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sdgtl/mediahub/spr/common/gi;

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->a:Lcom/sdgtl/mediahub/spr/common/gi;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->b:Lcom/sdgtl/mediahub/spr/common/gi;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->c:Lcom/sdgtl/mediahub/spr/common/gi;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->d:Lcom/sdgtl/mediahub/spr/common/gi;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/gi;->e:[Lcom/sdgtl/mediahub/spr/common/gi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/gi;
    .registers 2

    const-class v0, Lcom/sdgtl/mediahub/spr/common/gi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/gi;

    return-object v0
.end method

.method public static values()[Lcom/sdgtl/mediahub/spr/common/gi;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/gi;->e:[Lcom/sdgtl/mediahub/spr/common/gi;

    array-length v1, v0

    new-array v2, v1, [Lcom/sdgtl/mediahub/spr/common/gi;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
