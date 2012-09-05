.class final enum Lcom/sdgtl/mediahub/spr/common/gj;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/sdgtl/mediahub/spr/common/gj;

.field public static final enum b:Lcom/sdgtl/mediahub/spr/common/gj;

.field public static final enum c:Lcom/sdgtl/mediahub/spr/common/gj;

.field private static final synthetic d:[Lcom/sdgtl/mediahub/spr/common/gj;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gj;

    const-string v1, "CASE_NEED_VERIFY_MODE"

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/gj;->a:Lcom/sdgtl/mediahub/spr/common/gj;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gj;

    const-string v1, "CASE_NEED_AUTH_CODE"

    invoke-direct {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/gj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/gj;->b:Lcom/sdgtl/mediahub/spr/common/gj;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gj;

    const-string v1, "CASE_VERIFY_AND_AUTH_CODE_MODE"

    invoke-direct {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/common/gj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/gj;->c:Lcom/sdgtl/mediahub/spr/common/gj;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sdgtl/mediahub/spr/common/gj;

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gj;->a:Lcom/sdgtl/mediahub/spr/common/gj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gj;->b:Lcom/sdgtl/mediahub/spr/common/gj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gj;->c:Lcom/sdgtl/mediahub/spr/common/gj;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/gj;->d:[Lcom/sdgtl/mediahub/spr/common/gj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/gj;
    .registers 2

    const-class v0, Lcom/sdgtl/mediahub/spr/common/gj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/gj;

    return-object v0
.end method

.method public static values()[Lcom/sdgtl/mediahub/spr/common/gj;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/gj;->d:[Lcom/sdgtl/mediahub/spr/common/gj;

    array-length v1, v0

    new-array v2, v1, [Lcom/sdgtl/mediahub/spr/common/gj;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
