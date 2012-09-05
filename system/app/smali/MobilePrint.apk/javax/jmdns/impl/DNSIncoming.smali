.class public final Ljavax/jmdns/impl/DNSIncoming;
.super Ljavax/jmdns/impl/DNSMessage;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSOptionCode:[I

.field private static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

.field public static USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

.field private static final _nibbleToHex:[C

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

.field private final _packet:Ljava/net/DatagramPacket;

.field private final _receivedTime:J

.field private _senderUDPPayload:I


# direct methods
.method static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSOptionCode()[I
    .registers 3

    .prologue
    .line 28
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSOptionCode:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSOptionCode;->values()[Ljavax/jmdns/impl/constants/DNSOptionCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->LLQ:Ljavax/jmdns/impl/constants/DNSOptionCode;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44

    :goto_15
    :try_start_15
    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->NSID:Ljavax/jmdns/impl/constants/DNSOptionCode;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42

    :goto_1e
    :try_start_1e
    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->Owner:Ljavax/jmdns/impl/constants/DNSOptionCode;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40

    :goto_27
    :try_start_27
    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->UL:Ljavax/jmdns/impl/constants/DNSOptionCode;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e

    :goto_30
    :try_start_30
    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->Unknown:Ljavax/jmdns/impl/constants/DNSOptionCode;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c

    :goto_39
    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSOptionCode:[I

    goto :goto_4

    :catch_3c
    move-exception v1

    goto :goto_39

    :catch_3e
    move-exception v1

    goto :goto_30

    :catch_40
    move-exception v1

    goto :goto_27

    :catch_42
    move-exception v1

    goto :goto_1e

    :catch_44
    move-exception v1

    goto :goto_15
.end method

.method static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[I
    .registers 3

    .prologue
    .line 28
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSRecordType;->values()[Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2fa

    :goto_15
    :try_start_15
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A6:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_2f7

    :goto_1f
    :try_start_1f
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_29} :catch_2f4

    :goto_29
    :try_start_29
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AFSDB:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_2f1

    :goto_33
    :try_start_33
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_2ee

    :goto_3d
    :try_start_3d
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_APL:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_2eb

    :goto_47
    :try_start_47
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ATMA:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_51} :catch_2e8

    :goto_51
    :try_start_51
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AXFR:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5b} :catch_2e5

    :goto_5b
    :try_start_5b
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_CERT:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_65} :catch_2e2

    :goto_65
    :try_start_65
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_CNAME:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6e} :catch_2df

    :goto_6e
    :try_start_6e
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_DNAME:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_2dc

    :goto_78
    :try_start_78
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_DNSKEY:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_82} :catch_2d9

    :goto_82
    :try_start_82
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_DS:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8c} :catch_2d6

    :goto_8c
    :try_start_8c
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_EID:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_96} :catch_2d3

    :goto_96
    :try_start_96
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_GID:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a0} :catch_2d0

    :goto_a0
    :try_start_a0
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_GPOS:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_aa} :catch_2cd

    :goto_aa
    :try_start_aa
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_HINFO:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b4} :catch_2ca

    :goto_b4
    :try_start_b4
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_bd} :catch_2c7

    :goto_bd
    :try_start_bd
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ISDN:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_c7} :catch_2c4

    :goto_c7
    :try_start_c7
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IXFR:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_d1} :catch_2c1

    :goto_d1
    :try_start_d1
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_KEY:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_db} :catch_2be

    :goto_db
    :try_start_db
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_KX:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_e5} :catch_2bb

    :goto_e5
    :try_start_e5
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_LOC:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e5 .. :try_end_ef} :catch_2b8

    :goto_ef
    :try_start_ef
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MAILA:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef .. :try_end_f9} :catch_2b5

    :goto_f9
    :try_start_f9
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MAILB:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_103
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9 .. :try_end_103} :catch_2b2

    :goto_103
    :try_start_103
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MB:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_103 .. :try_end_10d} :catch_2af

    :goto_10d
    :try_start_10d
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MD:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_116} :catch_2ac

    :goto_116
    :try_start_116
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MF:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_11f} :catch_2a9

    :goto_11f
    :try_start_11f
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MG:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_2a6

    :goto_129
    :try_start_129
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MINFO:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_2a3

    :goto_133
    :try_start_133
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MR:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_133 .. :try_end_13d} :catch_2a0

    :goto_13d
    :try_start_13d
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MX:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_147} :catch_29d

    :goto_147
    :try_start_147
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NAPTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_151} :catch_29a

    :goto_151
    :try_start_151
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NIMLOC:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_151 .. :try_end_15b} :catch_297

    :goto_15b
    :try_start_15b
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NS:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_164
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_164} :catch_294

    :goto_164
    :try_start_164
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NSAP:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_164 .. :try_end_16e} :catch_291

    :goto_16e
    :try_start_16e
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NSAP_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16e .. :try_end_178} :catch_28e

    :goto_178
    :try_start_178
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NSEC:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_182
    .catch Ljava/lang/NoSuchFieldError; {:try_start_178 .. :try_end_182} :catch_28b

    :goto_182
    :try_start_182
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NULL:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_182 .. :try_end_18c} :catch_288

    :goto_18c
    :try_start_18c
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_196
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_196} :catch_285

    :goto_196
    :try_start_196
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_196 .. :try_end_1a0} :catch_282

    :goto_1a0
    :try_start_1a0
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a0 .. :try_end_1aa} :catch_27f

    :goto_1aa
    :try_start_1aa
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PX:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1aa .. :try_end_1b4} :catch_27c

    :goto_1b4
    :try_start_1b4
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_RP:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b4 .. :try_end_1be} :catch_279

    :goto_1be
    :try_start_1be
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_RRSIG:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_1c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1be .. :try_end_1c8} :catch_276

    :goto_1c8
    :try_start_1c8
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_RT:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c8 .. :try_end_1d2} :catch_273

    :goto_1d2
    :try_start_1d2
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SIG:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d2 .. :try_end_1dc} :catch_270

    :goto_1dc
    :try_start_1dc
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SINK:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_1e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1dc .. :try_end_1e6} :catch_26d

    :goto_1e6
    :try_start_1e6
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SOA:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e6 .. :try_end_1ef} :catch_26b

    :goto_1ef
    :try_start_1ef
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ef .. :try_end_1f9} :catch_269

    :goto_1f9
    :try_start_1f9
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SSHFP:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_203
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f9 .. :try_end_203} :catch_267

    :goto_203
    :try_start_203
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TKEY:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_20d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_203 .. :try_end_20d} :catch_265

    :goto_20d
    :try_start_20d
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TSIG:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_217
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20d .. :try_end_217} :catch_263

    :goto_217
    :try_start_217
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_221
    .catch Ljava/lang/NoSuchFieldError; {:try_start_217 .. :try_end_221} :catch_261

    :goto_221
    :try_start_221
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_UID:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_22b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_221 .. :try_end_22b} :catch_25f

    :goto_22b
    :try_start_22b
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_UINFO:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_235
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22b .. :try_end_235} :catch_25d

    :goto_235
    :try_start_235
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_UNSPEC:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_23f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_235 .. :try_end_23f} :catch_25b

    :goto_23f
    :try_start_23f
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_WKS:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_249
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23f .. :try_end_249} :catch_259

    :goto_249
    :try_start_249
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_X25:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_253
    .catch Ljava/lang/NoSuchFieldError; {:try_start_249 .. :try_end_253} :catch_257

    :goto_253
    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

    goto/16 :goto_4

    :catch_257
    move-exception v1

    goto :goto_253

    :catch_259
    move-exception v1

    goto :goto_249

    :catch_25b
    move-exception v1

    goto :goto_23f

    :catch_25d
    move-exception v1

    goto :goto_235

    :catch_25f
    move-exception v1

    goto :goto_22b

    :catch_261
    move-exception v1

    goto :goto_221

    :catch_263
    move-exception v1

    goto :goto_217

    :catch_265
    move-exception v1

    goto :goto_20d

    :catch_267
    move-exception v1

    goto :goto_203

    :catch_269
    move-exception v1

    goto :goto_1f9

    :catch_26b
    move-exception v1

    goto :goto_1ef

    :catch_26d
    move-exception v1

    goto/16 :goto_1e6

    :catch_270
    move-exception v1

    goto/16 :goto_1dc

    :catch_273
    move-exception v1

    goto/16 :goto_1d2

    :catch_276
    move-exception v1

    goto/16 :goto_1c8

    :catch_279
    move-exception v1

    goto/16 :goto_1be

    :catch_27c
    move-exception v1

    goto/16 :goto_1b4

    :catch_27f
    move-exception v1

    goto/16 :goto_1aa

    :catch_282
    move-exception v1

    goto/16 :goto_1a0

    :catch_285
    move-exception v1

    goto/16 :goto_196

    :catch_288
    move-exception v1

    goto/16 :goto_18c

    :catch_28b
    move-exception v1

    goto/16 :goto_182

    :catch_28e
    move-exception v1

    goto/16 :goto_178

    :catch_291
    move-exception v1

    goto/16 :goto_16e

    :catch_294
    move-exception v1

    goto/16 :goto_164

    :catch_297
    move-exception v1

    goto/16 :goto_15b

    :catch_29a
    move-exception v1

    goto/16 :goto_151

    :catch_29d
    move-exception v1

    goto/16 :goto_147

    :catch_2a0
    move-exception v1

    goto/16 :goto_13d

    :catch_2a3
    move-exception v1

    goto/16 :goto_133

    :catch_2a6
    move-exception v1

    goto/16 :goto_129

    :catch_2a9
    move-exception v1

    goto/16 :goto_11f

    :catch_2ac
    move-exception v1

    goto/16 :goto_116

    :catch_2af
    move-exception v1

    goto/16 :goto_10d

    :catch_2b2
    move-exception v1

    goto/16 :goto_103

    :catch_2b5
    move-exception v1

    goto/16 :goto_f9

    :catch_2b8
    move-exception v1

    goto/16 :goto_ef

    :catch_2bb
    move-exception v1

    goto/16 :goto_e5

    :catch_2be
    move-exception v1

    goto/16 :goto_db

    :catch_2c1
    move-exception v1

    goto/16 :goto_d1

    :catch_2c4
    move-exception v1

    goto/16 :goto_c7

    :catch_2c7
    move-exception v1

    goto/16 :goto_bd

    :catch_2ca
    move-exception v1

    goto/16 :goto_b4

    :catch_2cd
    move-exception v1

    goto/16 :goto_aa

    :catch_2d0
    move-exception v1

    goto/16 :goto_a0

    :catch_2d3
    move-exception v1

    goto/16 :goto_96

    :catch_2d6
    move-exception v1

    goto/16 :goto_8c

    :catch_2d9
    move-exception v1

    goto/16 :goto_82

    :catch_2dc
    move-exception v1

    goto/16 :goto_78

    :catch_2df
    move-exception v1

    goto/16 :goto_6e

    :catch_2e2
    move-exception v1

    goto/16 :goto_65

    :catch_2e5
    move-exception v1

    goto/16 :goto_5b

    :catch_2e8
    move-exception v1

    goto/16 :goto_51

    :catch_2eb
    move-exception v1

    goto/16 :goto_47

    :catch_2ee
    move-exception v1

    goto/16 :goto_3d

    :catch_2f1
    move-exception v1

    goto/16 :goto_33

    :catch_2f4
    move-exception v1

    goto/16 :goto_29

    :catch_2f7
    move-exception v1

    goto/16 :goto_1f

    :catch_2fa
    move-exception v1

    goto/16 :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    .line 557
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1a

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    .line 28
    return-void

    .line 557
    nop

    :array_1a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method private constructor <init>(IIZLjava/net/DatagramPacket;J)V
    .registers 10
    .parameter "flags"
    .parameter "id"
    .parameter "multicast"
    .parameter "packet"
    .parameter "receivedTime"

    .prologue
    .line 246
    invoke-direct {p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 247
    iput-object p4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 248
    new-instance v0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BI)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 249
    iput-wide p5, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .registers 16
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 184
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v9

    sget v12, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    if-ne v9, v12, :cond_6c

    move v9, v10

    :goto_b
    invoke-direct {p0, v11, v11, v9}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 185
    iput-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 186
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 187
    .local v8, source:Ljava/net/InetAddress;
    new-instance v9, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v11

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v12

    invoke-direct {v9, v11, v12}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BI)V

    iput-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    .line 189
    const/16 v9, 0x5b4

    iput v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 192
    :try_start_2d
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v9

    invoke-virtual {p0, v9}, Ljavax/jmdns/impl/DNSIncoming;->setId(I)V

    .line 193
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v9

    invoke-virtual {p0, v9}, Ljavax/jmdns/impl/DNSIncoming;->setFlags(I)V

    .line 194
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v6

    .line 195
    .local v6, numQuestions:I
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v4

    .line 196
    .local v4, numAnswers:I
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v5

    .line 197
    .local v5, numAuthorities:I
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v3

    .line 200
    .local v3, numAdditionals:I
    if-lez v6, :cond_5c

    .line 201
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5a
    if-lt v1, v6, :cond_6e

    .line 207
    .end local v1           #i:I
    :cond_5c
    if-lez v4, :cond_61

    .line 208
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5f
    if-lt v1, v4, :cond_7a

    .line 217
    .end local v1           #i:I
    :cond_61
    if-lez v5, :cond_66

    .line 218
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_64
    if-lt v1, v5, :cond_88

    .line 227
    .end local v1           #i:I
    :cond_66
    if-lez v3, :cond_6b

    .line 228
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_69
    if-lt v1, v3, :cond_96

    .line 243
    .end local v1           #i:I
    :cond_6b
    return-void

    .end local v3           #numAdditionals:I
    .end local v4           #numAnswers:I
    .end local v5           #numAuthorities:I
    .end local v6           #numQuestions:I
    .end local v8           #source:Ljava/net/InetAddress;
    :cond_6c
    move v9, v11

    .line 184
    goto :goto_b

    .line 202
    .restart local v1       #i:I
    .restart local v3       #numAdditionals:I
    .restart local v4       #numAnswers:I
    .restart local v5       #numAuthorities:I
    .restart local v6       #numQuestions:I
    .restart local v8       #source:Ljava/net/InetAddress;
    :cond_6e
    iget-object v9, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readQuestion()Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 209
    :cond_7a
    invoke-direct {p0, v8}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v7

    .line 210
    .local v7, rec:Ljavax/jmdns/impl/DNSRecord;
    if-eqz v7, :cond_85

    .line 212
    iget-object v9, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 219
    .end local v7           #rec:Ljavax/jmdns/impl/DNSRecord;
    :cond_88
    invoke-direct {p0, v8}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v7

    .line 220
    .restart local v7       #rec:Ljavax/jmdns/impl/DNSRecord;
    if-eqz v7, :cond_93

    .line 222
    iget-object v9, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 229
    .end local v7           #rec:Ljavax/jmdns/impl/DNSRecord;
    :cond_96
    invoke-direct {p0, v8}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v7

    .line 230
    .restart local v7       #rec:Ljavax/jmdns/impl/DNSRecord;
    if-eqz v7, :cond_a1

    .line 232
    iget-object v9, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_a1} :catch_a4

    .line 228
    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 236
    .end local v1           #i:I
    .end local v3           #numAdditionals:I
    .end local v4           #numAnswers:I
    .end local v5           #numAuthorities:I
    .end local v6           #numQuestions:I
    .end local v7           #rec:Ljavax/jmdns/impl/DNSRecord;
    :catch_a4
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/Exception;
    sget-object v9, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "DNSIncoming() dump "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\n exception "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v11, v10, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    new-instance v2, Ljava/io/IOException;

    const-string v9, "DNSIncoming corrupted message"

    invoke-direct {v2, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 241
    throw v2
.end method

.method private _hexString([B)Ljava/lang/String;
    .registers 7
    .parameter "bytes"

    .prologue
    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 569
    .local v2, result:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    array-length v3, p1

    if-lt v1, v3, :cond_11

    .line 575
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 570
    :cond_11
    aget-byte v3, p1, v1

    and-int/lit16 v0, v3, 0xff

    .line 571
    .local v0, b:I
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    div-int/lit8 v4, v0, 0x10

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    rem-int/lit8 v4, v0, 0x10

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;
    .registers 46
    .parameter "source"

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, domain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v8

    invoke-static {v8}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v42

    .line 285
    .local v42, type:Ljavax/jmdns/impl/constants/DNSRecordType;
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object/from16 v0, v42

    if-ne v0, v8, :cond_41

    .line 286
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Could not find record type. domain: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 288
    :cond_41
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v41

    .line 289
    .local v41, recordClassIndex:I
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object/from16 v0, v42

    if-ne v0, v8, :cond_e4

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 290
    .local v4, recordClass:Ljavax/jmdns/impl/constants/DNSRecordClass;
    :goto_51
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-ne v4, v8, :cond_8e

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object/from16 v0, v42

    if-eq v0, v8, :cond_8e

    .line 291
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Could not find record class. domain: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 293
    :cond_8e
    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v5

    .line 294
    .local v5, unique:Z
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readInt()I

    move-result v6

    .line 295
    .local v6, ttl:I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v28

    .line 296
    .local v28, len:I
    const/4 v2, 0x0

    .line 298
    .local v2, rec:Ljavax/jmdns/impl/DNSRecord;
    invoke-static {}, Ljavax/jmdns/impl/DNSIncoming;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[I

    move-result-object v8

    invoke-virtual/range {v42 .. v42}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    sparse-switch v8, :sswitch_data_49a

    .line 427
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_d2

    .line 428
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DNSIncoming() unknown type:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 430
    :cond_d2
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    move/from16 v0, v28

    int-to-long v9, v0

    invoke-virtual {v8, v9, v10}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->skip(J)J

    .line 433
    :cond_dc
    :goto_dc
    if-eqz v2, :cond_e3

    .line 434
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljavax/jmdns/impl/DNSRecord;->setRecordSource(Ljava/net/InetAddress;)V

    .line 436
    :cond_e3
    return-object v2

    .line 289
    .end local v2           #rec:Ljavax/jmdns/impl/DNSRecord;
    .end local v4           #recordClass:Ljavax/jmdns/impl/constants/DNSRecordClass;
    .end local v5           #unique:Z
    .end local v6           #ttl:I
    .end local v28           #len:I
    :cond_e4
    invoke-static/range {v41 .. v41}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    goto/16 :goto_51

    .line 300
    .restart local v2       #rec:Ljavax/jmdns/impl/DNSRecord;
    .restart local v4       #recordClass:Ljavax/jmdns/impl/constants/DNSRecordClass;
    .restart local v5       #unique:Z
    .restart local v6       #ttl:I
    .restart local v28       #len:I
    :sswitch_ea
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$IPv4Address;

    .end local v2           #rec:Ljavax/jmdns/impl/DNSRecord;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$IPv4Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 301
    .restart local v2       #rec:Ljavax/jmdns/impl/DNSRecord;
    goto :goto_dc

    .line 303
    :sswitch_fa
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$IPv6Address;

    .end local v2           #rec:Ljavax/jmdns/impl/DNSRecord;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$IPv6Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 304
    .restart local v2       #rec:Ljavax/jmdns/impl/DNSRecord;
    goto :goto_dc

    .line 307
    :sswitch_10a
    const-string v7, ""

    .line 308
    .local v7, service:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v7

    .line 309
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_120

    .line 310
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Pointer;

    .end local v2           #rec:Ljavax/jmdns/impl/DNSRecord;
    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    .restart local v2       #rec:Ljavax/jmdns/impl/DNSRecord;
    goto :goto_dc

    .line 312
    :cond_120
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PTR record of class: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", there was a problem reading the service name of the answer for domain:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_dc

    .line 316
    .end local v7           #service:Ljava/lang/String;
    :sswitch_141
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Text;

    .end local v2           #rec:Ljavax/jmdns/impl/DNSRecord;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v13

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v13}, Ljavax/jmdns/impl/DNSRecord$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 317
    .restart local v2       #rec:Ljavax/jmdns/impl/DNSRecord;
    goto :goto_dc

    .line 319
    :sswitch_156
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v13

    .line 320
    .local v13, priority:I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v14

    .line 321
    .local v14, weight:I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v15

    .line 322
    .local v15, port:I
    const-string v16, ""

    .line 325
    .local v16, target:Ljava/lang/String;
    sget-boolean v8, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    if-eqz v8, :cond_188

    .line 326
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v16

    .line 331
    :goto_17c
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Service;

    .end local v2           #rec:Ljavax/jmdns/impl/DNSRecord;
    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v16}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    .line 332
    .restart local v2       #rec:Ljavax/jmdns/impl/DNSRecord;
    goto/16 :goto_dc

    .line 329
    :cond_188
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readNonNameString()Ljava/lang/String;

    move-result-object v16

    goto :goto_17c

    .line 334
    .end local v13           #priority:I
    .end local v14           #weight:I
    .end local v15           #port:I
    .end local v16           #target:Ljava/lang/String;
    :sswitch_191
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v24, buf:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v8, " "

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v27

    .line 337
    .local v27, index:I
    if-lez v27, :cond_1db

    const/4 v8, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_1b8
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 338
    .local v22, cpu:Ljava/lang/String;
    if-lez v27, :cond_1e0

    add-int/lit8 v8, v27, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_1c6
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 339
    .local v23, os:Ljava/lang/String;
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$HostInformation;

    .end local v2           #rec:Ljavax/jmdns/impl/DNSRecord;
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    invoke-direct/range {v17 .. v23}, Ljavax/jmdns/impl/DNSRecord$HostInformation;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;Ljava/lang/String;)V

    .line 340
    .restart local v2       #rec:Ljavax/jmdns/impl/DNSRecord;
    goto/16 :goto_dc

    .line 337
    .end local v22           #cpu:Ljava/lang/String;
    .end local v23           #os:Ljava/lang/String;
    :cond_1db
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1b8

    .line 338
    .restart local v22       #cpu:Ljava/lang/String;
    :cond_1e0
    const-string v8, ""

    goto :goto_1c6

    .line 342
    .end local v22           #cpu:Ljava/lang/String;
    .end local v24           #buf:Ljava/lang/StringBuilder;
    .end local v27           #index:I
    :sswitch_1e3
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v8

    invoke-static {v8, v6}, Ljavax/jmdns/impl/constants/DNSResultCode;->resultCodeForFlags(II)Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v26

    .line 343
    .local v26, extendedResultCode:Ljavax/jmdns/impl/constants/DNSResultCode;
    const/high16 v8, 0xff

    and-int/2addr v8, v6

    shr-int/lit8 v43, v8, 0x10

    .line 344
    .local v43, version:I
    if-nez v43, :cond_45e

    .line 345
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 346
    :cond_1f8
    :goto_1f8
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v8

    if-lez v8, :cond_dc

    .line 348
    const/16 v30, 0x0

    .line 349
    .local v30, optionCodeInt:I
    const/16 v29, 0x0

    .line 350
    .local v29, optionCode:Ljavax/jmdns/impl/constants/DNSOptionCode;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_287

    .line 351
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v30

    .line 352
    invoke-static/range {v30 .. v30}, Ljavax/jmdns/impl/constants/DNSOptionCode;->resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOptionCode;

    move-result-object v29

    .line 357
    const/16 v31, 0x0

    .line 358
    .local v31, optionLength:I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_292

    .line 359
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v31

    .line 364
    const/4 v8, 0x0

    new-array v0, v8, [B

    move-object/from16 v32, v0

    .line 365
    .local v32, optiondata:[B
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v8

    move/from16 v0, v31

    if-lt v8, v0, :cond_24d

    .line 366
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v32

    .line 370
    :cond_24d
    invoke-static {}, Ljavax/jmdns/impl/DNSIncoming;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSOptionCode()[I

    move-result-object v8

    invoke-virtual/range {v29 .. v29}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_4bc

    goto :goto_1f8

    .line 415
    :pswitch_25b
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "There was an OPT answer. Not currently handled. Option code: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1f8

    .line 354
    .end local v31           #optionLength:I
    .end local v32           #optiondata:[B
    :cond_287
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "There was a problem reading the OPT record. Ignoring."

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 361
    .restart local v31       #optionLength:I
    :cond_292
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "There was a problem reading the OPT record. Ignoring."

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 377
    .restart local v32       #optiondata:[B
    :pswitch_29d
    const/16 v38, 0x0

    .line 378
    .local v38, ownerVersion:I
    const/16 v37, 0x0

    .line 379
    .local v37, ownerSequence:I
    const/16 v35, 0x0

    check-cast v35, [B

    .line 380
    .local v35, ownerPrimaryMacAddress:[B
    const/16 v39, 0x0

    check-cast v39, [B

    .line 381
    .local v39, ownerWakeupMacAddress:[B
    const/16 v33, 0x0

    check-cast v33, [B

    .line 383
    .local v33, ownerPassword:[B
    const/4 v8, 0x0

    :try_start_2ae
    aget-byte v38, v32, v8

    .line 384
    const/4 v8, 0x1

    aget-byte v37, v32, v8

    .line 385
    const/4 v8, 0x6

    new-array v0, v8, [B

    move-object/from16 v36, v0

    const/4 v8, 0x0

    const/4 v9, 0x2

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x1

    const/4 v9, 0x3

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x3

    const/4 v9, 0x5

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x4

    const/4 v9, 0x6

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x5

    const/4 v9, 0x7

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8
    :try_end_2dc
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2dc} :catch_403

    .line 386
    .end local v35           #ownerPrimaryMacAddress:[B
    .local v36, ownerPrimaryMacAddress:[B
    move-object/from16 v39, v36

    .line 387
    :try_start_2de
    move-object/from16 v0, v32

    array-length v8, v0

    const/16 v9, 0x8

    if-le v8, v9, :cond_316

    .line 389
    const/4 v8, 0x6

    new-array v0, v8, [B

    move-object/from16 v40, v0

    const/4 v8, 0x0

    const/16 v9, 0x8

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x1

    const/16 v9, 0x9

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x2

    const/16 v9, 0xa

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x3

    const/16 v9, 0xb

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x4

    const/16 v9, 0xc

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x5

    const/16 v9, 0xd

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    .end local v39           #ownerWakeupMacAddress:[B
    .local v40, ownerWakeupMacAddress:[B
    move-object/from16 v39, v40

    .line 391
    .end local v40           #ownerWakeupMacAddress:[B
    .restart local v39       #ownerWakeupMacAddress:[B
    :cond_316
    move-object/from16 v0, v32

    array-length v8, v0

    const/16 v9, 0x12

    if-ne v8, v9, :cond_496

    .line 393
    const/4 v8, 0x4

    new-array v0, v8, [B

    move-object/from16 v34, v0

    const/4 v8, 0x0

    const/16 v9, 0xe

    aget-byte v9, v32, v9

    aput-byte v9, v34, v8

    const/4 v8, 0x1

    const/16 v9, 0xf

    aget-byte v9, v32, v9

    aput-byte v9, v34, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    aget-byte v9, v32, v9

    aput-byte v9, v34, v8

    const/4 v8, 0x3

    const/16 v9, 0x11

    aget-byte v9, v32, v9

    aput-byte v9, v34, v8
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_2de .. :try_end_33e} :catch_484

    .line 395
    .end local v33           #ownerPassword:[B
    .local v34, ownerPassword:[B
    :goto_33e
    :try_start_33e
    move-object/from16 v0, v32

    array-length v8, v0

    const/16 v9, 0x16

    if-ne v8, v9, :cond_490

    .line 397
    const/16 v8, 0x8

    new-array v0, v8, [B

    move-object/from16 v33, v0

    const/4 v8, 0x0

    const/16 v9, 0xe

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x1

    const/16 v9, 0xf

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x3

    const/16 v9, 0x11

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x4

    const/16 v9, 0x12

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x5

    const/16 v9, 0x13

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x6

    const/16 v9, 0x14

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x7

    const/16 v9, 0x15

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8
    :try_end_383
    .catch Ljava/lang/Exception; {:try_start_33e .. :try_end_383} :catch_489

    .end local v34           #ownerPassword:[B
    .restart local v33       #ownerPassword:[B
    move-object/from16 v35, v36

    .line 402
    .end local v36           #ownerPrimaryMacAddress:[B
    .restart local v35       #ownerPrimaryMacAddress:[B
    :goto_385
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_1f8

    .line 403
    sget-object v9, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Unhandled Owner OPT version: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " sequence: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " MAC address: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 404
    move-object/from16 v0, v39

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_422

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, " wakeup MAC address: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3d9
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v33, :cond_425

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, " password: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3f6
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 403
    invoke-virtual {v9, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_1f8

    .line 399
    :catch_403
    move-exception v25

    .line 400
    .local v25, exception:Ljava/lang/Exception;
    :goto_404
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Malformed OPT answer. Option code: Owner data: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_385

    .line 404
    .end local v25           #exception:Ljava/lang/Exception;
    :cond_422
    const-string v8, ""

    goto :goto_3d9

    :cond_425
    const-string v8, ""

    goto :goto_3f6

    .line 410
    .end local v33           #ownerPassword:[B
    .end local v35           #ownerPrimaryMacAddress:[B
    .end local v37           #ownerSequence:I
    .end local v38           #ownerVersion:I
    .end local v39           #ownerWakeupMacAddress:[B
    :pswitch_428
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_1f8

    .line 411
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "There was an OPT answer. Option code: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1f8

    .line 423
    .end local v29           #optionCode:Ljavax/jmdns/impl/constants/DNSOptionCode;
    .end local v30           #optionCodeInt:I
    .end local v31           #optionLength:I
    .end local v32           #optiondata:[B
    :cond_45e
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "There was an OPT answer. Wrong version number: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v43

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " result code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 399
    .restart local v29       #optionCode:Ljavax/jmdns/impl/constants/DNSOptionCode;
    .restart local v30       #optionCodeInt:I
    .restart local v31       #optionLength:I
    .restart local v32       #optiondata:[B
    .restart local v33       #ownerPassword:[B
    .restart local v36       #ownerPrimaryMacAddress:[B
    .restart local v37       #ownerSequence:I
    .restart local v38       #ownerVersion:I
    .restart local v39       #ownerWakeupMacAddress:[B
    :catch_484
    move-exception v25

    move-object/from16 v35, v36

    .end local v36           #ownerPrimaryMacAddress:[B
    .restart local v35       #ownerPrimaryMacAddress:[B
    goto/16 :goto_404

    .end local v33           #ownerPassword:[B
    .end local v35           #ownerPrimaryMacAddress:[B
    .restart local v34       #ownerPassword:[B
    .restart local v36       #ownerPrimaryMacAddress:[B
    :catch_489
    move-exception v25

    move-object/from16 v33, v34

    .end local v34           #ownerPassword:[B
    .restart local v33       #ownerPassword:[B
    move-object/from16 v35, v36

    .end local v36           #ownerPrimaryMacAddress:[B
    .restart local v35       #ownerPrimaryMacAddress:[B
    goto/16 :goto_404

    .end local v33           #ownerPassword:[B
    .end local v35           #ownerPrimaryMacAddress:[B
    .restart local v34       #ownerPassword:[B
    .restart local v36       #ownerPrimaryMacAddress:[B
    :cond_490
    move-object/from16 v33, v34

    .end local v34           #ownerPassword:[B
    .restart local v33       #ownerPassword:[B
    move-object/from16 v35, v36

    .end local v36           #ownerPrimaryMacAddress:[B
    .restart local v35       #ownerPrimaryMacAddress:[B
    goto/16 :goto_385

    .end local v35           #ownerPrimaryMacAddress:[B
    .restart local v36       #ownerPrimaryMacAddress:[B
    :cond_496
    move-object/from16 v34, v33

    .end local v33           #ownerPassword:[B
    .restart local v34       #ownerPassword:[B
    goto/16 :goto_33e

    .line 298
    :sswitch_data_49a
    .sparse-switch
        0x2 -> :sswitch_ea
        0x6 -> :sswitch_10a
        0xd -> :sswitch_10a
        0xe -> :sswitch_191
        0x11 -> :sswitch_141
        0x1d -> :sswitch_fa
        0x22 -> :sswitch_156
        0x2a -> :sswitch_1e3
    .end sparse-switch

    .line 370
    :pswitch_data_4bc
    .packed-switch 0x1
        :pswitch_25b
        :pswitch_428
        :pswitch_428
        :pswitch_428
        :pswitch_29d
    .end packed-switch
.end method

.method private readQuestion()Ljavax/jmdns/impl/DNSQuestion;
    .registers 10

    .prologue
    .line 271
    iget-object v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, domain:Ljava/lang/String;
    iget-object v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v5

    invoke-static {v5}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v3

    .line 273
    .local v3, type:Ljavax/jmdns/impl/constants/DNSRecordType;
    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v3, v5, :cond_2f

    .line 274
    sget-object v5, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not find record type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 276
    :cond_2f
    iget-object v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    .line 277
    .local v2, recordClassIndex:I
    invoke-static {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    .line 278
    .local v1, recordClass:Ljavax/jmdns/impl/constants/DNSRecordClass;
    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v4

    .line 279
    .local v4, unique:Z
    invoke-static {v0, v3, v1, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method append(Ljavax/jmdns/impl/DNSIncoming;)V
    .registers 4
    .parameter "that"

    .prologue
    .line 534
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 535
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 536
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 537
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAuthorities()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 538
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAdditionals()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 542
    return-void

    .line 540
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->clone()Ljavax/jmdns/impl/DNSIncoming;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/DNSIncoming;
    .registers 8

    .prologue
    .line 260
    new-instance v0, Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isMulticast()Z

    move-result v3

    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    iget-wide v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/DNSIncoming;-><init>(IIZLjava/net/DatagramPacket;J)V

    .line 261
    .local v0, in:Ljavax/jmdns/impl/DNSIncoming;
    iget v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    iput v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 262
    iget-object v1, v0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    iget-object v1, v0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    iget-object v1, v0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    iget-object v1, v0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    return-object v0
.end method

.method public elapseSinceArrival()I
    .registers 5

    .prologue
    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSenderUDPPayload()I
    .registers 2

    .prologue
    .line 554
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    return v0
.end method

.method print(Z)Ljava/lang/String;
    .registers 7
    .parameter "dump"

    .prologue
    const/4 v4, 0x0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    if-eqz p1, :cond_28

    .line 446
    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    new-array v1, v2, [B

    .line 447
    .local v1, data:[B
    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSIncoming;->print([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .end local v1           #data:[B
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v3

    if-eqz v3, :cond_13e

    const-string v3, "dns[query,"

    :goto_d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 458
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_25
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    const-string v3, ", length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    const-string v3, ", id=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v3

    if-eqz v3, :cond_90

    .line 467
    const-string v3, ", flags=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v3

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_76

    .line 470
    const-string v3, ":r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_76
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_83

    .line 473
    const-string v3, ":aa"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_83
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_90

    .line 476
    const-string v3, ":tc"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_90
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v3

    if-lez v3, :cond_a2

    .line 480
    const-string v3, ", questions="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    :cond_a2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v3

    if-lez v3, :cond_b4

    .line 484
    const-string v3, ", answers="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    :cond_b4
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v3

    if-lez v3, :cond_c6

    .line 488
    const-string v3, ", authorities="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    :cond_c6
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v3

    if-lez v3, :cond_d8

    .line 492
    const-string v3, ", additionals="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    :cond_d8
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v3

    if-lez v3, :cond_ef

    .line 496
    const-string v3, "\nquestions:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v3, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_142

    .line 502
    :cond_ef
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v3

    if-lez v3, :cond_106

    .line 503
    const-string v3, "\nanswers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-object v3, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_100
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_151

    .line 509
    :cond_106
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v3

    if-lez v3, :cond_11d

    .line 510
    const-string v3, "\nauthorities:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v3, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_117
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_160

    .line 516
    :cond_11d
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v3

    if-lez v3, :cond_134

    .line 517
    const-string v3, "\nadditionals:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v3, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_16f

    .line 523
    :cond_134
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 456
    :cond_13e
    const-string v3, "dns[response,"

    goto/16 :goto_d

    .line 497
    :cond_142
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSQuestion;

    .line 498
    .local v1, question:Ljavax/jmdns/impl/DNSQuestion;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e9

    .line 504
    .end local v1           #question:Ljavax/jmdns/impl/DNSQuestion;
    :cond_151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 505
    .local v2, record:Ljavax/jmdns/impl/DNSRecord;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_100

    .line 511
    .end local v2           #record:Ljavax/jmdns/impl/DNSRecord;
    :cond_160
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 512
    .restart local v2       #record:Ljavax/jmdns/impl/DNSRecord;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_117

    .line 518
    .end local v2           #record:Ljavax/jmdns/impl/DNSRecord;
    :cond_16f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 519
    .restart local v2       #record:Ljavax/jmdns/impl/DNSRecord;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_12e
.end method
