.class final enum Lcom/sdgtl/mediahub/spr/screen/tu;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/sdgtl/mediahub/spr/screen/tu;

.field public static final enum b:Lcom/sdgtl/mediahub/spr/screen/tu;

.field public static final enum c:Lcom/sdgtl/mediahub/spr/screen/tu;

.field private static final synthetic d:[Lcom/sdgtl/mediahub/spr/screen/tu;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/tu;

    const-string v1, "Not_Request"

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/tu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/tu;->a:Lcom/sdgtl/mediahub/spr/screen/tu;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/tu;

    const-string v1, "Request_My_Page"

    invoke-direct {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/screen/tu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/tu;->b:Lcom/sdgtl/mediahub/spr/screen/tu;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/tu;

    const-string v1, "Request_My_Media"

    invoke-direct {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/screen/tu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/tu;->c:Lcom/sdgtl/mediahub/spr/screen/tu;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sdgtl/mediahub/spr/screen/tu;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/tu;->a:Lcom/sdgtl/mediahub/spr/screen/tu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/tu;->b:Lcom/sdgtl/mediahub/spr/screen/tu;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/tu;->c:Lcom/sdgtl/mediahub/spr/screen/tu;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/tu;->d:[Lcom/sdgtl/mediahub/spr/screen/tu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/screen/tu;
    .registers 2

    const-class v0, Lcom/sdgtl/mediahub/spr/screen/tu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/tu;

    return-object v0
.end method

.method public static values()[Lcom/sdgtl/mediahub/spr/screen/tu;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/tu;->d:[Lcom/sdgtl/mediahub/spr/screen/tu;

    array-length v1, v0

    new-array v2, v1, [Lcom/sdgtl/mediahub/spr/screen/tu;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
