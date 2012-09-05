.class final enum Lcom/sdgtl/mediahub/spr/ao;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/sdgtl/mediahub/spr/ao;

.field public static final enum b:Lcom/sdgtl/mediahub/spr/ao;

.field public static final enum c:Lcom/sdgtl/mediahub/spr/ao;

.field private static final synthetic d:[Lcom/sdgtl/mediahub/spr/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sdgtl/mediahub/spr/ao;

    const-string v1, "Server_Data_None"

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/ao;->a:Lcom/sdgtl/mediahub/spr/ao;

    new-instance v0, Lcom/sdgtl/mediahub/spr/ao;

    const-string v1, "Server_Data_Loading"

    invoke-direct {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/ao;->b:Lcom/sdgtl/mediahub/spr/ao;

    new-instance v0, Lcom/sdgtl/mediahub/spr/ao;

    const-string v1, "Server_Data_LoadFinish"

    invoke-direct {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/ao;->c:Lcom/sdgtl/mediahub/spr/ao;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sdgtl/mediahub/spr/ao;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->a:Lcom/sdgtl/mediahub/spr/ao;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->b:Lcom/sdgtl/mediahub/spr/ao;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->c:Lcom/sdgtl/mediahub/spr/ao;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sdgtl/mediahub/spr/ao;->d:[Lcom/sdgtl/mediahub/spr/ao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/ao;
    .registers 2

    const-class v0, Lcom/sdgtl/mediahub/spr/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/ao;

    return-object v0
.end method

.method public static values()[Lcom/sdgtl/mediahub/spr/ao;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/ao;->d:[Lcom/sdgtl/mediahub/spr/ao;

    array-length v1, v0

    new-array v2, v1, [Lcom/sdgtl/mediahub/spr/ao;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
