.class public Lcom/wssnps/base/smlvItemApi;
.super Ljava/lang/Object;
.source "smlvItemApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssnps/base/smlvItemApi$smlCharSet_t;,
        Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;,
        Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;
    }
.end annotation


# static fields
.field public static VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

.field public static tools:Lcom/wssnps/base/smlVItemTools;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 27
    new-instance v0, Lcom/wssnps/base/smlVItemTools;

    invoke-direct {v0}, Lcom/wssnps/base/smlVItemTools;-><init>()V

    sput-object v0, Lcom/wssnps/base/smlvItemApi;->tools:Lcom/wssnps/base/smlVItemTools;

    .line 75
    new-array v0, v7, [Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    sput-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    .line 79
    sget-object v6, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    new-instance v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;-><init>(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)V

    aput-object v0, v6, v1

    .line 80
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    const/16 v2, 0x25

    new-array v2, v2, [Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    iput-object v2, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    .line 81
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    const/16 v2, 0x25

    new-array v2, v2, [Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    iput-object v2, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    .line 82
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    const/16 v2, 0x1c

    new-array v2, v2, [Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    iput-object v2, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    .line 83
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    const/16 v2, 0x1c

    new-array v2, v2, [Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    iput-object v2, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    .line 85
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v1, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v1

    .line 86
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v9, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v9

    .line 87
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v8, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v8

    .line 88
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v10, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v10

    .line 89
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v7, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v7

    .line 90
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/4 v2, 0x5

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 91
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/4 v2, 0x6

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 92
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/4 v2, 0x7

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 93
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x8

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 94
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x9

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 95
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xa

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 96
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xb

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 97
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xc

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 98
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xd

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 99
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xe

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xe

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 100
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xf

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 101
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x15

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x15

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 102
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x16

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x16

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 103
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x17

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x17

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 104
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x1f

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x1f

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 105
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x20

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x20

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 106
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x22

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x22

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 107
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x24

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x24

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 109
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v1, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v1

    .line 110
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v9, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v9

    .line 111
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v8, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v8

    .line 112
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v10, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v10

    .line 113
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v7, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v7

    .line 114
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/4 v2, 0x5

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 115
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/4 v2, 0x6

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 116
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/4 v2, 0x7

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 117
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x8

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 118
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x9

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 119
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xa

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 120
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xb

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 121
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xc

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v9}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 122
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xd

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 123
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xe

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xe

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 124
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xf

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 125
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x15

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x15

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 126
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x16

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x16

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 127
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x17

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x17

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 128
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x1f

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x1f

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 129
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x20

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x20

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 130
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x22

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x22

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 131
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x24

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x24

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 134
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v1, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v1

    .line 135
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v9, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v9

    .line 136
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v8, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v8

    .line 137
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v10, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v10

    .line 138
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v7, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v7

    .line 139
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/4 v2, 0x5

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 140
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/4 v2, 0x6

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 141
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/4 v2, 0x7

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 142
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x8

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 143
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x9

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 144
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xa

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 145
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xb

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 146
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xc

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 147
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xd

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 148
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xe

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xe

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 149
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x13

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x13

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 150
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x16

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x16

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 151
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x17

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x17

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 152
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x18

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x18

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 153
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x19

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x19

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 154
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x1a

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x1a

    invoke-direct {v3, v4, v7}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 155
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x1b

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x1b

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 158
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v1, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v1

    .line 159
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v9, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v9

    .line 160
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v8, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v8

    .line 161
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v10, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v10

    .line 162
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v7, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v7

    .line 163
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/4 v2, 0x5

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 164
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/4 v2, 0x6

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 165
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/4 v2, 0x7

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 166
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x8

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 167
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x9

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 168
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xa

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 169
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xb

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 170
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xc

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 171
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xd

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 172
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xe

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xe

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 173
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x13

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x13

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 174
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x16

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x16

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 175
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x17

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x17

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 176
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x18

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x18

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 177
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x19

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x19

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 178
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x1a

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x1a

    invoke-direct {v3, v4, v8}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 179
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x1b

    new-instance v3, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x1b

    invoke-direct {v3, v4, v1}, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckCharset(Ljava/lang/String;)I
    .registers 4
    .parameter "Tag"

    .prologue
    const/4 v2, -0x1

    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, nCharset:I
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_10

    .line 294
    const/4 v0, 0x4

    .line 324
    :goto_f
    return v0

    .line 296
    :cond_10
    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1a

    .line 298
    const/4 v0, 0x2

    goto :goto_f

    .line 300
    :cond_1a
    const-string v1, "ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_24

    .line 302
    const/4 v0, 0x1

    goto :goto_f

    .line 304
    :cond_24
    const-string v1, "UTF-7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2e

    .line 306
    const/4 v0, 0x3

    goto :goto_f

    .line 308
    :cond_2e
    const-string v1, "UCS2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_38

    .line 310
    const/4 v0, 0x6

    goto :goto_f

    .line 312
    :cond_38
    const-string v1, "SHIFT_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_42

    .line 314
    const/4 v0, 0x7

    goto :goto_f

    .line 318
    :cond_42
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static CheckEncoding(Ljava/lang/String;)I
    .registers 4
    .parameter "Tag"

    .prologue
    const/4 v2, -0x1

    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, EncodingType:I
    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_10

    .line 265
    const/4 v0, 0x2

    .line 284
    :goto_f
    return v0

    .line 267
    :cond_10
    const-string v1, "BASE64"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1a

    .line 269
    const/4 v0, 0x1

    goto :goto_f

    .line 271
    :cond_1a
    const-string v1, "7BIT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_24

    .line 273
    const/4 v0, 0x4

    goto :goto_f

    .line 275
    :cond_24
    const-string v1, "8BIT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2e

    .line 277
    const/4 v0, 0x5

    goto :goto_f

    .line 281
    :cond_2e
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3946
    .line 3949
    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move-object v0, v1

    .line 4020
    :goto_6
    :pswitch_6
    return-object v0

    .line 3965
    :cond_7
    const/4 v0, 0x1

    if-ne p4, v0, :cond_3c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3c

    .line 3968
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->tools:Lcom/wssnps/base/smlVItemTools;

    const/16 v2, 0x800

    invoke-virtual {v0, p0, v2}, Lcom/wssnps/base/smlVItemTools;->DecodeEscapeChar(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    .line 3971
    :goto_16
    packed-switch p2, :pswitch_data_3e

    move-object v0, v2

    .line 3993
    :goto_1a
    packed-switch p3, :pswitch_data_48

    :pswitch_1d
    goto :goto_6

    :pswitch_1e
    move-object v0, v1

    .line 4000
    goto :goto_6

    .line 3975
    :pswitch_20
    const-string v0, ""

    .line 3977
    :try_start_22
    invoke-static {v2}, Lcom/wssnps/base/smlQP;->decodeQP(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Lcom/wssnps/base/smlMimeException; {:try_start_22 .. :try_end_25} :catch_27

    move-result-object v0

    goto :goto_1a

    .line 3978
    :catch_27
    move-exception v2

    .line 3979
    invoke-virtual {v2}, Lcom/wssnps/base/smlMimeException;->printStackTrace()V

    goto :goto_1a

    .line 3983
    :pswitch_2c
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1a

    :pswitch_3a
    move-object v0, v1

    .line 4009
    goto :goto_6

    :cond_3c
    move-object v2, p0

    goto :goto_16

    .line 3971
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_20
        :pswitch_20
    .end packed-switch

    .line 3993
    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_1d
        :pswitch_6
        :pswitch_1d
        :pswitch_1d
        :pswitch_3a
    .end packed-switch
.end method

.method public static VCalALARM2STRING(ILcom/wssnps/base/smlvCal$SmlvCalAlarm_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;I)Ljava/lang/String;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2850
    .line 2853
    const-string v0, ""

    .line 2861
    if-nez p1, :cond_9

    move-object v0, v5

    .line 2958
    :goto_8
    return-object v0

    .line 2864
    :cond_9
    iget-object v3, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {p0, v3}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v6

    .line 2865
    iget-object v3, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {p0, v3}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v7

    .line 2868
    sget-object v3, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v3}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v3

    .line 2869
    invoke-static {v6}, Lcom/wssnps/base/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2870
    invoke-static {v7}, Lcom/wssnps/base/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2871
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2873
    iget-object v3, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    if-eqz v3, :cond_3b

    .line 2875
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    invoke-static {v0, p3}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v0

    .line 2877
    :cond_3b
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2879
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    if-eqz v0, :cond_19a

    .line 2881
    const-string v0, "P"

    .line 2883
    iget-object v3, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    if-lez v3, :cond_69

    .line 2885
    const-string v3, "%d"

    new-array v9, v1, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->weekDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2886
    const-string v3, "W"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2889
    :cond_69
    iget-object v3, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    if-lez v3, :cond_8b

    .line 2891
    const-string v3, "%d"

    new-array v9, v1, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->year:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2892
    const-string v3, "Y"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2895
    :cond_8b
    iget-object v3, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    if-lez v3, :cond_ad

    .line 2897
    const-string v3, "%d"

    new-array v9, v1, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->month:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2898
    const-string v3, "M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2901
    :cond_ad
    iget-object v3, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    if-lez v3, :cond_cf

    .line 2903
    const-string v3, "%d"

    new-array v9, v1, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->monthDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2904
    const-string v3, "D"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2907
    :cond_cf
    iget-object v3, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->hour:I

    if-lez v3, :cond_196

    .line 2911
    const-string v3, "T"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2914
    const-string v3, "%d"

    new-array v9, v1, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->hour:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2915
    const-string v3, "H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    .line 2918
    :goto_f9
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->minute:I

    if-lez v9, :cond_124

    .line 2920
    if-nez v0, :cond_108

    .line 2922
    const-string v0, "T"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 2925
    :cond_108
    const-string v9, "%d"

    new-array v10, v1, [Ljava/lang/Object;

    iget-object v11, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v11, v11, Landroid/text/format/Time;->minute:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2926
    const-string v9, "M"

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2929
    :cond_124
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->second:I

    if-lez v9, :cond_14e

    .line 2931
    if-nez v0, :cond_132

    .line 2933
    const-string v0, "T"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2936
    :cond_132
    const-string v0, "%d"

    new-array v9, v1, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->second:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2937
    const-string v3, "S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2939
    :cond_14e
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2941
    :goto_152
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2943
    iget v3, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->nRepeatCount:I

    if-lez v3, :cond_174

    iget-object v3, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    if-eqz v3, :cond_174

    .line 2945
    const-string v3, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->nRepeatCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2947
    :cond_174
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2949
    iget-object v1, p1, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->pString:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18a

    .line 2951
    invoke-static {v5, v6, v7, v2}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2955
    :cond_18a
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2956
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_196
    move-object v3, v0

    move v0, v2

    goto/16 :goto_f9

    :cond_19a
    move-object v0, v4

    goto :goto_152
.end method

.method public static VCalATTACHIMAGE(ILcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3786
    .line 3793
    iget-object v0, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {p0, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v1

    .line 3794
    iget-object v0, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {p0, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v2

    .line 3795
    iget v0, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->smlGetIsEscape(I)I

    move-result v3

    .line 3797
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v0}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    .line 3798
    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3799
    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3800
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3802
    const-string v0, "NAME="

    .line 3803
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;->Name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3804
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3806
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "PATH="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3807
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;->Path:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3808
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "DATE="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3811
    iget-object v5, p1, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;->Date:Ljava/lang/Long;

    if-eqz v5, :cond_c1

    .line 3812
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;->Date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3814
    :cond_c1
    invoke-static {v4, v0, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemAppendTagEncodeData(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static VCalATTACHSMEMO(ILcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3820
    .line 3823
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v0}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    .line 3824
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3830
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3832
    return-object v0
.end method

.method public static VCalAllday(II)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2432
    .line 2435
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v0}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    .line 2436
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2438
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1c

    .line 2439
    const-string v1, "SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2442
    :goto_15
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2443
    return-object v0

    .line 2441
    :cond_1c
    const-string v1, "UNSET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public static VCalBegin(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 2363
    .line 2365
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v2, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v1, v2}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":VCALENDAR\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VERSION:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2367
    return-object v0
.end method

.method public static VCalDATE(ILandroid/text/format/Time;I)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2416
    .line 2419
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v0}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    .line 2420
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2424
    invoke-static {p1, p2}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2425
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2427
    return-object v0
.end method

.method public static VCalENUM(II)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2464
    .line 2474
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v0}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    .line 2477
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2480
    sget-object v1, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p1, v1}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2481
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2483
    return-object v0
.end method

.method public static VCalEnd()Ljava/lang/String;
    .registers 1

    .prologue
    .line 2372
    const-string v0, "END:VCALENDAR\r\n"

    return-object v0
.end method

.method public static VCalGetALARM(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 3560
    move-object v0, v1

    .line 3565
    check-cast v0, [Ljava/lang/String;

    .line 3567
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v4

    .line 3568
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v0

    .line 3569
    if-nez v0, :cond_19

    .line 3571
    iget v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v0

    .line 3574
    :cond_19
    new-instance v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    invoke-direct {v3}, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;-><init>()V

    .line 3576
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3622
    :cond_26
    :goto_26
    return-object v1

    .line 3579
    :cond_27
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    .line 3581
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    .line 3582
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3584
    const/4 v2, 0x0

    :goto_32
    array-length v6, v5

    if-lt v2, v6, :cond_4d

    .line 3613
    iget-object v0, v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    if-nez v0, :cond_49

    iget-object v0, v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    if-nez v0, :cond_49

    iget v0, v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->nRepeatCount:I

    if-nez v0, :cond_49

    iget-object v0, v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->pString:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 3615
    :cond_49
    iput v8, v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->bUsed:I

    move-object v1, v3

    goto :goto_26

    .line 3587
    :cond_4d
    aget-object v6, v5, v2

    invoke-static {v6}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_58

    .line 3589
    packed-switch v2, :pswitch_data_8a

    .line 3584
    :cond_58
    :goto_58
    :pswitch_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 3592
    :pswitch_5b
    aget-object v6, v5, v2

    invoke-static {v6}, Lcom/wssnps/base/smlvItemApi;->VItemStringTimeToVItemTime(Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v6

    iput-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    .line 3593
    iget-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    invoke-static {v6}, Lcom/wssnps/base/smlvItemApi;->isValidDateTime(Landroid/text/format/Time;)Z

    move-result v6

    if-nez v6, :cond_58

    .line 3595
    iput-object v1, v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    goto :goto_26

    .line 3604
    :pswitch_6e
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->nRepeatCount:I

    goto :goto_58

    .line 3607
    :pswitch_7b
    aget-object v6, v5, v2

    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7, v4, v0, v8}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->pString:Ljava/lang/String;

    goto :goto_58

    .line 3589
    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_58
        :pswitch_6e
        :pswitch_7b
    .end packed-switch
.end method

.method public static VCalGetATTACHIMAGE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlVItemTag$VitemHash;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v7, 0x5

    .line 3718
    new-instance v3, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;

    invoke-direct {v3}, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;-><init>()V

    move-object v0, v1

    .line 3719
    check-cast v0, [Ljava/lang/String;

    .line 3727
    if-nez p0, :cond_e

    .line 3770
    :goto_d
    return-object v1

    .line 3732
    :cond_e
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v0

    .line 3733
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v1

    .line 3734
    iget v4, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->smlGetIsEscape(I)I

    move-result v4

    .line 3735
    if-nez v1, :cond_28

    .line 3737
    iget v1, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v1

    .line 3740
    :cond_28
    const/4 v5, 0x2

    if-ne v0, v5, :cond_3a

    .line 3742
    sget-object v5, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    if-ne p1, v5, :cond_3a

    .line 3744
    iget v5, p0, Lcom/wssnps/base/smlVItemItem;->nTagNo:I

    iget-object v6, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {v5, v6}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v5

    if-ne v5, v2, :cond_3a

    move v0, v2

    .line 3751
    :cond_3a
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v5, v0, v1, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v0

    .line 3753
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3755
    if-eqz v3, :cond_52

    .line 3757
    const/4 v0, 0x0

    :goto_4f
    array-length v2, v1

    if-lt v0, v2, :cond_54

    :cond_52
    move-object v1, v3

    .line 3770
    goto :goto_d

    .line 3759
    :cond_54
    aget-object v2, v1, v0

    const-string v4, "NAME="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 3760
    aget-object v2, v1, v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;->Name:Ljava/lang/String;

    .line 3761
    :cond_66
    aget-object v2, v1, v0

    const-string v4, "PATH="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 3762
    aget-object v2, v1, v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;->Path:Ljava/lang/String;

    .line 3763
    :cond_78
    aget-object v2, v1, v0

    const-string v4, "DATE="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 3765
    aget-object v2, v1, v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 3766
    aget-object v2, v1, v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;->Date:Ljava/lang/Long;

    .line 3757
    :cond_9e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f
.end method

.method public static VCalGetATTACHSMEMO(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;
    .registers 3
    .parameter "item"

    .prologue
    .line 3775
    new-instance v0, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;

    invoke-direct {v0}, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;-><init>()V

    .line 3776
    .local v0, Semo:Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;
    if-eqz v0, :cond_f

    .line 3778
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;->id:I

    .line 3780
    :cond_f
    return-object v0
.end method

.method public static VCalGetATTENDEE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/util/ArrayList;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wssnps/base/smlVItemItem;",
            "Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3648
    .line 3649
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 3651
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3653
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    .line 3654
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3656
    const/4 v0, 0x0

    :goto_11
    array-length v3, v2

    if-lt v0, v3, :cond_15

    .line 3676
    return-object v1

    .line 3658
    :cond_15
    new-instance v3, Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;

    invoke-direct {v3}, Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;-><init>()V

    .line 3659
    aget-object v4, v2, v0

    if-eqz v4, :cond_6b

    .line 3662
    aget-object v4, v2, v0

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 3664
    aget-object v4, v2, v0

    aget-object v5, v2, v0

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-object v6, v2, v0

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;->AttendeeName:Ljava/lang/String;

    .line 3667
    :cond_44
    aget-object v4, v2, v0

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 3669
    aget-object v4, v2, v0

    aget-object v5, v2, v0

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-object v6, v2, v0

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;->AttendeeEmail:Ljava/lang/String;

    .line 3672
    :cond_68
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3656
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public static VCalGetDATE(Lcom/wssnps/base/smlVItemItem;)Landroid/text/format/Time;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2968
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2969
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 2975
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_1d
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2982
    :cond_27
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 2983
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 2989
    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 3009
    :goto_37
    return-object v1

    .line 2992
    :cond_38
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 2994
    const-string v2, "GMT"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 2996
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 2998
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 2999
    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    goto :goto_37

    .line 3003
    :cond_56
    const/4 v0, 0x1

    const-string v2, "[VCalGetDATE]!!!Warning!!! There is no VCalGetDATE \n"

    invoke-static {v0, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_37
.end method

.method public static VCalGetENUM(Lcom/wssnps/base/smlVItemItem;)I
    .registers 3
    .parameter

    .prologue
    .line 3480
    .line 3482
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3484
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    sget-object v1, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v0, v1}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagEnum(Ljava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)I

    move-result v0

    .line 3492
    :goto_10
    return v0

    .line 3488
    :cond_11
    const/4 v0, 0x1

    const-string v1, "[VCalGetENUM]!!!Warning!!! There is no ENUM \n"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3489
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public static VCalGetPRIORITY(Lcom/wssnps/base/smlVItemItem;)I
    .registers 3
    .parameter "item"

    .prologue
    .line 3541
    const/4 v0, 0x0

    .line 3543
    .local v0, nPriority:I
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 3545
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3547
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1a

    const/4 v1, 0x3

    if-le v0, v1, :cond_1a

    .line 3549
    const/4 v0, -0x1

    .line 3555
    :cond_1a
    :goto_1a
    return v0

    .line 3553
    :cond_1b
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method public static VCalGetRRULE(Lcom/wssnps/base/smlVItemItem;Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3014
    const/4 v1, 0x0

    .line 3016
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 3017
    const/4 v0, 0x0

    .line 3019
    const/4 v3, 0x0

    .line 3021
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 3023
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3024
    const/4 v1, 0x0

    .line 3431
    :cond_14
    :goto_14
    return-object v1

    .line 3026
    :cond_15
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    .line 3028
    invoke-static {p1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 3037
    iget-object v0, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 3047
    invoke-virtual {v4, p1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 3048
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 3049
    invoke-virtual {v0, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 3051
    iget v7, v4, Landroid/text/format/Time;->monthDay:I

    .line 3052
    int-to-long v8, v0

    add-long/2addr v5, v8

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 3054
    iget v0, v4, Landroid/text/format/Time;->monthDay:I

    .line 3055
    if-eq v7, v0, :cond_b6

    .line 3056
    const/4 v0, 0x1

    .line 3068
    :cond_3b
    :goto_3b
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3070
    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_126

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x44

    if-eq v2, v6, :cond_62

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x64

    if-ne v2, v6, :cond_126

    .line 3072
    :cond_62
    const-string v0, "FREQ=DAILY;WKST=SU"

    .line 3074
    const/4 v1, 0x0

    aget-object v1, v5, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_a4

    .line 3076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";INTERVAL="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v5, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3079
    :cond_a4
    const/4 v1, 0x1

    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_a8
    array-length v2, v5

    if-ge v0, v2, :cond_14

    .line 3081
    aget-object v2, v5, v0

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 3079
    :cond_b3
    :goto_b3
    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    .line 3058
    :cond_b6
    const/4 v0, 0x0

    goto :goto_3b

    .line 3084
    :cond_b8
    aget-object v2, v5, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_f6

    aget-object v2, v5, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_f6

    .line 3089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";UNTIL="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v5, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b3

    .line 3092
    :cond_f6
    aget-object v2, v5, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_b3

    .line 3094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";COUNT="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v5, v0

    const/4 v3, 0x1

    aget-object v4, v5, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b3

    .line 3098
    :cond_126
    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29a

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x57

    if-eq v2, v6, :cond_147

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x77

    if-ne v2, v6, :cond_29a

    .line 3100
    :cond_147
    const-string v1, "FREQ=WEEKLY;WKST=SU"

    .line 3101
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_172

    .line 3103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";BYDAY=MO,TU,WE,TH,FR"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3110
    :cond_168
    :goto_168
    const/4 v2, 0x1

    move v10, v2

    move-object v2, v1

    move v1, v10

    :goto_16c
    array-length v3, v5

    if-lt v1, v3, :cond_1b3

    move-object v1, v2

    goto/16 :goto_14

    .line 3106
    :cond_172
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_168

    .line 3108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";INTERVAL="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_168

    .line 3112
    :cond_1b3
    aget-object v3, v5, v1

    invoke-static {v3}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 3110
    :cond_1bb
    :goto_1bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_16c

    .line 3115
    :cond_1be
    aget-object v3, v5, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1fc

    aget-object v3, v5, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1fc

    .line 3120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";UNTIL="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1bb

    .line 3123
    :cond_1fc
    aget-object v3, v5, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_22c

    .line 3125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";COUNT="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v5, v1

    const/4 v4, 0x1

    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1bb

    .line 3129
    :cond_22c
    aget-object v3, v5, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_1bb

    .line 3131
    const-string v3, "BYDAY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_271

    .line 3132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";BYDAY="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3136
    :goto_254
    if-eqz v0, :cond_285

    if-nez p2, :cond_285

    .line 3137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v1

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VCalGetWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1bb

    .line 3134
    :cond_271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_254

    .line 3139
    :cond_285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1bb

    .line 3144
    :cond_29a
    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_673

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x4d

    if-eq v2, v6, :cond_2bb

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x6d

    if-ne v2, v6, :cond_673

    .line 3146
    :cond_2bb
    const-string v1, "FREQ=MONTHLY;WKST=SU"

    .line 3147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 3149
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x50

    if-eq v2, v7, :cond_2d9

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x70

    if-ne v2, v7, :cond_4fe

    .line 3151
    :cond_2d9
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v7, 0x2

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v7, 0x2

    if-lt v2, v7, :cond_319

    .line 3153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";INTERVAL="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v7, 0x2

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3156
    :cond_319
    const/4 v2, 0x1

    move v10, v2

    move-object v2, v1

    move-object v1, v3

    move v3, v10

    :goto_31e
    array-length v7, v5

    if-lt v3, v7, :cond_324

    move-object v1, v2

    goto/16 :goto_14

    .line 3158
    :cond_324
    aget-object v7, v5, v3

    invoke-static {v7}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32f

    .line 3156
    :cond_32c
    :goto_32c
    add-int/lit8 v3, v3, 0x1

    goto :goto_31e

    .line 3161
    :cond_32f
    aget-object v7, v5, v3

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_343

    aget-object v7, v5, v3

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_387

    .line 3164
    :cond_343
    if-eqz v0, :cond_366

    if-nez p2, :cond_366

    .line 3166
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3167
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v7, 0x5

    if-lt v1, v7, :cond_35b

    .line 3170
    const-string v1, "-1"

    goto :goto_32c

    .line 3175
    :cond_35b
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_32c

    .line 3180
    :cond_366
    aget-object v1, v5, v3

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v7, 0x5

    if-lt v1, v7, :cond_37b

    .line 3183
    const-string v1, "-1"

    goto :goto_32c

    .line 3188
    :cond_37b
    aget-object v1, v5, v3

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_32c

    .line 3192
    :cond_387
    aget-object v7, v5, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_3b8

    .line 3194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";COUNT="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v7, v5, v3

    const/4 v8, 0x1

    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_32c

    .line 3196
    :cond_3b8
    aget-object v7, v5, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_4b4

    .line 3198
    array-length v7, v5

    const/4 v8, 0x6

    if-lt v7, v8, :cond_456

    .line 3200
    const-string v7, "BYSETPOS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3f5

    .line 3202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";BYSETPOS="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3206
    :cond_3f5
    const-string v7, "BYDAY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_42d

    .line 3207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";BYDAY="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3211
    :goto_410
    if-eqz v0, :cond_441

    if-nez p2, :cond_441

    .line 3212
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v3

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VCalGetWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_32c

    .line 3209
    :cond_42d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_410

    .line 3214
    :cond_441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v3

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_32c

    .line 3218
    :cond_456
    const-string v7, "BYDAY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_471

    .line 3219
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";BYDAY="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3221
    :cond_471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3223
    if-eqz v0, :cond_49f

    if-nez p2, :cond_49f

    .line 3224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v3

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VCalGetWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_32c

    .line 3226
    :cond_49f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v3

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_32c

    .line 3230
    :cond_4b4
    aget-object v7, v5, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_32c

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-lt v7, v8, :cond_32c

    .line 3232
    aget-object v7, v5, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x23

    if-eq v7, v8, :cond_32c

    .line 3237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";UNTIL="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v3

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_32c

    .line 3243
    :cond_4fe
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_516

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_14

    .line 3245
    :cond_516
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x2

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_556

    .line 3247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";INTERVAL="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x2

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3250
    :cond_556
    const/4 v2, 0x1

    move v10, v2

    move-object v2, v1

    move v1, v10

    :goto_55a
    array-length v3, v5

    if-lt v1, v3, :cond_560

    move-object v1, v2

    goto/16 :goto_14

    .line 3252
    :cond_560
    aget-object v3, v5, v1

    invoke-static {v3}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56b

    .line 3250
    :cond_568
    :goto_568
    add-int/lit8 v1, v1, 0x1

    goto :goto_55a

    .line 3255
    :cond_56b
    aget-object v3, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_642

    .line 3257
    aget-object v3, v5, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x8

    if-lt v3, v6, :cond_5a9

    .line 3262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";UNTIL="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_568

    .line 3267
    :cond_5a9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";BYMONTHDAY="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3268
    if-eqz v0, :cond_62d

    .line 3270
    aget-object v2, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3271
    add-int/lit8 v2, v2, 0x1

    .line 3273
    iget v6, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5ed

    .line 3275
    const/16 v6, 0x1c

    if-le v2, v6, :cond_5d6

    .line 3276
    const/4 v2, 0x1

    .line 3290
    :cond_5d6
    :goto_5d6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_568

    .line 3278
    :cond_5ed
    iget v6, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_621

    iget v6, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_621

    iget v6, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_621

    iget v6, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x7

    if-eq v6, v7, :cond_621

    .line 3279
    iget v6, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x8

    if-eq v6, v7, :cond_621

    iget v6, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0xa

    if-eq v6, v7, :cond_621

    iget v6, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0xc

    if-ne v6, v7, :cond_627

    .line 3281
    :cond_621
    const/16 v6, 0x1f

    if-le v2, v6, :cond_5d6

    .line 3282
    const/4 v2, 0x1

    goto :goto_5d6

    .line 3286
    :cond_627
    const/16 v6, 0x1e

    if-le v2, v6, :cond_5d6

    .line 3287
    const/4 v2, 0x1

    goto :goto_5d6

    .line 3293
    :cond_62d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v5, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_568

    .line 3296
    :cond_642
    aget-object v3, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x23

    if-ne v3, v6, :cond_568

    .line 3298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";COUNT="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v5, v1

    const/4 v6, 0x1

    aget-object v7, v5, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_568

    .line 3304
    :cond_673
    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x59

    if-eq v2, v3, :cond_694

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x79

    if-ne v2, v3, :cond_14

    .line 3306
    :cond_694
    const-string v1, "FREQ=YEARLY;WKST=SU"

    .line 3309
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_6ae

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_7b2

    .line 3311
    :cond_6ae
    const/4 v0, 0x0

    aget-object v0, v5, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_a56

    .line 3313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";INTERVAL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v5, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3316
    :goto_6ee
    const/4 v1, 0x1

    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_6f2
    array-length v2, v5

    if-ge v0, v2, :cond_14

    .line 3318
    aget-object v2, v5, v0

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_700

    .line 3316
    :cond_6fd
    :goto_6fd
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f2

    .line 3321
    :cond_700
    aget-object v2, v5, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_781

    .line 3323
    aget-object v2, v5, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_73e

    .line 3325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";UNTIL="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v5, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6fd

    .line 3330
    :cond_73e
    const-string v2, "BYMONTH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_76d

    .line 3331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";BYMONTH="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3334
    :goto_759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v5, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6fd

    .line 3333
    :cond_76d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_759

    .line 3337
    :cond_781
    aget-object v2, v5, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_6fd

    .line 3339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";COUNT="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v5, v0

    const/4 v3, 0x1

    aget-object v4, v5, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6fd

    .line 3343
    :cond_7b2
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_7ca

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_14

    .line 3345
    :cond_7ca
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x2

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_80a

    .line 3347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";INTERVAL="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x2

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3350
    :cond_80a
    const/4 v2, 0x1

    move v10, v2

    move-object v2, v1

    move v1, v10

    :goto_80e
    array-length v3, v5

    if-lt v1, v3, :cond_814

    move-object v1, v2

    goto/16 :goto_14

    .line 3352
    :cond_814
    aget-object v3, v5, v1

    invoke-static {v3}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_81f

    .line 3350
    :cond_81c
    :goto_81c
    add-int/lit8 v1, v1, 0x1

    goto :goto_80e

    .line 3355
    :cond_81f
    aget-object v3, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_878

    aget-object v3, v5, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x2

    if-gt v3, v6, :cond_878

    .line 3357
    const-string v3, "BYMONTH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_864

    .line 3358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";BYMONTH="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3361
    :goto_850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_81c

    .line 3360
    :cond_864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_850

    .line 3363
    :cond_878
    aget-object v3, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x23

    if-ne v3, v6, :cond_8a9

    .line 3365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";COUNT="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v5, v1

    const/4 v6, 0x1

    aget-object v7, v5, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_81c

    .line 3367
    :cond_8a9
    aget-object v3, v5, v1

    invoke-static {v3}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_81c

    aget-object v3, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x4d

    if-eq v3, v6, :cond_8c7

    aget-object v3, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x6d

    if-ne v3, v6, :cond_81c

    .line 3369
    :cond_8c7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 3371
    aget-object v6, v5, v1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x50

    if-eq v6, v7, :cond_8e1

    aget-object v6, v5, v1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x70

    if-ne v6, v7, :cond_81c

    .line 3373
    :cond_8e1
    add-int/lit8 v1, v1, 0x1

    :goto_8e3
    array-length v6, v5

    if-ge v1, v6, :cond_81c

    .line 3375
    aget-object v6, v5, v1

    invoke-static {v6}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8f1

    .line 3373
    :cond_8ee
    :goto_8ee
    add-int/lit8 v1, v1, 0x1

    goto :goto_8e3

    .line 3378
    :cond_8f1
    aget-object v6, v5, v1

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_905

    aget-object v6, v5, v1

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_99e

    .line 3380
    :cond_905
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";BYSETPOS="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3381
    if-eqz v0, :cond_95d

    if-nez p2, :cond_95d

    .line 3383
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3384
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    if-lt v6, v7, :cond_941

    .line 3386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-1"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8ee

    .line 3390
    :cond_941
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8ee

    .line 3394
    :cond_95d
    aget-object v6, v5, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x5

    if-lt v6, v7, :cond_984

    .line 3396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-1"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8ee

    .line 3400
    :cond_984
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v1

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8ee

    .line 3404
    :cond_99e
    aget-object v6, v5, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_a0c

    .line 3406
    const-string v6, "BYDAY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e3

    .line 3407
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";BYDAY="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3411
    :goto_9c6
    if-eqz v0, :cond_9f7

    if-nez p2, :cond_9f7

    .line 3412
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v1

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VCalGetWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8ee

    .line 3409
    :cond_9e3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9c6

    .line 3414
    :cond_9f7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8ee

    .line 3416
    :cond_a0c
    aget-object v6, v5, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_8ee

    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-lt v6, v7, :cond_8ee

    .line 3418
    aget-object v6, v5, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_8ee

    .line 3420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";UNTIL="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3421
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v5, v1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8ee

    :cond_a56
    move-object v0, v1

    goto/16 :goto_6ee
.end method

.method public static VCalGetSTRING(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 3
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 2963
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v0, p1}, Lcom/wssnps/base/smlvItemApi;->VItemGetString(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlVItemTag$VitemHash;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static VCalGetUID(Lcom/wssnps/base/smlVItemItem;)Ljava/lang/String;
    .registers 3
    .parameter "item"

    .prologue
    .line 3682
    const/4 v0, 0x0

    .line 3684
    .local v0, szUID:Ljava/lang/String;
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3685
    const/4 v1, 0x0

    .line 3691
    :goto_a
    return-object v1

    .line 3687
    :cond_b
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    move-object v1, v0

    .line 3691
    goto :goto_a
.end method

.method public static VCalGetWeekDay(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 3458
    const/4 v0, 0x0

    .line 3460
    const-string v1, "SU"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 3461
    const-string v0, "MO"

    .line 3475
    :cond_b
    :goto_b
    return-object v0

    .line 3462
    :cond_c
    const-string v1, "MO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_17

    .line 3463
    const-string v0, "TU"

    goto :goto_b

    .line 3464
    :cond_17
    const-string v1, "TU"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_22

    .line 3465
    const-string v0, "WE"

    goto :goto_b

    .line 3466
    :cond_22
    const-string v1, "WE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2d

    .line 3467
    const-string v0, "TH"

    goto :goto_b

    .line 3468
    :cond_2d
    const-string v1, "TH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_38

    .line 3469
    const-string v0, "FR"

    goto :goto_b

    .line 3470
    :cond_38
    const-string v1, "FR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_43

    .line 3471
    const-string v0, "SA"

    goto :goto_b

    .line 3472
    :cond_43
    const-string v1, "SA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    .line 3473
    const-string v0, "SU"

    goto :goto_b
.end method

.method public static VCalGetXALLDAY(Lcom/wssnps/base/smlVItemItem;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3497
    .line 3499
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 3501
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v3, "SET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_15

    .line 3514
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 3506
    goto :goto_14

    .line 3511
    :cond_17
    const-string v2, "[VCalGetENUM]!!!Warning!!! There is no ENUM \n"

    invoke-static {v0, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    goto :goto_14
.end method

.method public static VCalGetXEXTYPE(Lcom/wssnps/base/smlVItemItem;)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3697
    .line 3699
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3713
    :cond_9
    :goto_9
    return v0

    .line 3703
    :cond_a
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    .line 3704
    const/4 v0, 0x1

    goto :goto_9

    .line 3705
    :cond_16
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 3706
    const/4 v0, 0x2

    goto :goto_9
.end method

.method public static VCalGetXLUNAR(Lcom/wssnps/base/smlVItemItem;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3519
    .line 3521
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 3523
    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v3, "SET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_15

    .line 3536
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 3528
    goto :goto_14

    .line 3533
    :cond_17
    const-string v2, "[VCalGetENUM]!!!Warning!!! There is no ENUM \n"

    invoke-static {v0, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    goto :goto_14
.end method

.method public static VCalLunar(II)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2448
    .line 2451
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v0}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    .line 2452
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2454
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1c

    .line 2455
    const-string v1, "SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2458
    :goto_15
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2459
    return-object v0

    .line 2457
    :cond_1c
    const-string v1, "UNSET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public static VCalPRIORITY(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 2488
    .line 2491
    const/16 v0, 0xa

    sget-object v1, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v0, v1}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    .line 2492
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2495
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2496
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2498
    return-object v0
.end method

.method public static VCalRRULE(Ljava/lang/String;Landroid/text/format/Time;ILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2503
    .line 2505
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    .line 2507
    const/4 v6, 0x0

    .line 2508
    const/4 v5, 0x0

    .line 2509
    const-string v4, ""

    .line 2511
    invoke-static/range {p3 .. p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 2512
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 2513
    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 2514
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 2515
    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/format/Time;->monthDay:I

    .line 2516
    int-to-long v7, v1

    add-long/2addr v7, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 2517
    move-object/from16 v0, p1

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 2518
    if-eq v9, v1, :cond_92

    .line 2520
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 2521
    const/4 v1, 0x1

    .line 2526
    :goto_32
    const/4 v2, 0x5

    sget-object v3, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    .line 2527
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2529
    const-string v3, ";"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2547
    const-string v3, "DAILY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_94

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_94

    .line 2548
    const-string v3, "D1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2584
    :cond_61
    :goto_61
    const/4 v3, 0x0

    move v15, v3

    move-object v3, v5

    move-object v5, v2

    move-object v2, v4

    move-object v4, v6

    move v6, v15

    :goto_68
    array-length v7, v10

    if-lt v6, v7, :cond_336

    .line 2776
    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 2778
    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2779
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2781
    :cond_7b
    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_864

    .line 2783
    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2784
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2795
    :goto_8b
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2798
    return-object v1

    .line 2524
    :cond_92
    const/4 v1, 0x0

    goto :goto_32

    .line 2549
    :cond_94
    const-string v3, "DAILY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_af

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 2550
    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_61

    .line 2551
    :cond_af
    const-string v3, "WEEKLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d4

    const-string v3, "BYDAY=MO,TU,WE,TH,FR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d4

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d4

    .line 2552
    const-string v3, "W1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_61

    .line 2553
    :cond_d4
    const-string v3, "WEEKLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_fa

    const-string v3, "BYDAY=MO,TU,WE,TH,FR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_fa

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 2554
    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2555
    :cond_fa
    const-string v3, "WEEKLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12a

    const-string v3, "BYDAY=MO,TU,WE,TH,FR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12a

    const-string v3, ",SA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12a

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12a

    .line 2556
    const-string v3, "W0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2557
    :cond_12a
    const-string v3, "WEEKLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15a

    const-string v3, "BYDAY=MO,TU,WE,TH,FR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15a

    const-string v3, ",SA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15a

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15a

    .line 2558
    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2559
    :cond_15a
    const-string v3, "WEEKLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18a

    const-string v3, "BYDAY=MO,TU,WE,TH,FR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18a

    const-string v3, ",SA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18a

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18a

    .line 2560
    const-string v3, "W1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2561
    :cond_18a
    const-string v3, "WEEKLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    const-string v3, "BYDAY=MO,TU,WE,TH,FR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    const-string v3, ",SA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 2562
    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2563
    :cond_1ba
    const-string v3, "MONTHLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e0

    const-string v3, "BYDAY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e0

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e0

    .line 2564
    const-string v3, "MP1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2565
    :cond_1e0
    const-string v3, "MONTHLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_206

    const-string v3, "BYDAY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_206

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_206

    .line 2566
    const-string v3, "MP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2567
    :cond_206
    const-string v3, "MONTHLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22c

    const-string v3, "BYMONTHDAY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22c

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22c

    .line 2568
    const-string v3, "MD1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2569
    :cond_22c
    const-string v3, "MONTHLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_252

    const-string v3, "BYMONTHDAY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_252

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_252

    .line 2570
    const-string v3, "MD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2571
    :cond_252
    const-string v3, "YEARLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_282

    const-string v3, "BYMONTH"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_282

    const-string v3, "BYMONTHDAY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_282

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_282

    .line 2572
    const-string v3, "YD1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2573
    :cond_282
    const-string v3, "YEARLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b2

    const-string v3, "BYMONTH"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b2

    const-string v3, "BYMONTHDAY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b2

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b2

    .line 2574
    const-string v3, "YD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2575
    :cond_2b2
    const-string v3, "YEARLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d8

    const-string v3, "BYMONTH"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d8

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d8

    .line 2576
    const-string v3, "YM1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2577
    :cond_2d8
    const-string v3, "YEARLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2fe

    const-string v3, "BYMONTH"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2fe

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2fe

    .line 2578
    const-string v3, "YM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2579
    :cond_2fe
    const-string v3, "YEARLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31a

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31a

    .line 2580
    const-string v3, "YD1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2581
    :cond_31a
    const-string v3, "YEARLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    const-string v3, "INTERVAL"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 2582
    const-string v3, "YD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_61

    .line 2586
    :cond_336
    aget-object v7, v10, v6

    const-string v8, "WKST="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_344

    .line 2584
    :cond_340
    :goto_340
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_68

    .line 2591
    :cond_344
    aget-object v7, v10, v6

    const-string v8, "INTERVAL="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_37b

    .line 2593
    aget-object v7, v10, v6

    const/16 v8, 0x9

    aget-object v11, v10, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2595
    const-string v7, "WEEKLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_340

    const-string v7, "BYDAY=MO,TU,WE,TH,FR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_340

    .line 2596
    const-string v7, " MO TU WE TH FR"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_340

    .line 2598
    :cond_37b
    const-string v7, "MONTHLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_38f

    const-string v7, "YEARLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3fb

    :cond_38f
    aget-object v7, v10, v6

    const-string v8, "BYSETPOS="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3fb

    .line 2600
    aget-object v7, v10, v6

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_3c7

    .line 2602
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2603
    aget-object v7, v10, v6

    const/16 v8, 0x9

    aget-object v11, v10, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2604
    const-string v7, "+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_340

    .line 2608
    :cond_3c7
    aget-object v7, v10, v6

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_340

    .line 2610
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2611
    aget-object v7, v10, v6

    const/16 v8, 0xa

    aget-object v11, v10, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2612
    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_340

    .line 2616
    :cond_3fb
    const-string v7, "MONTHLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_40f

    const-string v7, "YEARLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5c6

    :cond_40f
    aget-object v7, v10, v6

    const-string v8, "BYDAY="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5c6

    .line 2618
    aget-object v7, v10, v6

    const/4 v8, 0x6

    aget-object v11, v10, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2619
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2620
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 2622
    const/4 v7, 0x0

    :goto_431
    array-length v8, v11

    if-ge v7, v8, :cond_340

    .line 2624
    if-nez v7, :cond_5b8

    .line 2626
    aget-object v8, v11, v7

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_4d9

    .line 2628
    if-eqz v1, :cond_497

    .line 2630
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2631
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v8, 0x8

    invoke-virtual {v12, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "+ "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2632
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v7

    const/4 v13, 0x1

    aget-object v14, v11, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VCalWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2622
    :goto_492
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move-object v2, v8

    goto :goto_431

    .line 2636
    :cond_497
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v8, v11, v7

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "+ "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2637
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v7

    const/4 v13, 0x1

    aget-object v14, v11, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_492

    .line 2642
    :cond_4d9
    aget-object v8, v11, v7

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    const-string v13, "-"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_580

    .line 2644
    if-eqz v1, :cond_543

    .line 2646
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2648
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v8, 0x5

    if-lt v2, v8, :cond_525

    .line 2649
    const-string v2, "1- "

    .line 2653
    :goto_503
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v7

    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VCalWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_492

    .line 2651
    :cond_525
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v8, 0x8

    invoke-virtual {v12, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "+ "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_503

    .line 2657
    :cond_543
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v8, v11, v7

    const/4 v13, 0x1

    const/4 v14, 0x2

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "- "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2658
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v7

    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_492

    .line 2663
    :cond_580
    if-eqz v1, :cond_59f

    .line 2664
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VCalWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_492

    .line 2666
    :cond_59f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_492

    .line 2672
    :cond_5b8
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2673
    aget-object v8, v11, v7

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_492

    .line 2677
    :cond_5c6
    aget-object v7, v10, v6

    const-string v8, "BYDAY="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_787

    aget-object v7, v10, v6

    const-string v8, "BYDAY=MO,TU,WE,TH,FR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_787

    .line 2679
    aget-object v7, v10, v6

    const/4 v8, 0x6

    aget-object v11, v10, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2680
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2681
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 2683
    const/4 v7, 0x0

    :goto_5f2
    array-length v8, v11

    if-ge v7, v8, :cond_340

    .line 2685
    if-nez v7, :cond_779

    .line 2687
    aget-object v8, v11, v7

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_69a

    .line 2689
    if-eqz v1, :cond_658

    .line 2691
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2692
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v8, 0x8

    invoke-virtual {v12, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "+ "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2693
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v7

    const/4 v13, 0x1

    aget-object v14, v11, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VCalWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2683
    :goto_653
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move-object v2, v8

    goto :goto_5f2

    .line 2697
    :cond_658
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v8, v11, v7

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "+ "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2698
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v7

    const/4 v13, 0x1

    aget-object v14, v11, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_653

    .line 2703
    :cond_69a
    aget-object v8, v11, v7

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    const-string v13, "-"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_741

    .line 2705
    if-eqz v1, :cond_704

    .line 2707
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2709
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v8, 0x5

    if-lt v2, v8, :cond_6e6

    .line 2710
    const-string v2, "1- "

    .line 2714
    :goto_6c4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v7

    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VCalWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_653

    .line 2712
    :cond_6e6
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v8, 0x8

    invoke-virtual {v12, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "+ "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6c4

    .line 2718
    :cond_704
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v8, v11, v7

    const/4 v13, 0x1

    const/4 v14, 0x2

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "- "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2719
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v7

    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_653

    .line 2724
    :cond_741
    if-eqz v1, :cond_760

    .line 2725
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VCalWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_653

    .line 2727
    :cond_760
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_653

    .line 2733
    :cond_779
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2734
    aget-object v8, v11, v7

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_653

    .line 2746
    :cond_787
    const-string v7, "YEARLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7c5

    aget-object v7, v10, v6

    const-string v8, "BYMONTH="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7c5

    const-string v7, "BYMONTHDAY="

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7c5

    .line 2748
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2749
    aget-object v7, v10, v6

    const/16 v8, 0x8

    aget-object v11, v10, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2750
    const-string v7, " MP1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_340

    .line 2752
    :cond_7c5
    aget-object v7, v10, v6

    const-string v8, "BYMONTH="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7df

    .line 2754
    aget-object v2, v10, v6

    const/16 v7, 0x8

    aget-object v8, v10, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_340

    .line 2756
    :cond_7df
    aget-object v7, v10, v6

    const-string v8, "BYMONTHDAY="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_801

    .line 2758
    if-eqz v1, :cond_7f1

    .line 2759
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_340

    .line 2761
    :cond_7f1
    aget-object v2, v10, v6

    const/16 v7, 0xb

    aget-object v8, v10, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_340

    .line 2763
    :cond_801
    aget-object v7, v10, v6

    const-string v8, "UNTIL="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_84b

    .line 2765
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_83c

    aget-object v4, v10, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0xf

    if-ge v4, v7, :cond_83c

    .line 2766
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v7, v10, v6

    const/4 v8, 0x6

    aget-object v11, v10, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "T000000"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_340

    .line 2768
    :cond_83c
    aget-object v4, v10, v6

    const/4 v7, 0x6

    aget-object v8, v10, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_340

    .line 2770
    :cond_84b
    aget-object v7, v10, v6

    const-string v8, "COUNT="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_340

    .line 2772
    aget-object v3, v10, v6

    const/4 v7, 0x6

    aget-object v8, v10, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_340

    .line 2786
    :cond_864
    invoke-static {v3}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_876

    .line 2788
    const-string v1, " #"

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2789
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8b

    .line 2792
    :cond_876
    const-string v1, " #0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8b
.end method

.method public static VCalSTRING(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2397
    .line 2402
    iget-object v0, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {p0, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v0

    .line 2403
    iget-object v1, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {p0, v1}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v1

    .line 2404
    iget v2, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->smlGetIsEscape(I)I

    move-result v2

    .line 2406
    sget-object v3, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v3}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v3

    .line 2407
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2408
    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2409
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2411
    invoke-static {v3, p1, v0, v1, v2}, Lcom/wssnps/base/smlvItemApi;->VItemAppendTagEncodeData(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static VCalWeekDay(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 3436
    const/4 v0, 0x0

    .line 3438
    const-string v1, "SU"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 3439
    const-string v0, "SA"

    .line 3453
    :cond_b
    :goto_b
    return-object v0

    .line 3440
    :cond_c
    const-string v1, "MO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_17

    .line 3441
    const-string v0, "SU"

    goto :goto_b

    .line 3442
    :cond_17
    const-string v1, "TU"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_22

    .line 3443
    const-string v0, "MO"

    goto :goto_b

    .line 3444
    :cond_22
    const-string v1, "WE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2d

    .line 3445
    const-string v0, "TU"

    goto :goto_b

    .line 3446
    :cond_2d
    const-string v1, "TH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_38

    .line 3447
    const-string v0, "WE"

    goto :goto_b

    .line 3448
    :cond_38
    const-string v1, "FR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_43

    .line 3449
    const-string v0, "TH"

    goto :goto_b

    .line 3450
    :cond_43
    const-string v1, "SA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    .line 3451
    const-string v0, "FR"

    goto :goto_b
.end method

.method public static VCalXEXTYPE(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 2804
    .line 2807
    const/16 v0, 0x17

    sget-object v1, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v0, v1}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    .line 2808
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2811
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2812
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2814
    return-object v0
.end method

.method public static VCardADR(Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 796
    const-string v0, ""

    .line 797
    const-string v0, ""

    .line 803
    if-nez p0, :cond_a

    .line 804
    const/4 v0, 0x0

    .line 865
    :goto_9
    return-object v0

    .line 806
    :cond_a
    iget-object v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {v2, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v1

    .line 807
    iget-object v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {v2, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v2

    .line 808
    const/4 v3, 0x1

    .line 810
    const-string v0, "ADR"

    .line 811
    iget v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->type:I

    iget-object v5, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->ExCustomValue:Ljava/lang/String;

    sget-object v6, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v4, v5, v6}, Lcom/wssnps/base/smlvItemApi;->VCardEnumToTypeString(ILjava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 817
    if-eqz p0, :cond_51

    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 819
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    :cond_51
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    if-eqz p0, :cond_6b

    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 825
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 827
    :cond_6b
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    if-eqz p0, :cond_85

    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 831
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 833
    :cond_85
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    if-eqz p0, :cond_9f

    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9f

    .line 837
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    :cond_9f
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    if-eqz p0, :cond_b9

    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b9

    .line 843
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    :cond_b9
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    if-eqz p0, :cond_d3

    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d3

    .line 849
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    :cond_d3
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    if-eqz p0, :cond_ed

    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ed

    .line 855
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 857
    :cond_ed
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9
.end method

.method public static VCardANNIVERSARY(Lcom/wssnps/base/smlvCard$SMLDate_t;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 952
    const-string v0, ""

    .line 953
    const-string v0, ""

    .line 955
    const-string v0, "%04d%02d%02d"

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 956
    iget v1, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    if-ne v1, v4, :cond_62

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "L"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 962
    :cond_3f
    :goto_3f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X-ANNIVERSARY:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 965
    return-object v0

    .line 958
    :cond_62
    iget v1, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    if-ne v1, v5, :cond_7a

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 960
    :cond_7a
    iget v1, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    if-ne v1, v6, :cond_3f

    .line 961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "A"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method

.method public static VCardAccount(Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1161
    const-string v0, ""

    .line 1163
    const-string v0, "X-ACCOUNT:"

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1169
    return-object v0
.end method

.method public static VCardBDAY(Lcom/wssnps/base/smlvCard$SMLDate_t;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 934
    const-string v0, ""

    .line 935
    const-string v0, ""

    .line 937
    const-string v0, "%04d%02d%02d"

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 938
    iget v1, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    if-ne v1, v4, :cond_62

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "L"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 944
    :cond_3f
    :goto_3f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BDAY:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 947
    return-object v0

    .line 940
    :cond_62
    iget v1, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    if-ne v1, v5, :cond_7a

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 942
    :cond_7a
    iget v1, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    if-ne v1, v6, :cond_3f

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "A"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method

.method public static VCardBegin(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 559
    const-string v0, ""

    .line 561
    if-nez p0, :cond_6

    .line 562
    const/4 v0, 0x0

    .line 567
    :goto_5
    return-object v0

    .line 564
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v2, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v1, v2}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":VCARD\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    sget-object v3, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static VCardDirty(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1174
    const-string v0, ""

    .line 1176
    const-string v0, "X-DIRTY:"

    .line 1177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1180
    return-object v0
.end method

.method public static VCardEMAIL(Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 715
    const-string v0, ""

    .line 721
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 722
    const/4 v0, 0x0

    .line 737
    :goto_8
    return-object v0

    .line 724
    :cond_9
    iget-object v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {v2, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v0

    .line 725
    iget-object v1, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {v2, v1}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v1

    .line 726
    iget v2, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->smlGetIsEscape(I)I

    move-result v2

    .line 728
    const-string v3, "EMAIL"

    .line 729
    iget v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    iget-object v5, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    sget-object v6, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v4, v5, v6}, Lcom/wssnps/base/smlvItemApi;->VCardEnumToTypeString(ILjava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 730
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 731
    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 732
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 734
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1, v2}, Lcom/wssnps/base/smlvItemApi;->VItemAppendTagEncodeData(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static VCardEVENTCUSTOM(Lcom/wssnps/base/smlvCard$SMLDate_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 988
    const-string v0, ""

    .line 989
    const-string v0, ""

    .line 994
    const-string v0, "%04d%02d%02d"

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 995
    iget v1, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    if-ne v1, v4, :cond_86

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "L"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1001
    :cond_41
    :goto_41
    const-string v1, "X-EVENT"

    .line 1003
    iget-object v2, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {v7, v2}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    .line 1004
    iget-object v2, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {v7, v2}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    .line 1009
    iget v2, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->type:I

    iget-object v3, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->ExCustomValue:Ljava/lang/String;

    sget-object v4, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4}, Lcom/wssnps/base/smlvItemApi;->VCardEnumToTypeString(ILjava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1010
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    return-object v0

    .line 997
    :cond_86
    iget v1, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    if-ne v1, v5, :cond_9e

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 999
    :cond_9e
    iget v1, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    if-ne v1, v6, :cond_41

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "A"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41
.end method

.method public static VCardEVENTETC(Lcom/wssnps/base/smlvCard$SMLDate_t;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 970
    const-string v0, ""

    .line 971
    const-string v0, ""

    .line 973
    const-string v0, "%04d%02d%02d"

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 974
    iget v1, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    if-ne v1, v4, :cond_62

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "L"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 980
    :cond_3f
    :goto_3f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X-EVENT;X-ETC:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    return-object v0

    .line 976
    :cond_62
    iget v1, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    if-ne v1, v5, :cond_7a

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 978
    :cond_7a
    iget v1, p0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    if-ne v1, v6, :cond_3f

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "A"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method

.method public static VCardEnd()Ljava/lang/String;
    .registers 1

    .prologue
    .line 572
    const-string v0, "END:VCARD"

    return-object v0
.end method

.method public static VCardEnumToTypeString(ILjava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1196
    if-nez p0, :cond_6

    .line 1197
    const-string v0, ""

    .line 1232
    :goto_5
    return-object v0

    .line 1200
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1202
    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    move v2, v0

    .line 1206
    :goto_12
    iget-object v0, p2, Lcom/wssnps/base/smlVItemTag$VitemHash;->_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_1f

    .line 1230
    :goto_1a
    if-nez v2, :cond_6a

    .line 1231
    const-string v0, ""

    goto :goto_5

    .line 1208
    :cond_1f
    iget-object v0, p2, Lcom/wssnps/base/smlVItemTag$VitemHash;->_list:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1210
    const/high16 v4, 0x80

    and-int/2addr v4, p0

    if-eqz v4, :cond_43

    .line 1211
    const-string v0, "X-CUSTOM(CHARSET=UTF-8,ENCODING=QUOTED-PRINTABLE,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v4, 0x3

    invoke-static {p1, v0, v1, v4}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    add-int/lit8 v2, v2, 0x1

    .line 1215
    goto :goto_1a

    .line 1218
    :cond_43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, p0

    if-eqz v4, :cond_66

    .line 1220
    add-int/lit8 v2, v2, 0x1

    .line 1221
    const/4 v4, 0x1

    if-le v2, v4, :cond_54

    .line 1222
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1224
    :cond_54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/wssnps/base/smlVItemTag$VitemHash;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 1206
    :cond_66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 1232
    :cond_6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static VCardGROUPID(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1142
    const-string v0, ""

    .line 1143
    const-string v1, ""

    .line 1145
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1147
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_c
    add-int/lit8 v2, v3, -0x1

    if-lt v1, v2, :cond_50

    .line 1150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1152
    const-string v1, "X-GROUP:"

    .line 1153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1156
    return-object v0

    .line 1148
    :cond_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1147
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_c
.end method

.method public static VCardGetADR(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x29

    const/16 v3, 0x28

    const/4 v4, 0x0

    .line 1850
    new-instance v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;

    invoke-direct {v5}, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;-><init>()V

    .line 1857
    const/4 v0, 0x7

    new-array v6, v0, [Ljava/lang/String;

    .line 1859
    if-eqz v5, :cond_1d6

    .line 1861
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v7

    .line 1862
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v0

    .line 1863
    if-nez v0, :cond_23

    .line 1865
    iget v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v0

    .line 1867
    :cond_23
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "X-CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "(CHARSET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 1870
    const-string v1, "ADR;X-CUSTOM"

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->type:I

    .line 1871
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    iget-object v3, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1873
    const-string v2, ","

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1875
    const/4 v2, 0x2

    :try_start_63
    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/wssnps/base/smlQP;->decodeQP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->ExCustomValue:Ljava/lang/String;
    :try_end_6b
    .catch Lcom/wssnps/base/smlMimeException; {:try_start_63 .. :try_end_6b} :catch_b8

    .line 1895
    :goto_6b
    iget-object v8, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    .line 1896
    const-string v3, ""

    move v1, v4

    move v2, v4

    .line 1900
    :goto_71
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v1, v9, :cond_113

    move v1, v4

    .line 1918
    :goto_78
    array-length v2, v6

    if-lt v1, v2, :cond_15b

    .line 1951
    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 1952
    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d3

    .line 1954
    :cond_b3
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->isValid:Z

    move-object v0, v5

    .line 1961
    :goto_b7
    return-object v0

    .line 1876
    :catch_b8
    move-exception v1

    .line 1877
    invoke-virtual {v1}, Lcom/wssnps/base/smlMimeException;->printStackTrace()V

    goto :goto_6b

    .line 1882
    :cond_bd
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "X-CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f1

    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 1884
    const-string v1, "ADR;X-CUSTOM"

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->type:I

    .line 1885
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->ExCustomValue:Ljava/lang/String;

    goto/16 :goto_6b

    .line 1887
    :cond_f1
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "X-CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 1889
    const-string v1, "ADR;X-CUSTOM"

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->type:I

    .line 1890
    const-string v1, "custom"

    iput-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->ExCustomValue:Ljava/lang/String;

    goto/16 :goto_6b

    .line 1893
    :cond_109
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->type:I

    goto/16 :goto_6b

    .line 1902
    :cond_113
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_136

    .line 1904
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1900
    :goto_132
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_71

    .line 1906
    :cond_136
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_145

    .line 1908
    aput-object v3, v6, v2

    .line 1909
    const-string v3, ""

    .line 1910
    add-int/lit8 v2, v2, 0x1

    goto :goto_132

    .line 1914
    :cond_145
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_132

    .line 1922
    :cond_15b
    aget-object v2, v6, v1

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_166

    .line 1924
    packed-switch v1, :pswitch_data_1da

    .line 1918
    :cond_166
    :goto_166
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_78

    .line 1927
    :pswitch_16a
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    goto :goto_166

    .line 1930
    :pswitch_179
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    goto :goto_166

    .line 1933
    :pswitch_188
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    goto :goto_166

    .line 1936
    :pswitch_197
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    goto :goto_166

    .line 1939
    :pswitch_1a6
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    goto :goto_166

    .line 1942
    :pswitch_1b5
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    goto :goto_166

    .line 1945
    :pswitch_1c4
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    goto :goto_166

    .line 1958
    :cond_1d3
    const/4 v0, 0x0

    goto/16 :goto_b7

    :cond_1d6
    move-object v0, v5

    goto/16 :goto_b7

    .line 1924
    nop

    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_16a
        :pswitch_179
        :pswitch_188
        :pswitch_197
        :pswitch_1a6
        :pswitch_1b5
        :pswitch_1c4
    .end packed-switch
.end method

.method public static VCardGetANNIVERSARY(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SMLDate_t;
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1395
    new-instance v0, Lcom/wssnps/base/smlvCard$SMLDate_t;

    invoke-direct {v0}, Lcom/wssnps/base/smlvCard$SMLDate_t;-><init>()V

    .line 1396
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    if-eqz v1, :cond_d6

    .line 1398
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1400
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    .line 1401
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    .line 1402
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    .line 1403
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1404
    iput v5, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    .line 1432
    :goto_5a
    return-object v0

    .line 1405
    :cond_5b
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1406
    iput v6, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1407
    :cond_68
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1408
    iput v7, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1410
    :cond_75
    iput v4, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1414
    :cond_78
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    .line 1415
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    .line 1416
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    .line 1417
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 1418
    iput v5, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1419
    :cond_b9
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 1420
    iput v6, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1421
    :cond_c6
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1422
    iput v7, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1424
    :cond_d3
    iput v4, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1429
    :cond_d6
    const/4 v0, 0x0

    goto :goto_5a
.end method

.method public static VCardGetBDAY(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SMLDate_t;
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1353
    new-instance v0, Lcom/wssnps/base/smlvCard$SMLDate_t;

    invoke-direct {v0}, Lcom/wssnps/base/smlvCard$SMLDate_t;-><init>()V

    .line 1354
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    if-eqz v1, :cond_d6

    .line 1356
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1358
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    .line 1359
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    .line 1360
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    .line 1361
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1362
    iput v5, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    .line 1390
    :goto_5a
    return-object v0

    .line 1363
    :cond_5b
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1364
    iput v6, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1365
    :cond_68
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1366
    iput v7, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1368
    :cond_75
    iput v4, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1372
    :cond_78
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    .line 1373
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    .line 1374
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    .line 1375
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 1376
    iput v5, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1377
    :cond_b9
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 1378
    iput v6, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1379
    :cond_c6
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1380
    iput v7, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1382
    :cond_d3
    iput v4, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_5a

    .line 1387
    :cond_d6
    const/4 v0, 0x0

    goto :goto_5a
.end method

.method public static VCardGetEMAIL(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x29

    const/16 v6, 0x28

    .line 1694
    .line 1696
    const/4 v2, 0x1

    .line 1697
    new-instance v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v0}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1701
    if-eqz v0, :cond_72

    .line 1703
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v3

    .line 1704
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v4

    .line 1705
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "X-CUSTOM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "(CHARSET"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1708
    const-string v1, "EMAIL;X-CUSTOM"

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1710
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    iget-object v6, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1712
    const-string v5, ","

    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1714
    const/4 v5, 0x2

    :try_start_58
    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/wssnps/base/smlQP;->decodeQP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;
    :try_end_60
    .catch Lcom/wssnps/base/smlMimeException; {:try_start_58 .. :try_end_60} :catch_73

    .line 1735
    :goto_60
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v1, v5, v3, v4, v2}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1736
    iget-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-eqz v1, :cond_cb

    .line 1749
    :cond_72
    :goto_72
    return-object v0

    .line 1715
    :catch_73
    move-exception v1

    .line 1716
    invoke-virtual {v1}, Lcom/wssnps/base/smlMimeException;->printStackTrace()V

    goto :goto_60

    .line 1722
    :cond_78
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "X-CUSTOM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 1724
    const-string v1, "EMAIL;X-CUSTOM"

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1725
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    goto :goto_60

    .line 1727
    :cond_ab
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "X-CUSTOM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 1729
    const-string v1, "EMAIL;X-CUSTOM"

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1730
    const-string v1, "custom"

    iput-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    goto :goto_60

    .line 1733
    :cond_c2
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto :goto_60

    .line 1746
    :cond_cb
    const/4 v0, 0x0

    goto :goto_72
.end method

.method public static VCardGetEVENT(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SMLDate_t;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1437
    new-instance v1, Lcom/wssnps/base/smlvCard$SMLDate_t;

    invoke-direct {v1}, Lcom/wssnps/base/smlvCard$SMLDate_t;-><init>()V

    .line 1441
    if-eqz v1, :cond_bd

    .line 1443
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    if-eqz v0, :cond_6d

    .line 1445
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    .line 1446
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v0

    .line 1448
    if-nez v0, :cond_22

    .line 1450
    iget v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->smlGetDefaultCharset(I)I

    .line 1452
    :cond_22
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "X-CUSTOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "(CHARSET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 1455
    const-string v0, "X_EVENT;X-CUSTOM"

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->type:I

    .line 1456
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    iget-object v3, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1458
    const-string v2, ","

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1460
    const/4 v2, 0x2

    :try_start_65
    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/wssnps/base/smlQP;->decodeQP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->ExCustomValue:Ljava/lang/String;
    :try_end_6d
    .catch Lcom/wssnps/base/smlMimeException; {:try_start_65 .. :try_end_6d} :catch_be

    .line 1482
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    if-eqz v0, :cond_bd

    .line 1484
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 1486
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    .line 1487
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    .line 1488
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    .line 1489
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 1490
    iput v9, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    .line 1514
    :cond_bd
    :goto_bd
    return-object v1

    .line 1461
    :catch_be
    move-exception v0

    .line 1462
    invoke-virtual {v0}, Lcom/wssnps/base/smlMimeException;->printStackTrace()V

    goto :goto_6d

    .line 1467
    :cond_c3
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "X-CUSTOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 1469
    const-string v0, "X_EVENT;X-CUSTOM"

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->type:I

    .line 1470
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->ExCustomValue:Ljava/lang/String;

    goto/16 :goto_6d

    .line 1472
    :cond_fb
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "X-CUSTOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 1474
    const-string v0, "X_EVENT;X-CUSTOM"

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->type:I

    .line 1475
    const-string v0, "custom"

    iput-object v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->ExCustomValue:Ljava/lang/String;

    goto/16 :goto_6d

    .line 1478
    :cond_113
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->type:I

    goto/16 :goto_6d

    .line 1491
    :cond_11d
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 1492
    iput v6, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_bd

    .line 1493
    :cond_12a
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 1494
    iput v7, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_bd

    .line 1496
    :cond_137
    iput v5, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_bd

    .line 1500
    :cond_13a
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    .line 1501
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    .line 1502
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    .line 1503
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 1504
    iput v9, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto/16 :goto_bd

    .line 1505
    :cond_17c
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18a

    .line 1506
    iput v6, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto/16 :goto_bd

    .line 1507
    :cond_18a
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_198

    .line 1508
    iput v7, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto/16 :goto_bd

    .line 1510
    :cond_198
    iput v5, v1, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto/16 :goto_bd
.end method

.method public static VCardGetFN(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 3
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 1237
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v0, p1}, Lcom/wssnps/base/smlvItemApi;->VItemGetString(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlVItemTag$VitemHash;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static VCardGetGROUP(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;
    .registers 4
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 2252
    new-instance v0, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    invoke-direct {v0}, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;-><init>()V

    .line 2253
    .local v0, group_t:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;
    sget-object v1, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v1, p1}, Lcom/wssnps/base/smlvItemApi;->VItemGetString(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlVItemTag$VitemHash;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->GroupName:Ljava/lang/String;

    .line 2254
    return-object v0
.end method

.method public static VCardGetIM(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x29

    const/16 v6, 0x28

    .line 1793
    .line 1795
    const/4 v2, 0x1

    .line 1796
    new-instance v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v0}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1798
    if-eqz v0, :cond_73

    .line 1800
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v3

    .line 1801
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v4

    .line 1802
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "X-CUSTOM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "(CHARSET"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 1805
    const-string v1, "X-IM;X-CUSTOM"

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1806
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    iget-object v6, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1808
    const-string v5, ","

    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1810
    const/4 v5, 0x2

    :try_start_58
    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/wssnps/base/smlQP;->decodeQP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;
    :try_end_60
    .catch Lcom/wssnps/base/smlMimeException; {:try_start_58 .. :try_end_60} :catch_74

    .line 1837
    :goto_60
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v1, v5, v3, v4, v2}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1839
    iget-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-nez v1, :cond_73

    .line 1841
    const/4 v0, 0x0

    .line 1845
    :cond_73
    return-object v0

    .line 1811
    :catch_74
    move-exception v1

    .line 1812
    invoke-virtual {v1}, Lcom/wssnps/base/smlMimeException;->printStackTrace()V

    goto :goto_60

    .line 1817
    :cond_79
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "X-CUSTOM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 1819
    const-string v1, "X-IM;X-CUSTOM"

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1820
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    goto :goto_60

    .line 1822
    :cond_ac
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "X-CUSTOM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 1824
    const-string v1, "X-IM;X-CUSTOM"

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1825
    const-string v1, "custom"

    iput-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    goto :goto_60

    .line 1828
    :cond_c3
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto :goto_60
.end method

.method public static VCardGetN(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardName_t;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1242
    new-instance v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    invoke-direct {v5}, Lcom/wssnps/base/smlvCard$SmlvCardName_t;-><init>()V

    .line 1249
    const/16 v0, 0x8

    new-array v6, v0, [Ljava/lang/String;

    .line 1250
    const-string v2, ""

    .line 1251
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v7

    .line 1252
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v0

    .line 1253
    if-nez v0, :cond_20

    .line 1255
    iget v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v0

    .line 1258
    :cond_20
    iget-object v8, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    move v1, v4

    move v3, v4

    .line 1260
    :goto_24
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v1, v9, :cond_7b

    move v1, v4

    .line 1288
    :goto_2b
    array-length v2, v6

    if-lt v1, v2, :cond_d5

    .line 1330
    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->middle:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1331
    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->formatted:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1332
    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticGiven:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticFamily:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticMiddle:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15c

    .line 1334
    :cond_76
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->isValid:Z

    move-object v0, v5

    .line 1341
    :goto_7a
    return-object v0

    .line 1262
    :cond_7b
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_9d

    .line 1264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1260
    :cond_9a
    :goto_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 1266
    :cond_9d
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_ac

    .line 1268
    aput-object v2, v6, v3

    .line 1269
    const-string v2, ""

    .line 1270
    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    .line 1274
    :cond_ac
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1275
    const/4 v9, 0x7

    if-ne v3, v9, :cond_9a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v9, v1, :cond_9a

    .line 1277
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_9a

    .line 1279
    aput-object v2, v6, v3

    goto :goto_9a

    .line 1291
    :cond_d5
    aget-object v2, v6, v1

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e0

    .line 1293
    packed-switch v1, :pswitch_data_160

    .line 1288
    :cond_e0
    :goto_e0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2b

    .line 1296
    :pswitch_e4
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    goto :goto_e0

    .line 1299
    :pswitch_f3
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    goto :goto_e0

    .line 1302
    :pswitch_102
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->middle:Ljava/lang/String;

    goto :goto_e0

    .line 1305
    :pswitch_111
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    goto :goto_e0

    .line 1308
    :pswitch_120
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    goto :goto_e0

    .line 1318
    :pswitch_12f
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticFamily:Ljava/lang/String;

    goto :goto_e0

    .line 1321
    :pswitch_13e
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticGiven:Ljava/lang/String;

    goto :goto_e0

    .line 1324
    :pswitch_14d
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticMiddle:Ljava/lang/String;

    goto :goto_e0

    .line 1338
    :cond_15c
    const/4 v0, 0x0

    goto/16 :goto_7a

    .line 1293
    nop

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_f3
        :pswitch_102
        :pswitch_111
        :pswitch_120
        :pswitch_12f
        :pswitch_13e
        :pswitch_14d
    .end packed-switch
.end method

.method public static VCardGetNICKNAME(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    .registers 4
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 1346
    new-instance v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v0}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1347
    .local v0, NickName:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    sget-object v1, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v1, p1}, Lcom/wssnps/base/smlvItemApi;->VItemGetString(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlVItemTag$VitemHash;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1348
    return-object v0
.end method

.method public static VCardGetNOTE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    .registers 8
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 2082
    const/4 v0, 0x0

    .line 2083
    .local v0, EncodingType:I
    const/4 v1, 0x0

    .line 2084
    .local v1, nCharSet:I
    const/4 v2, 0x0

    .line 2085
    .local v2, nIsEscape:I
    new-instance v3, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v3}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 2098
    .local v3, noteList:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    if-eqz v3, :cond_33

    .line 2100
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v0

    .line 2101
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v1

    .line 2102
    if-nez v1, :cond_20

    .line 2104
    iget v4, p0, Lcom/wssnps/base/smlVItemItem;->nTagNo:I

    iget-object v5, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {v4, v5}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v1

    .line 2108
    :cond_20
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5, v0, v1, v2}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 2110
    iget-object v4, v3, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-nez v4, :cond_33

    .line 2112
    const/4 v3, 0x0

    .line 2116
    :cond_33
    return-object v3
.end method

.method public static VCardGetNewGROUPID(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "GroupID"

    .prologue
    .line 2229
    const/4 v0, 0x0

    .line 2230
    .local v0, AfterGroupID:Ljava/lang/String;
    move-object v1, p0

    .line 2232
    .local v1, BeforeGroupID:Ljava/lang/String;
    if-nez v1, :cond_6

    .line 2233
    const/4 v1, 0x0

    .line 2248
    .end local v1           #BeforeGroupID:Ljava/lang/String;
    :cond_5
    :goto_5
    return-object v1

    .line 2236
    .restart local v1       #BeforeGroupID:Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/wssnps/database/smlContactItem;->NewGroupID:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    .line 2238
    sget-object v2, Lcom/wssnps/database/smlContactItem;->NewGroupID:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 2240
    sget-object v2, Lcom/wssnps/database/smlContactItem;->NewGroupID:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #AfterGroupID:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 2241
    .restart local v0       #AfterGroupID:Ljava/lang/String;
    if-eqz v0, :cond_5

    move-object v1, v0

    .line 2244
    goto :goto_5
.end method

.method public static VCardGetORG(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x29

    const/16 v3, 0x28

    const/4 v4, 0x0

    .line 1976
    new-instance v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;

    invoke-direct {v5}, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;-><init>()V

    .line 1983
    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/String;

    .line 1985
    if-eqz v5, :cond_192

    .line 1987
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v7

    .line 1988
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v0

    .line 1989
    if-nez v0, :cond_23

    .line 1991
    iget v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v0

    .line 1993
    :cond_23
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "X-CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "(CHARSET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 1996
    const-string v1, "ORG;X-CUSTOM"

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->type:I

    .line 1997
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    iget-object v3, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1999
    const-string v2, ","

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2001
    const/4 v2, 0x2

    :try_start_63
    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/wssnps/base/smlQP;->decodeQP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->ExCustomValue:Ljava/lang/String;
    :try_end_6b
    .catch Lcom/wssnps/base/smlMimeException; {:try_start_63 .. :try_end_6b} :catch_a2

    .line 2022
    :goto_6b
    iget-object v8, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    .line 2023
    const-string v3, ""

    move v1, v4

    move v2, v4

    .line 2026
    :goto_71
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v1, v9, :cond_fc

    .line 2043
    aput-object v3, v6, v2

    move v1, v4

    .line 2045
    :goto_7a
    array-length v2, v6

    if-lt v1, v2, :cond_144

    .line 2068
    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit1:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit3:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18f

    .line 2070
    :cond_9d
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->isValid:Z

    move-object v0, v5

    .line 2077
    :goto_a1
    return-object v0

    .line 2002
    :catch_a2
    move-exception v1

    .line 2003
    invoke-virtual {v1}, Lcom/wssnps/base/smlMimeException;->printStackTrace()V

    goto :goto_6b

    .line 2008
    :cond_a7
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "X-CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 2010
    const-string v1, "ORG;X-CUSTOM"

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->type:I

    .line 2011
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->ExCustomValue:Ljava/lang/String;

    goto :goto_6b

    .line 2013
    :cond_da
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v2, "X-CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 2015
    const-string v1, "ORG;X-CUSTOM"

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->type:I

    .line 2016
    const-string v1, "custom"

    iput-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->ExCustomValue:Ljava/lang/String;

    goto/16 :goto_6b

    .line 2019
    :cond_f2
    iget-object v1, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->type:I

    goto/16 :goto_6b

    .line 2028
    :cond_fc
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_11f

    .line 2030
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2026
    :goto_11b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_71

    .line 2032
    :cond_11f
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_12e

    .line 2034
    aput-object v3, v6, v2

    .line 2035
    const-string v3, ""

    .line 2036
    add-int/lit8 v2, v2, 0x1

    goto :goto_11b

    .line 2040
    :cond_12e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_11b

    .line 2048
    :cond_144
    aget-object v2, v6, v1

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14f

    .line 2050
    packed-switch v1, :pswitch_data_196

    .line 2045
    :cond_14f
    :goto_14f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7a

    .line 2053
    :pswitch_153
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    goto :goto_14f

    .line 2056
    :pswitch_162
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit1:Ljava/lang/String;

    goto :goto_14f

    .line 2059
    :pswitch_171
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    goto :goto_14f

    .line 2062
    :pswitch_180
    aget-object v2, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v7, v0, v4}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit3:Ljava/lang/String;

    goto :goto_14f

    .line 2074
    :cond_18f
    const/4 v0, 0x0

    goto/16 :goto_a1

    :cond_192
    move-object v0, v5

    goto/16 :goto_a1

    .line 2050
    nop

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_153
        :pswitch_162
        :pswitch_171
        :pswitch_180
    .end packed-switch
.end method

.method public static VCardGetPHOTO(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;
    .registers 7
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 2121
    const/4 v0, 0x0

    .line 2123
    .local v0, EncodingType:I
    new-instance v2, Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    invoke-direct {v2}, Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;-><init>()V

    .line 2124
    .local v2, photo:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;
    const/4 v3, 0x0

    .line 2125
    .local v3, szData:Ljava/lang/String;
    if-eqz v2, :cond_29

    .line 2127
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;->type:I

    .line 2129
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v0

    .line 2130
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v1

    .line 2132
    .local v1, nCharSet:I
    if-nez v1, :cond_25

    .line 2134
    iget v4, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v1

    .line 2136
    :cond_25
    iget-object v3, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    .line 2140
    iput-object v3, v2, Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;->Binary:Ljava/lang/String;

    .line 2145
    .end local v1           #nCharSet:I
    :cond_29
    return-object v2
.end method

.method public static VCardGetRELEATION(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    .registers 11
    .parameter

    .prologue
    const/16 v9, 0x28

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1520
    .line 1523
    new-instance v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v1}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1525
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v2

    .line 1526
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v3

    .line 1528
    if-eqz v1, :cond_6a

    .line 1530
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-CUSTOM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "(CHARSET"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1533
    iput v5, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1535
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1536
    const-string v4, ","

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1539
    const/4 v4, 0x2

    :try_start_54
    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/wssnps/base/smlQP;->decodeQP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;
    :try_end_5c
    .catch Lcom/wssnps/base/smlMimeException; {:try_start_54 .. :try_end_5c} :catch_6b

    .line 1613
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v4, v2, v3, v7}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1616
    :cond_6a
    return-object v1

    .line 1540
    :catch_6b
    move-exception v0

    .line 1541
    invoke-virtual {v0}, Lcom/wssnps/base/smlMimeException;->printStackTrace()V

    goto :goto_5c

    .line 1546
    :cond_70
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-CUSTOM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1548
    iput v5, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1549
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    goto :goto_5c

    .line 1551
    :cond_9f
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-CUSTOM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1553
    iput v5, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1554
    const-string v0, "custom"

    iput-object v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    goto :goto_5c

    .line 1556
    :cond_b0
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-ASSISTANT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1558
    iput v7, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto :goto_5c

    .line 1560
    :cond_bd
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-BROTHER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 1562
    iput v6, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto :goto_5c

    .line 1564
    :cond_ca
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-CHILD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1566
    iput v8, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto :goto_5c

    .line 1568
    :cond_d7
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-DOMESTICPARTNER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 1570
    const/4 v0, 0x4

    iput v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto/16 :goto_5c

    .line 1572
    :cond_e6
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-FATHER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 1574
    const/4 v0, 0x5

    iput v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto/16 :goto_5c

    .line 1576
    :cond_f5
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-FRIEND"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 1578
    const/4 v0, 0x6

    iput v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto/16 :goto_5c

    .line 1580
    :cond_104
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-MANAGER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 1582
    const/4 v0, 0x7

    iput v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto/16 :goto_5c

    .line 1584
    :cond_113
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-MOTHER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 1586
    const/16 v0, 0x8

    iput v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto/16 :goto_5c

    .line 1588
    :cond_123
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-PARENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 1590
    const/16 v0, 0x9

    iput v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto/16 :goto_5c

    .line 1592
    :cond_133
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-PARTNER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_143

    .line 1594
    const/16 v0, 0xa

    iput v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto/16 :goto_5c

    .line 1596
    :cond_143
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-REFERDBY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 1598
    const/16 v0, 0xb

    iput v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto/16 :goto_5c

    .line 1600
    :cond_153
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-RELATIVE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 1602
    const/16 v0, 0xc

    iput v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto/16 :goto_5c

    .line 1604
    :cond_163
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-SISTER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1606
    const/16 v0, 0xd

    iput v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto/16 :goto_5c

    .line 1608
    :cond_173
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v4, "X-SPOUSE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1610
    const/16 v0, 0xe

    iput v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto/16 :goto_5c
.end method

.method public static VCardGetROLE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 3
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 1970
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v0, p1}, Lcom/wssnps/base/smlvItemApi;->VItemGetString(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlVItemTag$VitemHash;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static VCardGetTEL(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    .registers 9
    .parameter

    .prologue
    const/16 v7, 0x29

    const/16 v6, 0x28

    .line 1636
    .line 1638
    const/4 v1, 0x1

    .line 1639
    new-instance v2, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v2}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1641
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v3

    .line 1642
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v4

    .line 1647
    if-eqz v2, :cond_6e

    .line 1649
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "X-CUSTOM"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "(CHARSET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1652
    const-string v0, "TEL;X-CUSTOM"

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1654
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    iget-object v6, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1655
    const-string v5, ","

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1659
    const/4 v5, 0x2

    :try_start_58
    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/wssnps/base/smlQP;->decodeQP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;
    :try_end_60
    .catch Lcom/wssnps/base/smlMimeException; {:try_start_58 .. :try_end_60} :catch_6f

    .line 1679
    :goto_60
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0, v5, v3, v4, v1}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1689
    :cond_6e
    return-object v2

    .line 1660
    :catch_6f
    move-exception v0

    .line 1661
    invoke-virtual {v0}, Lcom/wssnps/base/smlMimeException;->printStackTrace()V

    goto :goto_60

    .line 1666
    :cond_74
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "X-CUSTOM"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1668
    const-string v0, "TEL;X-CUSTOM"

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1669
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    goto :goto_60

    .line 1671
    :cond_a7
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    const-string v5, "X-CUSTOM"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1673
    const-string v0, "TEL;X-CUSTOM"

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1674
    const-string v0, "custom"

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    goto :goto_60

    .line 1677
    :cond_be
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    goto :goto_60
.end method

.method public static VCardGetTITLE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 3
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 1965
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v0, p1}, Lcom/wssnps/base/smlvItemApi;->VItemGetString(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlVItemTag$VitemHash;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static VCardGetType(Ljava/lang/String;)I
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2293
    .line 2294
    sget-object v4, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    .line 2297
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2298
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    :goto_c
    array-length v3, v5

    if-lt v2, v3, :cond_10

    .line 2328
    return v0

    .line 2300
    :cond_10
    aget-object v3, v5, v2

    const-string v6, "CHARSET="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 2301
    aget-object v3, v5, v2

    const-string v6, "ENCODING="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 2303
    aget-object v3, v5, v2

    const-string v6, "TYPE="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2305
    aget-object v3, v5, v2

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 2306
    aget-object v3, v5, v2

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v3, v1

    .line 2307
    :goto_40
    array-length v7, v6

    if-lt v3, v7, :cond_46

    .line 2298
    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2309
    :cond_46
    aget-object v7, v6, v3

    invoke-virtual {v4, v7}, Lcom/wssnps/base/smlVItemTag$VitemHash;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 2310
    if-eqz v7, :cond_53

    .line 2312
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    or-int/2addr v0, v7

    .line 2307
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 2318
    :cond_56
    aget-object v3, v5, v2

    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_43

    .line 2320
    aget-object v3, v5, v2

    invoke-virtual {v4, v3}, Lcom/wssnps/base/smlVItemTag$VitemHash;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 2321
    if-eqz v3, :cond_43

    .line 2323
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v0, v3

    goto :goto_43
.end method

.method public static VCardGetURL(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    .registers 8
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 1754
    const/4 v0, 0x0

    .line 1755
    .local v0, EncodingType:I
    const/4 v2, 0x0

    .line 1756
    .local v2, nCharSet:I
    const/4 v3, 0x0

    .line 1757
    .local v3, nIsEscape:I
    new-instance v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v1}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1770
    .local v1, Url:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    if-eqz v1, :cond_3b

    .line 1772
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v0

    .line 1773
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v2

    .line 1774
    if-nez v2, :cond_20

    .line 1776
    iget v4, p0, Lcom/wssnps/base/smlVItemItem;->nTagNo:I

    iget-object v5, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {v4, v5}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v2

    .line 1779
    :cond_20
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1780
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5, v0, v2, v3}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1782
    iget-object v4, v1, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-nez v4, :cond_3b

    .line 1784
    const/4 v1, 0x0

    .line 1788
    :cond_3b
    return-object v1
.end method

.method public static VCardGetVERSION(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SmlvCardVersion;
    .registers 3
    .parameter

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 1625
    sget-object v0, Lcom/wssnps/base/smlvCard$SmlvCardVersion;->VCARD_V21:Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    .line 1631
    :goto_d
    return-object v0

    .line 1629
    :cond_e
    sget-object v0, Lcom/wssnps/base/smlvCard$SmlvCardVersion;->VCARD_V30:Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    goto :goto_d
.end method

.method public static VCardGetXACCOUNT(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2258
    new-instance v1, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    invoke-direct {v1}, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;-><init>()V

    .line 2261
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 2263
    if-eqz v1, :cond_16

    .line 2265
    iget-object v0, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    .line 2266
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2268
    const/4 v0, 0x0

    :goto_13
    array-length v3, v2

    if-lt v0, v3, :cond_17

    .line 2287
    :cond_16
    return-object v1

    .line 2271
    :cond_17
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 2274
    packed-switch v0, :pswitch_data_30

    .line 2268
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 2277
    :pswitch_25
    aget-object v3, v2, v0

    iput-object v3, v1, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    goto :goto_22

    .line 2280
    :pswitch_2a
    aget-object v3, v2, v0

    iput-object v3, v1, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    goto :goto_22

    .line 2274
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2a
    .end packed-switch
.end method

.method public static VCardGetXGROUP(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/util/ArrayList;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wssnps/base/smlVItemItem;",
            "Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2189
    .line 2195
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2197
    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    move v2, v0

    move v1, v0

    .line 2198
    :goto_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_11

    .line 2223
    :cond_10
    return-object v4

    .line 2200
    :cond_11
    const-string v3, ","

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 2201
    if-nez v0, :cond_10

    .line 2204
    const/4 v6, -0x1

    if-ne v3, v6, :cond_37

    .line 2206
    const/4 v0, 0x1

    .line 2207
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2214
    :goto_21
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_30

    .line 2217
    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VCardGetNewGROUPID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2218
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2220
    :cond_30
    add-int/lit8 v3, v3, 0x1

    .line 2198
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_a

    .line 2211
    :cond_37
    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method

.method public static VCardItemString(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    const-string v0, ""

    .line 582
    iget-object v0, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {p0, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v0

    .line 583
    iget-object v1, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {p0, v1}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v1

    .line 584
    iget v2, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->smlGetIsEscape(I)I

    move-result v2

    .line 586
    sget-object v3, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p0, v3}, Lcom/wssnps/base/smlvItemApi;->VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v3

    .line 587
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 588
    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 589
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 591
    invoke-static {v3, p1, v0, v1, v2}, Lcom/wssnps/base/smlvItemApi;->VItemAppendTagEncodeData(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static VCardMessenger(Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 742
    const-string v0, ""

    .line 748
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 749
    const/4 v0, 0x0

    .line 764
    :goto_8
    return-object v0

    .line 751
    :cond_9
    iget-object v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {v2, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v0

    .line 752
    iget-object v1, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {v2, v1}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v1

    .line 753
    iget v2, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->smlGetIsEscape(I)I

    move-result v2

    .line 755
    const-string v3, "X-IM"

    .line 756
    iget v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    iget-object v5, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    sget-object v6, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v4, v5, v6}, Lcom/wssnps/base/smlvItemApi;->VCardEnumToTypeString(ILjava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 757
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 758
    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 759
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 761
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1, v2}, Lcom/wssnps/base/smlvItemApi;->VItemAppendTagEncodeData(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static VCardN(ILcom/wssnps/base/smlvCard$SmlvCardName_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 596
    const-string v0, ""

    .line 603
    iget-object v0, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {p0, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v1

    .line 604
    iget-object v0, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {p0, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v2

    .line 605
    const/4 v3, 0x1

    .line 609
    const-string v0, "N"

    .line 610
    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    if-eqz p1, :cond_3b

    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 616
    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    :cond_3b
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    if-eqz p1, :cond_55

    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 622
    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    :cond_55
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    if-eqz p1, :cond_6f

    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->middle:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 628
    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->middle:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    :cond_6f
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    if-eqz p1, :cond_89

    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_89

    .line 634
    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    :cond_89
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    if-eqz p1, :cond_a3

    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 640
    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    :cond_a3
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    if-eqz p1, :cond_bd

    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticFamily:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bd

    .line 646
    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticFamily:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    :cond_bd
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    if-eqz p1, :cond_d7

    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticGiven:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d7

    .line 652
    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticGiven:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    :cond_d7
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    if-eqz p1, :cond_f1

    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticMiddle:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f1

    .line 658
    iget-object v4, p1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticMiddle:Ljava/lang/String;

    invoke-static {v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    :cond_f1
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    return-object v0
.end method

.method public static VCardORG(Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x9

    .line 871
    const-string v0, ""

    .line 872
    const-string v0, ""

    .line 878
    if-nez p0, :cond_a

    .line 879
    const/4 v0, 0x0

    .line 929
    :goto_9
    return-object v0

    .line 881
    :cond_a
    iget-object v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {v2, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v1

    .line 882
    iget-object v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {v2, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v2

    .line 883
    const/4 v3, 0x1

    .line 885
    const-string v0, "ORG"

    .line 886
    iget v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->type:I

    iget-object v5, p0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->ExCustomValue:Ljava/lang/String;

    sget-object v6, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v4, v5, v6}, Lcom/wssnps/base/smlvItemApi;->VCardEnumToTypeString(ILjava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 891
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 893
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 895
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 901
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a1

    .line 905
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 925
    :cond_a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9
.end method

.method public static VCardPhoto(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1185
    const-string v0, ""

    .line 1187
    const-string v0, "PHOTO;ENCODING=BASE64:"

    .line 1188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1191
    return-object v0
.end method

.method public static VCardRELEATION(Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x24

    .line 1054
    const-string v0, ""

    .line 1055
    const-string v0, ""

    .line 1060
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1061
    const/4 v0, 0x0

    .line 1136
    :goto_b
    return-object v0

    .line 1063
    :cond_c
    iget-object v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {v2, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v1

    .line 1064
    iget-object v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {v2, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v2

    .line 1065
    const/4 v3, 0x1

    .line 1067
    const-string v0, "X-RELATION"

    .line 1069
    iget v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    packed-switch v4, :pswitch_data_10a

    .line 1132
    :goto_20
    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1133
    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1135
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemAppendTagEncodeData(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1072
    :pswitch_3d
    const/high16 v4, 0x80

    iget-object v5, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    sget-object v6, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v4, v5, v6}, Lcom/wssnps/base/smlvItemApi;->VCardEnumToTypeString(ILjava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 1075
    :pswitch_4c
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    const-string v4, "X-ASSISTANT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 1079
    :pswitch_59
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    const-string v4, "X-BROTHER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 1083
    :pswitch_66
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    const-string v4, "X-CHILD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 1087
    :pswitch_73
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    const-string v4, "X-DOMESTICPARTNER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 1091
    :pswitch_80
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    const-string v4, "X-FATHER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 1095
    :pswitch_8d
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    const-string v4, "X-FRIEND"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 1099
    :pswitch_9a
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    const-string v4, "X-MANAGER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    .line 1103
    :pswitch_a8
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    const-string v4, "X-MOTHER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    .line 1107
    :pswitch_b6
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    const-string v4, "X-PARENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    .line 1111
    :pswitch_c4
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    const-string v4, "X-PARTNER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    .line 1115
    :pswitch_d2
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    const-string v4, "X-REFERDBY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    .line 1119
    :pswitch_e0
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    const-string v4, "X-RELATIVE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    .line 1123
    :pswitch_ee
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    const-string v4, "X-SISTER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    .line 1127
    :pswitch_fc
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    const-string v4, "X-SPOUSE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    .line 1069
    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_4c
        :pswitch_59
        :pswitch_66
        :pswitch_73
        :pswitch_80
        :pswitch_8d
        :pswitch_9a
        :pswitch_a8
        :pswitch_b6
        :pswitch_c4
        :pswitch_d2
        :pswitch_e0
        :pswitch_ee
        :pswitch_fc
    .end packed-switch
.end method

.method public static VCardSip(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 703
    invoke-static {p0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 704
    const/4 v0, 0x0

    .line 710
    :goto_7
    return-object v0

    .line 706
    :cond_8
    const-string v0, "TEL;INTERNET"

    .line 707
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static VCardTEL(Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 674
    const-string v0, ""

    .line 675
    const-string v0, ""

    .line 680
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 681
    const/4 v0, 0x0

    .line 696
    :goto_a
    return-object v0

    .line 683
    :cond_b
    iget-object v0, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {v2, v0}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v0

    .line 684
    iget-object v1, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {v2, v1}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v1

    .line 685
    iget v2, p1, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->smlGetIsEscape(I)I

    move-result v2

    .line 687
    const-string v3, "TEL"

    .line 688
    iget v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    iget-object v5, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    sget-object v6, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v4, v5, v6}, Lcom/wssnps/base/smlvItemApi;->VCardEnumToTypeString(ILjava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 689
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 690
    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 691
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 693
    iget-object v4, p0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1, v2}, Lcom/wssnps/base/smlvItemApi;->VItemAppendTagEncodeData(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static VCardURL(Ljava/lang/String;ILcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0xd

    .line 769
    const-string v1, ""

    .line 775
    invoke-static {p0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 791
    :goto_b
    return-object v0

    .line 778
    :cond_c
    iget-object v1, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    invoke-static {v3, v1}, Lcom/wssnps/base/smlvItemApi;->smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I

    move-result v1

    .line 779
    iget-object v2, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {v3, v2}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v2

    .line 780
    iget v3, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v3}, Lcom/wssnps/base/smlvItemApi;->smlGetIsEscape(I)I

    move-result v3

    .line 782
    const-string v4, "URL"

    .line 783
    sget-object v5, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {p1, v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardEnumToTypeString(ILjava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    invoke-static {v1}, Lcom/wssnps/base/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-static {v0, p0, v1, v2, v3}, Lcom/wssnps/base/smlvItemApi;->VItemAppendTagEncodeData(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static VEventBegin()Ljava/lang/String;
    .registers 1

    .prologue
    .line 2377
    const-string v0, "BEGIN:VEVENT\r\n"

    return-object v0
.end method

.method public static VEventEnd()Ljava/lang/String;
    .registers 1

    .prologue
    .line 2382
    const-string v0, "END:VEVENT\r\n"

    return-object v0
.end method

.method public static VItemAppendCharset(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 386
    packed-switch p0, :pswitch_data_12

    .line 398
    :pswitch_3
    const-string v0, ""

    :goto_5
    return-object v0

    .line 389
    :pswitch_6
    const-string v0, ";CHARSET=UTF-8"

    goto :goto_5

    .line 391
    :pswitch_9
    const-string v0, ";CHARSET=UTF-7"

    goto :goto_5

    .line 393
    :pswitch_c
    const-string v0, ";CHARSET=LATIN1"

    goto :goto_5

    .line 395
    :pswitch_f
    const-string v0, ";CHARSET=SHIFT_JIS"

    goto :goto_5

    .line 386
    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_c
        :pswitch_9
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_f
    .end packed-switch
.end method

.method public static VItemAppendEncodeType(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 404
    packed-switch p0, :pswitch_data_c

    .line 413
    const-string v0, ""

    :goto_5
    return-object v0

    .line 408
    :pswitch_6
    const-string v0, ";ENCODING=QUOTED-PRINTABLE"

    goto :goto_5

    .line 410
    :pswitch_9
    const-string v0, ";ENCODING=BASE64"

    goto :goto_5

    .line 404
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static VItemAppendTagEncodeData(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 419
    .line 423
    invoke-static {p0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {p1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 461
    :cond_e
    :goto_e
    return-object v0

    .line 426
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-lt v1, v2, :cond_1c

    .line 428
    const-string v1, "pTag over than 64 byte"

    invoke-static {v3, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 431
    :cond_1c
    invoke-static {p1, p2, p3, p4}, Lcom/wssnps/base/smlvItemApi;->VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 432
    if-eqz v1, :cond_76

    .line 434
    const/4 v2, 0x2

    if-eq p3, v2, :cond_28

    const/4 v2, 0x3

    if-ne p3, v2, :cond_4f

    .line 437
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    if-eqz v1, :cond_e

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 447
    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    if-eqz v1, :cond_e

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 459
    :cond_76
    const-string v1, "Warning... Encoded data is NULL"

    invoke-static {v3, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_e
.end method

.method public static VItemEncodeData(Ljava/lang/String;III)Ljava/lang/String;
    .registers 14
    .parameter "Data"
    .parameter "nCharset"
    .parameter "nEncodeType"
    .parameter "nIsEscape"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 466
    const/4 v1, 0x0

    .line 467
    .local v1, retData:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, szBuf:Ljava/lang/String;
    const/4 v4, 0x0

    .line 468
    .local v4, szEnc:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v5, v6, [C

    .line 470
    .local v5, szEscape:[C
    const/16 v6, 0x5c

    aput-char v6, v5, v9

    .line 471
    const/16 v6, 0x3b

    aput-char v6, v5, v7

    .line 473
    invoke-static {p0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 474
    const/4 v6, 0x0

    .line 554
    :goto_18
    return-object v6

    .line 478
    :cond_19
    packed-switch p1, :pswitch_data_7a

    .line 499
    :pswitch_1c
    move-object v2, p0

    .line 503
    :goto_1d
    :pswitch_1d
    if-eqz v2, :cond_44

    .line 505
    if-ne p3, v7, :cond_40

    const/4 v6, 0x3

    if-eq p2, v6, :cond_40

    .line 507
    aget-char v6, v5, v9

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_34

    aget-char v6, v5, v7

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v8, :cond_40

    .line 509
    :cond_34
    const/4 v3, 0x0

    .line 510
    .local v3, szDest:Ljava/lang/String;
    sget-object v6, Lcom/wssnps/base/smlvItemApi;->tools:Lcom/wssnps/base/smlVItemTools;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v2, v7}, Lcom/wssnps/base/smlVItemTools;->EncodeEscapeChar(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 511
    move-object v2, v3

    .line 515
    .end local v3           #szDest:Ljava/lang/String;
    :cond_40
    packed-switch p2, :pswitch_data_8c

    .line 550
    move-object v1, v2

    :cond_44
    :goto_44
    move-object v6, v1

    .line 554
    goto :goto_18

    .line 482
    :pswitch_46
    move-object v2, p0

    .line 483
    goto :goto_1d

    .line 489
    :pswitch_48
    move-object v2, p0

    .line 490
    goto :goto_1d

    .line 493
    :pswitch_4a
    move-object v2, p0

    .line 494
    goto :goto_1d

    .line 496
    :pswitch_4c
    move-object v2, p0

    .line 497
    goto :goto_1d

    .line 518
    :pswitch_4e
    move-object v1, v2

    .line 519
    goto :goto_44

    .line 521
    :pswitch_50
    new-instance v4, Ljava/lang/String;

    .end local v4           #szEnc:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    .line 522
    .restart local v4       #szEnc:Ljava/lang/String;
    const/4 v2, 0x0

    .line 523
    move-object v1, v4

    .line 524
    goto :goto_44

    .line 527
    :pswitch_60
    move-object v4, v2

    .line 529
    :try_start_61
    invoke-static {v2}, Lcom/wssnps/base/smlQP;->encodeQP(Ljava/lang/String;)Ljava/lang/String;
    :try_end_64
    .catch Lcom/wssnps/base/smlMimeException; {:try_start_61 .. :try_end_64} :catch_68

    move-result-object v4

    .line 535
    :goto_65
    const/4 v2, 0x0

    .line 536
    move-object v1, v4

    .line 537
    goto :goto_44

    .line 530
    :catch_68
    move-exception v0

    .line 531
    .local v0, e:Lcom/wssnps/base/smlMimeException;
    invoke-virtual {v0}, Lcom/wssnps/base/smlMimeException;->printStackTrace()V

    goto :goto_65

    .line 540
    .end local v0           #e:Lcom/wssnps/base/smlMimeException;
    :pswitch_6d
    move-object v4, v2

    .line 542
    :try_start_6e
    invoke-static {v2}, Lcom/wssnps/base/smlQP;->encodeQP(Ljava/lang/String;)Ljava/lang/String;
    :try_end_71
    .catch Lcom/wssnps/base/smlMimeException; {:try_start_6e .. :try_end_71} :catch_75

    move-result-object v4

    .line 546
    :goto_72
    const/4 v2, 0x0

    .line 547
    move-object v1, v4

    .line 548
    goto :goto_44

    .line 543
    :catch_75
    move-exception v0

    .line 544
    .restart local v0       #e:Lcom/wssnps/base/smlMimeException;
    invoke-virtual {v0}, Lcom/wssnps/base/smlMimeException;->printStackTrace()V

    goto :goto_72

    .line 478
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_48
        :pswitch_1c
        :pswitch_46
        :pswitch_1c
        :pswitch_1d
        :pswitch_4c
    .end packed-switch

    .line 515
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_50
        :pswitch_60
        :pswitch_6d
    .end packed-switch
.end method

.method public static VItemGetString(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlVItemTag$VitemHash;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 10
    .parameter "item"
    .parameter "smlVItemTags"
    .parameter "vItemConfig"

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, EncodingType:I
    const/4 v2, 0x0

    .line 342
    .local v2, nIsEscape:I
    const/4 v3, 0x0

    .line 344
    .local v3, retData:Ljava/lang/String;
    if-nez p0, :cond_7

    .line 346
    const/4 v4, 0x0

    .line 381
    :goto_6
    return-object v4

    .line 349
    :cond_7
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v0

    .line 350
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v1

    .line 351
    .local v1, nCharSet:I
    iget v4, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->smlGetIsEscape(I)I

    move-result v2

    .line 352
    if-nez v1, :cond_21

    .line 354
    iget v4, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v1

    .line 356
    :cond_21
    const/4 v4, 0x2

    if-ne v0, v4, :cond_34

    .line 358
    sget-object v4, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    if-ne p1, v4, :cond_34

    .line 360
    iget v4, p0, Lcom/wssnps/base/smlVItemItem;->nTagNo:I

    iget-object v5, p2, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    invoke-static {v4, v5}, Lcom/wssnps/base/smlvItemApi;->smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_34

    .line 362
    const/4 v0, 0x3

    .line 374
    :cond_34
    iget-object v4, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5, v0, v1, v2}, Lcom/wssnps/base/smlvItemApi;->DecodingValue(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v3

    .line 376
    if-nez v3, :cond_4a

    .line 378
    const/4 v4, 0x1

    const-string v5, "VItemGetString  DecodingValue failed at  Tag=%s\n"

    iget-object v6, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4a
    move-object v4, v3

    .line 381
    goto :goto_6
.end method

.method public static VItemGetTagEnum(Ljava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)I
    .registers 3
    .parameter "Tag"
    .parameter "VItemTag"

    .prologue
    .line 334
    invoke-virtual {p1, p0}, Lcom/wssnps/base/smlVItemTag$VitemHash;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static VItemGetTagString(ILcom/wssnps/base/smlVItemTag$VitemHash;)Ljava/lang/String;
    .registers 3
    .parameter "nTag"
    .parameter "VItemTag"

    .prologue
    .line 329
    invoke-virtual {p1, p0}, Lcom/wssnps/base/smlVItemTag$VitemHash;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static VItemStringTimeToVItemTime(Ljava/lang/String;)Landroid/text/format/Time;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3854
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 3855
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 3861
    invoke-static {p0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "z"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_19
    const-string v2, "Z"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3868
    :cond_21
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 3869
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 3875
    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 3895
    :goto_2f
    return-object v1

    .line 3878
    :cond_30
    invoke-static {p0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 3880
    const-string v2, "GMT"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 3882
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 3884
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 3885
    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    goto :goto_2f

    .line 3889
    :cond_4a
    const/4 v0, 0x1

    const-string v2, "[VCalGetDATE]!!!Warning!!! There is no VCalGetDATE \n"

    invoke-static {v0, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_2f
.end method

.method public static VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3838
    .line 3840
    if-nez p1, :cond_44

    .line 3842
    const-string v0, "%04d%02d%02dT%02d%02d%02dZ"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/text/format/Time;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Landroid/text/format/Time;->hour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Landroid/text/format/Time;->minute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget v3, p0, Landroid/text/format/Time;->second:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3848
    :goto_43
    return-object v0

    .line 3846
    :cond_44
    const-string v0, "%04d%02d%02dT%02d%02d%02d"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/text/format/Time;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Landroid/text/format/Time;->hour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Landroid/text/format/Time;->minute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget v3, p0, Landroid/text/format/Time;->second:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43
.end method

.method public static VTodoBegin()Ljava/lang/String;
    .registers 1

    .prologue
    .line 2387
    const-string v0, "BEGIN:VTODO\r\n"

    return-object v0
.end method

.method public static VTodoEnd()Ljava/lang/String;
    .registers 1

    .prologue
    .line 2392
    const-string v0, "END:VTODO\r\n"

    return-object v0
.end method

.method public static isValidDateTime(Landroid/text/format/Time;)Z
    .registers 5
    .parameter "pDate"

    .prologue
    const/16 v3, 0x3b

    .line 3901
    const/4 v0, 0x1

    .line 3903
    .local v0, bRet:Z
    if-eqz p0, :cond_44

    .line 3905
    iget v1, p0, Landroid/text/format/Time;->year:I

    if-eqz v1, :cond_f

    iget v1, p0, Landroid/text/format/Time;->year:I

    const/16 v2, 0x270f

    if-le v1, v2, :cond_10

    .line 3907
    :cond_f
    const/4 v0, 0x0

    .line 3909
    :cond_10
    iget v1, p0, Landroid/text/format/Time;->month:I

    if-ltz v1, :cond_1a

    iget v1, p0, Landroid/text/format/Time;->month:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_1b

    .line 3911
    :cond_1a
    const/4 v0, 0x0

    .line 3913
    :cond_1b
    iget v1, p0, Landroid/text/format/Time;->monthDay:I

    if-eqz v1, :cond_25

    iget v1, p0, Landroid/text/format/Time;->monthDay:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_26

    .line 3915
    :cond_25
    const/4 v0, 0x0

    .line 3917
    :cond_26
    iget v1, p0, Landroid/text/format/Time;->month:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    iget v1, p0, Landroid/text/format/Time;->monthDay:I

    const/16 v2, 0x1d

    if-le v1, v2, :cond_32

    .line 3919
    const/4 v0, 0x0

    .line 3921
    :cond_32
    iget v1, p0, Landroid/text/format/Time;->hour:I

    const/16 v2, 0x18

    if-le v1, v2, :cond_39

    .line 3923
    const/4 v0, 0x0

    .line 3925
    :cond_39
    iget v1, p0, Landroid/text/format/Time;->minute:I

    if-le v1, v3, :cond_3e

    .line 3927
    const/4 v0, 0x0

    .line 3929
    :cond_3e
    iget v1, p0, Landroid/text/format/Time;->second:I

    if-le v1, v3, :cond_43

    .line 3931
    const/4 v0, 0x0

    .line 3940
    :cond_43
    :goto_43
    return v0

    .line 3936
    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method public static smlGetCharset(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;)I
    .registers 3
    .parameter "nField"
    .parameter "CharSet"

    .prologue
    .line 189
    if-eqz p1, :cond_7

    .line 190
    aget-object v0, p1, p0

    iget v0, v0, Lcom/wssnps/base/smlvItemApi$smlCharSet_t;->CharSet:I

    .line 191
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static smlGetDefaultCharset(I)I
    .registers 2
    .parameter "nAppType"

    .prologue
    .line 229
    const/4 v0, 0x4

    .line 231
    .local v0, nCharSet:I
    packed-switch p0, :pswitch_data_10

    .line 255
    :goto_4
    return v0

    .line 235
    :pswitch_5
    const/4 v0, 0x4

    .line 236
    goto :goto_4

    .line 239
    :pswitch_7
    const/4 v0, 0x4

    .line 240
    goto :goto_4

    .line 243
    :pswitch_9
    const/4 v0, 0x4

    .line 244
    goto :goto_4

    .line 247
    :pswitch_b
    const/4 v0, 0x7

    .line 248
    goto :goto_4

    .line 251
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    .line 231
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public static smlGetEncodeType(I[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)I
    .registers 3
    .parameter "nField"
    .parameter "EncodeType"

    .prologue
    .line 196
    if-eqz p1, :cond_7

    .line 197
    aget-object v0, p1, p0

    iget v0, v0, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;->EncodeType:I

    .line 198
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static smlGetIsEscape(I)I
    .registers 2
    .parameter "nAppType"

    .prologue
    .line 204
    const/4 v0, 0x1

    .line 206
    .local v0, nRet:I
    packed-switch p0, :pswitch_data_10

    .line 224
    :goto_4
    return v0

    .line 209
    :pswitch_5
    const/4 v0, 0x0

    .line 210
    goto :goto_4

    .line 212
    :pswitch_7
    const/4 v0, 0x0

    .line 213
    goto :goto_4

    .line 215
    :pswitch_9
    const/4 v0, 0x0

    .line 216
    goto :goto_4

    .line 218
    :pswitch_b
    const/4 v0, 0x0

    .line 219
    goto :goto_4

    .line 221
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_4

    .line 206
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public static smlGetVitemEncTemplete(I)Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;
    .registers 2
    .parameter "AppType"

    .prologue
    .line 184
    sget-object v0, Lcom/wssnps/base/smlvItemApi;->VItem_Enc_Templet:[Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static vCardGetSPEEDDIAL(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/util/ArrayList;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wssnps/base/smlVItemItem;",
            "Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2150
    .line 2155
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2157
    iget-object v5, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    move v2, v0

    move v1, v0

    .line 2159
    :goto_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_11

    .line 2184
    :cond_10
    return-object v4

    .line 2161
    :cond_11
    const-string v3, ","

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 2162
    if-nez v0, :cond_10

    .line 2165
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2b

    .line 2167
    const/4 v0, 0x1

    .line 2168
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2179
    :goto_21
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2181
    add-int/lit8 v3, v3, 0x1

    .line 2159
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_a

    .line 2172
    :cond_2b
    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method
