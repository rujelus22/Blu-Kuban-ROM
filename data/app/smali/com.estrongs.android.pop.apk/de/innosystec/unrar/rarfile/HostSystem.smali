.class public final enum Lde/innosystec/unrar/rarfile/HostSystem;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/innosystec/unrar/rarfile/HostSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lde/innosystec/unrar/rarfile/HostSystem;

.field public static final enum beos:Lde/innosystec/unrar/rarfile/HostSystem;

.field public static final enum macos:Lde/innosystec/unrar/rarfile/HostSystem;

.field public static final enum msdos:Lde/innosystec/unrar/rarfile/HostSystem;

.field public static final enum os2:Lde/innosystec/unrar/rarfile/HostSystem;

.field public static final enum unix:Lde/innosystec/unrar/rarfile/HostSystem;

.field public static final enum win32:Lde/innosystec/unrar/rarfile/HostSystem;


# instance fields
.field private hostByte:B


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lde/innosystec/unrar/rarfile/HostSystem;

    const-string v1, "msdos"

    invoke-direct {v0, v1, v4, v4}, Lde/innosystec/unrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->msdos:Lde/innosystec/unrar/rarfile/HostSystem;

    new-instance v0, Lde/innosystec/unrar/rarfile/HostSystem;

    const-string v1, "os2"

    invoke-direct {v0, v1, v5, v5}, Lde/innosystec/unrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->os2:Lde/innosystec/unrar/rarfile/HostSystem;

    new-instance v0, Lde/innosystec/unrar/rarfile/HostSystem;

    const-string v1, "win32"

    invoke-direct {v0, v1, v6, v6}, Lde/innosystec/unrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->win32:Lde/innosystec/unrar/rarfile/HostSystem;

    new-instance v0, Lde/innosystec/unrar/rarfile/HostSystem;

    const-string v1, "unix"

    invoke-direct {v0, v1, v7, v7}, Lde/innosystec/unrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->unix:Lde/innosystec/unrar/rarfile/HostSystem;

    new-instance v0, Lde/innosystec/unrar/rarfile/HostSystem;

    const-string v1, "macos"

    invoke-direct {v0, v1, v8, v8}, Lde/innosystec/unrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->macos:Lde/innosystec/unrar/rarfile/HostSystem;

    new-instance v0, Lde/innosystec/unrar/rarfile/HostSystem;

    const-string v1, "beos"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->beos:Lde/innosystec/unrar/rarfile/HostSystem;

    const/4 v0, 0x6

    new-array v0, v0, [Lde/innosystec/unrar/rarfile/HostSystem;

    sget-object v1, Lde/innosystec/unrar/rarfile/HostSystem;->msdos:Lde/innosystec/unrar/rarfile/HostSystem;

    aput-object v1, v0, v4

    sget-object v1, Lde/innosystec/unrar/rarfile/HostSystem;->os2:Lde/innosystec/unrar/rarfile/HostSystem;

    aput-object v1, v0, v5

    sget-object v1, Lde/innosystec/unrar/rarfile/HostSystem;->win32:Lde/innosystec/unrar/rarfile/HostSystem;

    aput-object v1, v0, v6

    sget-object v1, Lde/innosystec/unrar/rarfile/HostSystem;->unix:Lde/innosystec/unrar/rarfile/HostSystem;

    aput-object v1, v0, v7

    sget-object v1, Lde/innosystec/unrar/rarfile/HostSystem;->macos:Lde/innosystec/unrar/rarfile/HostSystem;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lde/innosystec/unrar/rarfile/HostSystem;->beos:Lde/innosystec/unrar/rarfile/HostSystem;

    aput-object v2, v0, v1

    sput-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->ENUM$VALUES:[Lde/innosystec/unrar/rarfile/HostSystem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lde/innosystec/unrar/rarfile/HostSystem;->hostByte:B

    return-void
.end method

.method public static findHostSystem(B)Lde/innosystec/unrar/rarfile/HostSystem;
    .registers 2

    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->msdos:Lde/innosystec/unrar/rarfile/HostSystem;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/HostSystem;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->msdos:Lde/innosystec/unrar/rarfile/HostSystem;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->os2:Lde/innosystec/unrar/rarfile/HostSystem;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/HostSystem;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->os2:Lde/innosystec/unrar/rarfile/HostSystem;

    goto :goto_a

    :cond_16
    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->win32:Lde/innosystec/unrar/rarfile/HostSystem;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/HostSystem;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->win32:Lde/innosystec/unrar/rarfile/HostSystem;

    goto :goto_a

    :cond_21
    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->unix:Lde/innosystec/unrar/rarfile/HostSystem;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/HostSystem;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->unix:Lde/innosystec/unrar/rarfile/HostSystem;

    goto :goto_a

    :cond_2c
    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->macos:Lde/innosystec/unrar/rarfile/HostSystem;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/HostSystem;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->macos:Lde/innosystec/unrar/rarfile/HostSystem;

    goto :goto_a

    :cond_37
    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->beos:Lde/innosystec/unrar/rarfile/HostSystem;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/rarfile/HostSystem;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->beos:Lde/innosystec/unrar/rarfile/HostSystem;

    goto :goto_a

    :cond_42
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lde/innosystec/unrar/rarfile/HostSystem;
    .registers 2

    const-class v0, Lde/innosystec/unrar/rarfile/HostSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/HostSystem;

    return-object v0
.end method

.method public static values()[Lde/innosystec/unrar/rarfile/HostSystem;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lde/innosystec/unrar/rarfile/HostSystem;->ENUM$VALUES:[Lde/innosystec/unrar/rarfile/HostSystem;

    array-length v1, v0

    new-array v2, v1, [Lde/innosystec/unrar/rarfile/HostSystem;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public equals(B)Z
    .registers 3

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/HostSystem;->hostByte:B

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getHostByte()B
    .registers 2

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/HostSystem;->hostByte:B

    return v0
.end method
