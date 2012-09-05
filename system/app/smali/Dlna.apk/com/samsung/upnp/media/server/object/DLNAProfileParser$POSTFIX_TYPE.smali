.class final enum Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;
.super Ljava/lang/Enum;
.source "DLNAProfileParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/upnp/media/server/object/DLNAProfileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "POSTFIX_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AAC:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum ADTS:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum ASF:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum AVI:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field private static final synthetic ENUM$VALUES:[Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum GP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum GPP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum JPEG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum LPCM:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum MKV:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum MP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum MP4:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum MPEG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum PNG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum RAW:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum WMA:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

.field public static final enum WMV:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v3}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->JPEG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "PNG"

    invoke-direct {v0, v1, v4}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->PNG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "RAW"

    invoke-direct {v0, v1, v5}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->RAW:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "GPP3"

    invoke-direct {v0, v1, v6}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->GPP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "GP3"

    invoke-direct {v0, v1, v7}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->GP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "MP4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MP4:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "LPCM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->LPCM:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "MPEG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MPEG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "ADTS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ADTS:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "WMA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->WMA:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "ASF"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ASF:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "WMV"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->WMV:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "MP3"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "AVI"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->AVI:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "AAC"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->AAC:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    const-string v1, "MKV"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MKV:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    .line 328
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->JPEG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->PNG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->RAW:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->GPP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->GP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MP4:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->LPCM:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MPEG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ADTS:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->WMA:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ASF:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->WMV:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->AVI:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->AAC:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MKV:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ENUM$VALUES:[Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ENUM$VALUES:[Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
