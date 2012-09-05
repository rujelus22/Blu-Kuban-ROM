.class final enum Lcom/sdgtl/mediahub/spr/screen/ke;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/sdgtl/mediahub/spr/screen/ke;

.field public static final enum b:Lcom/sdgtl/mediahub/spr/screen/ke;

.field public static final enum c:Lcom/sdgtl/mediahub/spr/screen/ke;

.field public static final enum d:Lcom/sdgtl/mediahub/spr/screen/ke;

.field public static final enum e:Lcom/sdgtl/mediahub/spr/screen/ke;

.field public static final enum f:Lcom/sdgtl/mediahub/spr/screen/ke;

.field public static final enum g:Lcom/sdgtl/mediahub/spr/screen/ke;

.field private static final synthetic h:[Lcom/sdgtl/mediahub/spr/screen/ke;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ke;

    const-string v1, "Not_Request"

    invoke-direct {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/screen/ke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->a:Lcom/sdgtl/mediahub/spr/screen/ke;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ke;

    const-string v1, "Request_PaymentMethods"

    invoke-direct {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/screen/ke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->b:Lcom/sdgtl/mediahub/spr/screen/ke;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ke;

    const-string v1, "Request_CardTypes"

    invoke-direct {v0, v1, v5}, Lcom/sdgtl/mediahub/spr/screen/ke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->c:Lcom/sdgtl/mediahub/spr/screen/ke;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ke;

    const-string v1, "Request_CardRemove"

    invoke-direct {v0, v1, v6}, Lcom/sdgtl/mediahub/spr/screen/ke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->d:Lcom/sdgtl/mediahub/spr/screen/ke;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ke;

    const-string v1, "Request_CardRename"

    invoke-direct {v0, v1, v7}, Lcom/sdgtl/mediahub/spr/screen/ke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->e:Lcom/sdgtl/mediahub/spr/screen/ke;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ke;

    const-string v1, "Request_RegisterGiftCard"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/ke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->f:Lcom/sdgtl/mediahub/spr/screen/ke;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ke;

    const-string v1, "Request_Register_Card"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/ke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->g:Lcom/sdgtl/mediahub/spr/screen/ke;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sdgtl/mediahub/spr/screen/ke;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/ke;->a:Lcom/sdgtl/mediahub/spr/screen/ke;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/ke;->b:Lcom/sdgtl/mediahub/spr/screen/ke;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/ke;->c:Lcom/sdgtl/mediahub/spr/screen/ke;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/ke;->d:Lcom/sdgtl/mediahub/spr/screen/ke;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/ke;->e:Lcom/sdgtl/mediahub/spr/screen/ke;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/ke;->f:Lcom/sdgtl/mediahub/spr/screen/ke;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/ke;->g:Lcom/sdgtl/mediahub/spr/screen/ke;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->h:[Lcom/sdgtl/mediahub/spr/screen/ke;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/screen/ke;
    .registers 2

    const-class v0, Lcom/sdgtl/mediahub/spr/screen/ke;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/ke;

    return-object v0
.end method

.method public static values()[Lcom/sdgtl/mediahub/spr/screen/ke;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->h:[Lcom/sdgtl/mediahub/spr/screen/ke;

    array-length v1, v0

    new-array v2, v1, [Lcom/sdgtl/mediahub/spr/screen/ke;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
