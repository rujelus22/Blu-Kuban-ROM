.class public Leu/chainfire/supersu/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x19

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3e9

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x3ea

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3eb

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x3ec

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3ed

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x3ee

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3ef

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x3f0

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3f1

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x3f2

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3f3

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x3f4

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3f5

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x3f6

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x7d0

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x7d1

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x7d2

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xbb9

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xbba

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xbbb

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xbbc

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x270e

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x270f

    aput v2, v0, v1

    sput-object v0, Leu/chainfire/supersu/Constants;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    const-string v0, "parent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    const-string v0, "prompt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    goto :goto_9

    :cond_14
    const-string v0, "grant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_9

    :cond_1e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_54

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    :sswitch_8
    const-string v0, "ROOT"

    goto :goto_7

    :sswitch_b
    const-string v0, "SYSTEM"

    goto :goto_7

    :sswitch_e
    const-string v0, "RADIO"

    goto :goto_7

    :sswitch_11
    const-string v0, "BLUETOOTH"

    goto :goto_7

    :sswitch_14
    const-string v0, "GRAPHICS"

    goto :goto_7

    :sswitch_17
    const-string v0, "INPUT"

    goto :goto_7

    :sswitch_1a
    const-string v0, "AUDIO"

    goto :goto_7

    :sswitch_1d
    const-string v0, "CAMERA"

    goto :goto_7

    :sswitch_20
    const-string v0, "LOG"

    goto :goto_7

    :sswitch_23
    const-string v0, "COMPASS"

    goto :goto_7

    :sswitch_26
    const-string v0, "MOUNT"

    goto :goto_7

    :sswitch_29
    const-string v0, "WIFI"

    goto :goto_7

    :sswitch_2c
    const-string v0, "ADB"

    goto :goto_7

    :sswitch_2f
    const-string v0, "INSTALL"

    goto :goto_7

    :sswitch_32
    const-string v0, "MEDIA"

    goto :goto_7

    :sswitch_35
    const-string v0, "DHCP"

    goto :goto_7

    :sswitch_38
    const-string v0, "SHELL"

    goto :goto_7

    :sswitch_3b
    const-string v0, "CACHE"

    goto :goto_7

    :sswitch_3e
    const-string v0, "DIAG"

    goto :goto_7

    :sswitch_41
    const-string v0, "NET_BT_ADMIN"

    goto :goto_7

    :sswitch_44
    const-string v0, "NET_BT"

    goto :goto_7

    :sswitch_47
    const-string v0, "INET"

    goto :goto_7

    :sswitch_4a
    const-string v0, "NET_RAW"

    goto :goto_7

    :sswitch_4d
    const-string v0, "MISC"

    goto :goto_7

    :sswitch_50
    const-string v0, "NOBODY"

    goto :goto_7

    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_8
        0x3e8 -> :sswitch_b
        0x3e9 -> :sswitch_e
        0x3ea -> :sswitch_11
        0x3eb -> :sswitch_14
        0x3ec -> :sswitch_17
        0x3ed -> :sswitch_1a
        0x3ee -> :sswitch_1d
        0x3ef -> :sswitch_20
        0x3f0 -> :sswitch_23
        0x3f1 -> :sswitch_26
        0x3f2 -> :sswitch_29
        0x3f3 -> :sswitch_2c
        0x3f4 -> :sswitch_2f
        0x3f5 -> :sswitch_32
        0x3f6 -> :sswitch_35
        0x7d0 -> :sswitch_38
        0x7d1 -> :sswitch_3b
        0x7d2 -> :sswitch_3e
        0xbb9 -> :sswitch_41
        0xbba -> :sswitch_44
        0xbbb -> :sswitch_47
        0xbbc -> :sswitch_4a
        0x270e -> :sswitch_4d
        0x270f -> :sswitch_50
    .end sparse-switch
.end method

.method public static b(Ljava/lang/String;)I
    .registers 2

    const-string v0, "parent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    const-string v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string v0, "parent"

    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "prompt"

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    const-string v0, "grant"

    goto :goto_5

    :cond_12
    const-string v0, "deny"

    goto :goto_5
.end method

.method public static c(Ljava/lang/String;)I
    .registers 2

    const-string v0, "parent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    const-string v0, "content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    goto :goto_9

    :cond_14
    const-string v0, "access"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_9

    :cond_1e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static c(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string v0, "parent"

    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    const-string v0, "yes"

    goto :goto_5

    :cond_c
    const-string v0, "no"

    goto :goto_5
.end method

.method public static d(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string v0, "parent"

    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "content"

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    const-string v0, "access"

    goto :goto_5

    :cond_12
    const-string v0, "none"

    goto :goto_5
.end method
