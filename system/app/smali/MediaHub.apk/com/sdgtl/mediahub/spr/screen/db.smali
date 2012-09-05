.class final enum Lcom/sdgtl/mediahub/spr/screen/db;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/sdgtl/mediahub/spr/screen/db;

.field public static final enum b:Lcom/sdgtl/mediahub/spr/screen/db;

.field public static final enum c:Lcom/sdgtl/mediahub/spr/screen/db;

.field public static final enum d:Lcom/sdgtl/mediahub/spr/screen/db;

.field private static final synthetic e:[Lcom/sdgtl/mediahub/spr/screen/db;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/db;

    const-string v1, "Not_Request"

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/db;->a:Lcom/sdgtl/mediahub/spr/screen/db;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/db;

    const-string v1, "Request_Devices"

    invoke-direct {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/screen/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/db;->b:Lcom/sdgtl/mediahub/spr/screen/db;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/db;

    const-string v1, "Request_Remove_Devices"

    invoke-direct {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/screen/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/db;->c:Lcom/sdgtl/mediahub/spr/screen/db;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/db;

    const-string v1, "Request_Edit_Devices"

    invoke-direct {v0, v1, v5}, Lcom/sdgtl/mediahub/spr/screen/db;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/db;->d:Lcom/sdgtl/mediahub/spr/screen/db;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sdgtl/mediahub/spr/screen/db;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/db;->a:Lcom/sdgtl/mediahub/spr/screen/db;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/db;->b:Lcom/sdgtl/mediahub/spr/screen/db;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/db;->c:Lcom/sdgtl/mediahub/spr/screen/db;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/db;->d:Lcom/sdgtl/mediahub/spr/screen/db;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/db;->e:[Lcom/sdgtl/mediahub/spr/screen/db;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/screen/db;
    .registers 2

    const-class v0, Lcom/sdgtl/mediahub/spr/screen/db;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/db;

    return-object v0
.end method

.method public static values()[Lcom/sdgtl/mediahub/spr/screen/db;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/db;->e:[Lcom/sdgtl/mediahub/spr/screen/db;

    array-length v1, v0

    new-array v2, v1, [Lcom/sdgtl/mediahub/spr/screen/db;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
