.class final enum Lcom/sdgtl/mediahub/spr/screen/lm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/sdgtl/mediahub/spr/screen/lm;

.field public static final enum b:Lcom/sdgtl/mediahub/spr/screen/lm;

.field private static final synthetic c:[Lcom/sdgtl/mediahub/spr/screen/lm;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/lm;

    const-string v1, "Not_Request"

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/lm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/lm;->a:Lcom/sdgtl/mediahub/spr/screen/lm;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/lm;

    const-string v1, "Request_Register_Card"

    invoke-direct {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/screen/lm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/lm;->b:Lcom/sdgtl/mediahub/spr/screen/lm;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sdgtl/mediahub/spr/screen/lm;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/lm;->a:Lcom/sdgtl/mediahub/spr/screen/lm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/lm;->b:Lcom/sdgtl/mediahub/spr/screen/lm;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/lm;->c:[Lcom/sdgtl/mediahub/spr/screen/lm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/screen/lm;
    .registers 2

    const-class v0, Lcom/sdgtl/mediahub/spr/screen/lm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/lm;

    return-object v0
.end method

.method public static values()[Lcom/sdgtl/mediahub/spr/screen/lm;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/lm;->c:[Lcom/sdgtl/mediahub/spr/screen/lm;

    array-length v1, v0

    new-array v2, v1, [Lcom/sdgtl/mediahub/spr/screen/lm;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
