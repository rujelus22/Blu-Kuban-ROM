.class final enum Lcom/sdgtl/mediahub/spr/au;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/sdgtl/mediahub/spr/au;

.field public static final enum b:Lcom/sdgtl/mediahub/spr/au;

.field public static final enum c:Lcom/sdgtl/mediahub/spr/au;

.field public static final enum d:Lcom/sdgtl/mediahub/spr/au;

.field public static final enum e:Lcom/sdgtl/mediahub/spr/au;

.field public static final enum f:Lcom/sdgtl/mediahub/spr/au;

.field public static final enum g:Lcom/sdgtl/mediahub/spr/au;

.field private static final synthetic h:[Lcom/sdgtl/mediahub/spr/au;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sdgtl/mediahub/spr/au;

    const-string v1, "VZW"

    invoke-direct {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/au;->a:Lcom/sdgtl/mediahub/spr/au;

    new-instance v0, Lcom/sdgtl/mediahub/spr/au;

    const-string v1, "ATT"

    invoke-direct {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/au;->b:Lcom/sdgtl/mediahub/spr/au;

    new-instance v0, Lcom/sdgtl/mediahub/spr/au;

    const-string v1, "TMB"

    invoke-direct {v0, v1, v5}, Lcom/sdgtl/mediahub/spr/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/au;->c:Lcom/sdgtl/mediahub/spr/au;

    new-instance v0, Lcom/sdgtl/mediahub/spr/au;

    const-string v1, "SPR"

    invoke-direct {v0, v1, v6}, Lcom/sdgtl/mediahub/spr/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/au;->d:Lcom/sdgtl/mediahub/spr/au;

    new-instance v0, Lcom/sdgtl/mediahub/spr/au;

    const-string v1, "USC"

    invoke-direct {v0, v1, v7}, Lcom/sdgtl/mediahub/spr/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/au;->e:Lcom/sdgtl/mediahub/spr/au;

    new-instance v0, Lcom/sdgtl/mediahub/spr/au;

    const-string v1, "CSO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/au;->f:Lcom/sdgtl/mediahub/spr/au;

    new-instance v0, Lcom/sdgtl/mediahub/spr/au;

    const-string v1, "KNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/au;->g:Lcom/sdgtl/mediahub/spr/au;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sdgtl/mediahub/spr/au;

    sget-object v1, Lcom/sdgtl/mediahub/spr/au;->a:Lcom/sdgtl/mediahub/spr/au;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sdgtl/mediahub/spr/au;->b:Lcom/sdgtl/mediahub/spr/au;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sdgtl/mediahub/spr/au;->c:Lcom/sdgtl/mediahub/spr/au;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sdgtl/mediahub/spr/au;->d:Lcom/sdgtl/mediahub/spr/au;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sdgtl/mediahub/spr/au;->e:Lcom/sdgtl/mediahub/spr/au;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sdgtl/mediahub/spr/au;->f:Lcom/sdgtl/mediahub/spr/au;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sdgtl/mediahub/spr/au;->g:Lcom/sdgtl/mediahub/spr/au;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sdgtl/mediahub/spr/au;->h:[Lcom/sdgtl/mediahub/spr/au;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/au;
    .registers 2

    const-class v0, Lcom/sdgtl/mediahub/spr/au;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/au;

    return-object v0
.end method

.method public static values()[Lcom/sdgtl/mediahub/spr/au;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/au;->h:[Lcom/sdgtl/mediahub/spr/au;

    array-length v1, v0

    new-array v2, v1, [Lcom/sdgtl/mediahub/spr/au;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method