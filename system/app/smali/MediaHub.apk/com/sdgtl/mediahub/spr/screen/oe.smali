.class final enum Lcom/sdgtl/mediahub/spr/screen/oe;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/sdgtl/mediahub/spr/screen/oe;

.field public static final enum b:Lcom/sdgtl/mediahub/spr/screen/oe;

.field public static final enum c:Lcom/sdgtl/mediahub/spr/screen/oe;

.field public static final enum d:Lcom/sdgtl/mediahub/spr/screen/oe;

.field public static final enum e:Lcom/sdgtl/mediahub/spr/screen/oe;

.field private static final synthetic f:[Lcom/sdgtl/mediahub/spr/screen/oe;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/oe;

    const-string v1, "Not_Change_NetWork"

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/oe;->a:Lcom/sdgtl/mediahub/spr/screen/oe;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/oe;

    const-string v1, "DirectBillingAuthUrlCheck"

    invoke-direct {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/screen/oe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/oe;->b:Lcom/sdgtl/mediahub/spr/screen/oe;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/oe;

    const-string v1, "ConfirmDirectBilling"

    invoke-direct {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/screen/oe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/oe;->c:Lcom/sdgtl/mediahub/spr/screen/oe;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/oe;

    const-string v1, "Res_Data_NULL"

    invoke-direct {v0, v1, v5}, Lcom/sdgtl/mediahub/spr/screen/oe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/oe;->d:Lcom/sdgtl/mediahub/spr/screen/oe;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/oe;

    const-string v1, "Res_Result_NOK"

    invoke-direct {v0, v1, v6}, Lcom/sdgtl/mediahub/spr/screen/oe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/oe;->e:Lcom/sdgtl/mediahub/spr/screen/oe;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sdgtl/mediahub/spr/screen/oe;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->a:Lcom/sdgtl/mediahub/spr/screen/oe;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->b:Lcom/sdgtl/mediahub/spr/screen/oe;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->c:Lcom/sdgtl/mediahub/spr/screen/oe;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->d:Lcom/sdgtl/mediahub/spr/screen/oe;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/oe;->e:Lcom/sdgtl/mediahub/spr/screen/oe;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/oe;->f:[Lcom/sdgtl/mediahub/spr/screen/oe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/screen/oe;
    .registers 2

    const-class v0, Lcom/sdgtl/mediahub/spr/screen/oe;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/oe;

    return-object v0
.end method

.method public static values()[Lcom/sdgtl/mediahub/spr/screen/oe;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/oe;->f:[Lcom/sdgtl/mediahub/spr/screen/oe;

    array-length v1, v0

    new-array v2, v1, [Lcom/sdgtl/mediahub/spr/screen/oe;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
