.class public final enum Lcom/samsung/upnp/media/server/directory/doa/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/upnp/media/server/directory/doa/FileType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Audio:Lcom/samsung/upnp/media/server/directory/doa/FileType;

.field private static final synthetic ENUM$VALUES:[Lcom/samsung/upnp/media/server/directory/doa/FileType;

.field public static final enum Image:Lcom/samsung/upnp/media/server/directory/doa/FileType;

.field public static final enum Video:Lcom/samsung/upnp/media/server/directory/doa/FileType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/samsung/upnp/media/server/directory/doa/FileType;

    const-string v1, "Audio"

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/directory/doa/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Audio:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    new-instance v0, Lcom/samsung/upnp/media/server/directory/doa/FileType;

    const-string v1, "Video"

    invoke-direct {v0, v1, v3}, Lcom/samsung/upnp/media/server/directory/doa/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Video:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    new-instance v0, Lcom/samsung/upnp/media/server/directory/doa/FileType;

    const-string v1, "Image"

    invoke-direct {v0, v1, v4}, Lcom/samsung/upnp/media/server/directory/doa/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Image:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/upnp/media/server/directory/doa/FileType;

    sget-object v1, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Audio:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Video:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Image:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/upnp/media/server/directory/doa/FileType;->ENUM$VALUES:[Lcom/samsung/upnp/media/server/directory/doa/FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/upnp/media/server/directory/doa/FileType;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/samsung/upnp/media/server/directory/doa/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/directory/doa/FileType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/upnp/media/server/directory/doa/FileType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/samsung/upnp/media/server/directory/doa/FileType;->ENUM$VALUES:[Lcom/samsung/upnp/media/server/directory/doa/FileType;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/upnp/media/server/directory/doa/FileType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
