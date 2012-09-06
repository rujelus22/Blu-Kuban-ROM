.class public final enum Lde/innosystec/unrar/rarfile/SubBlockHeaderType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/innosystec/unrar/rarfile/SubBlockHeaderType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEEA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

.field public static final enum EA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

.field private static final synthetic ENUM$VALUES:[Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

.field public static final enum MAC_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

.field public static final enum NTACL_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

.field public static final enum STREAM_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

.field public static final enum UO_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;


# instance fields
.field private subblocktype:S


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    const-string v1, "EA_HEAD"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v4, v2}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    new-instance v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    const-string v1, "UO_HEAD"

    const/16 v2, 0x101

    invoke-direct {v0, v1, v5, v2}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    new-instance v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    const-string v1, "MAC_HEAD"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v6, v2}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    new-instance v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    const-string v1, "BEEA_HEAD"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v7, v2}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    new-instance v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    const-string v1, "NTACL_HEAD"

    const/16 v2, 0x104

    invoke-direct {v0, v1, v8, v2}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    new-instance v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    const-string v1, "STREAM_HEAD"

    const/4 v2, 0x5

    const/16 v3, 0x105

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    const/4 v0, 0x6

    new-array v0, v0, [Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    aput-object v1, v0, v4

    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    aput-object v1, v0, v5

    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    aput-object v1, v0, v6

    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    aput-object v1, v0, v7

    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    aput-object v2, v0, v1

    sput-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ENUM$VALUES:[Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->subblocktype:S

    return-void
.end method

.method public static findSubblockHeaderType(S)Lde/innosystec/unrar/rarfile/SubBlockHeaderType;
    .registers 2

    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->equals(S)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->equals(S)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    goto :goto_a

    :cond_16
    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->equals(S)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    goto :goto_a

    :cond_21
    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->equals(S)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    goto :goto_a

    :cond_2c
    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->equals(S)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    goto :goto_a

    :cond_37
    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->equals(S)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    goto :goto_a

    :cond_42
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lde/innosystec/unrar/rarfile/SubBlockHeaderType;
    .registers 2

    const-class v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    return-object v0
.end method

.method public static values()[Lde/innosystec/unrar/rarfile/SubBlockHeaderType;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ENUM$VALUES:[Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    array-length v1, v0

    new-array v2, v1, [Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public equals(S)Z
    .registers 3

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->subblocktype:S

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getSubblocktype()S
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->subblocktype:S

    return v0
.end method
