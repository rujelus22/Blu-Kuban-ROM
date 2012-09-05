.class final enum Lcom/sdgtl/mediahub/spr/common/fj;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/sdgtl/mediahub/spr/common/fj;

.field public static final enum b:Lcom/sdgtl/mediahub/spr/common/fj;

.field public static final enum c:Lcom/sdgtl/mediahub/spr/common/fj;

.field private static final synthetic d:[Lcom/sdgtl/mediahub/spr/common/fj;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fj;

    const-string v1, "DOMAIN_STATE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/fj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fj;->a:Lcom/sdgtl/mediahub/spr/common/fj;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fj;

    const-string v1, "DOMAIN_STATE_REJOIN"

    invoke-direct {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/fj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fj;->b:Lcom/sdgtl/mediahub/spr/common/fj;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fj;

    const-string v1, "DOMAIN_STATE_LEAVE"

    invoke-direct {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/common/fj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fj;->c:Lcom/sdgtl/mediahub/spr/common/fj;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sdgtl/mediahub/spr/common/fj;

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/fj;->a:Lcom/sdgtl/mediahub/spr/common/fj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/fj;->b:Lcom/sdgtl/mediahub/spr/common/fj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/fj;->c:Lcom/sdgtl/mediahub/spr/common/fj;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fj;->d:[Lcom/sdgtl/mediahub/spr/common/fj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/fj;
    .registers 2

    const-class v0, Lcom/sdgtl/mediahub/spr/common/fj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/fj;

    return-object v0
.end method

.method public static values()[Lcom/sdgtl/mediahub/spr/common/fj;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fj;->d:[Lcom/sdgtl/mediahub/spr/common/fj;

    array-length v1, v0

    new-array v2, v1, [Lcom/sdgtl/mediahub/spr/common/fj;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
