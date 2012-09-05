.class public Lcom/syncmldstmo/base/vitem/smlvItemApi;
.super Ljava/lang/Object;
.source "smlvItemApi.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;,
        Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;,
        Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;
    }
.end annotation


# static fields
.field public static CREF:Ljava/lang/String;

.field public static VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

.field public static tools:Lcom/syncmldstmo/base/vitem/smlVItemTools;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 19
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlVItemTools;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlVItemTools;-><init>()V

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->tools:Lcom/syncmldstmo/base/vitem/smlVItemTools;

    .line 20
    const-string v0, "\r\n"

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CREF:Ljava/lang/String;

    .line 68
    new-array v0, v7, [Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    .line 72
    sget-object v6, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    new-instance v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;-><init>(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;)V

    aput-object v0, v6, v1

    .line 73
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    const/16 v2, 0x17

    new-array v2, v2, [Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    iput-object v2, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    .line 74
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    const/16 v2, 0x17

    new-array v2, v2, [Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    iput-object v2, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    .line 75
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    const/16 v2, 0x11

    new-array v2, v2, [Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    iput-object v2, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    .line 76
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    const/16 v2, 0x11

    new-array v2, v2, [Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    iput-object v2, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    .line 78
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v1, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v1

    .line 79
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v10, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v10

    .line 80
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v9, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v9

    .line 81
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v8, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v8

    .line 82
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v7, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v7

    .line 83
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/4 v2, 0x5

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 84
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/4 v2, 0x6

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 85
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/4 v2, 0x7

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 86
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x8

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 87
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x9

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 88
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xa

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 89
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xb

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 90
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xc

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 91
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xd

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 92
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xe

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xe

    invoke-direct {v3, v4, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 93
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xf

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 94
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x10

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x10

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 95
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x11

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x11

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 96
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x12

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x12

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 97
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x13

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x13

    invoke-direct {v3, v4, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 98
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x14

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 99
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x15

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x15

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 100
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x16

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x16

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 102
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v1, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v1

    .line 103
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v10, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v10

    .line 104
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v9, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v9

    .line 105
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v8, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v8

    .line 106
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v7, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v7

    .line 107
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/4 v2, 0x5

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 108
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/4 v2, 0x6

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 109
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/4 v2, 0x7

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 110
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x8

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 111
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x9

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 112
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xa

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 113
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xb

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 114
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xc

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 115
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xd

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 116
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xe

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xe

    invoke-direct {v3, v4, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 117
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xf

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 118
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x10

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x10

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 119
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x11

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x11

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 120
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x12

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x12

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 121
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x13

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x13

    invoke-direct {v3, v4, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 122
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x14

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 123
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x15

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x15

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 124
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x16

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x16

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 127
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v1, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v1

    .line 128
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v10, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v10

    .line 129
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v9, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v9

    .line 130
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v8, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v8

    .line 131
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-direct {v2, v7, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v2, v0, v7

    .line 132
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/4 v2, 0x5

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 133
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/4 v2, 0x6

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 134
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/4 v2, 0x7

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 135
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x8

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 136
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x9

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 137
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xa

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 138
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xb

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 139
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xc

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 140
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xd

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 141
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xe

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0xe

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 142
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0xf

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x12

    invoke-direct {v3, v4, v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 143
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v2, 0x10

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 146
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v1, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v1

    .line 147
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v10, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v10

    .line 148
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v9, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v9

    .line 149
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v8, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v8

    .line 150
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-direct {v2, v7, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v2, v0, v7

    .line 151
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/4 v2, 0x5

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 152
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/4 v2, 0x6

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 153
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/4 v2, 0x7

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 154
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x8

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 155
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x9

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 156
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xa

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 157
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xb

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 158
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xc

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 159
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xd

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 160
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xe

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0xe

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 161
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0xf

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x12

    invoke-direct {v3, v4, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 162
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v2, 0x10

    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;-><init>(II)V

    aput-object v3, v0, v2

    .line 163
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckCharset(Ljava/lang/String;)I
    .registers 4
    .parameter "Tag"

    .prologue
    const/4 v2, -0x1

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, nCharset:I
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_10

    .line 270
    const/4 v0, 0x4

    .line 296
    :goto_f
    return v0

    .line 272
    :cond_10
    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1a

    .line 274
    const/4 v0, 0x2

    goto :goto_f

    .line 276
    :cond_1a
    const-string v1, "ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_24

    .line 278
    const/4 v0, 0x1

    goto :goto_f

    .line 280
    :cond_24
    const-string v1, "UTF-7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2e

    .line 282
    const/4 v0, 0x3

    goto :goto_f

    .line 284
    :cond_2e
    const-string v1, "UCS2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_38

    .line 286
    const/4 v0, 0x6

    goto :goto_f

    .line 288
    :cond_38
    const-string v1, "SHIFT_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_42

    .line 290
    const/4 v0, 0x7

    goto :goto_f

    .line 294
    :cond_42
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static CheckEncoding(Ljava/lang/String;)I
    .registers 4
    .parameter "Tag"

    .prologue
    const/4 v2, -0x1

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, EncodingType:I
    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_10

    .line 242
    const/4 v0, 0x2

    .line 260
    :goto_f
    return v0

    .line 244
    :cond_10
    const-string v1, "BASE64"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1a

    .line 246
    const/4 v0, 0x1

    goto :goto_f

    .line 248
    :cond_1a
    const-string v1, "7BIT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_24

    .line 250
    const/4 v0, 0x4

    goto :goto_f

    .line 252
    :cond_24
    const-string v1, "8BIT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2e

    .line 254
    const/4 v0, 0x5

    goto :goto_f

    .line 258
    :cond_2e
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static DecodingCharSplit(Ljava/lang/String;C)Ljava/util/Vector;
    .registers 8
    .parameter "str"
    .parameter "split"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x5c

    .line 2373
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 2374
    .local v3, vectorData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2376
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2378
    .local v1, nLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v1, :cond_7b

    .line 2380
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_61

    .line 2382
    add-int/lit8 v4, v0, 0x1

    if-ge v4, v1, :cond_59

    .line 2384
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_38

    .line 2386
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2387
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2378
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2389
    :cond_38
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_51

    .line 2391
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2392
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 2396
    :cond_51
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 2401
    :cond_59
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 2404
    :cond_61
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_73

    .line 2406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2407
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_35

    .line 2411
    :cond_73
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 2415
    :cond_7b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_88

    .line 2417
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2420
    :cond_88
    return-object v3
.end method

.method public static DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;
    .registers 10
    .parameter "Data"
    .parameter "DataLen"
    .parameter "EncodingType"
    .parameter "nCharset"
    .parameter "nIsEscape"

    .prologue
    .line 2250
    const/4 v0, 0x0

    .line 2251
    .local v0, Target:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2253
    .local v2, szTemp:Ljava/lang/String;
    invoke-static {p0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    if-nez p1, :cond_c

    .line 2254
    :cond_a
    const/4 v3, 0x0

    .line 2321
    :goto_b
    return-object v3

    .line 2263
    :cond_c
    const/16 v3, 0x960

    if-lt p1, v3, :cond_10

    .line 2268
    :cond_10
    if-eqz p4, :cond_1d

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1d

    .line 2271
    sget-object v3, Lcom/syncmldstmo/base/vitem/smlvItemApi;->tools:Lcom/syncmldstmo/base/vitem/smlVItemTools;

    const/16 v4, 0x800

    invoke-virtual {v3, p0, v4}, Lcom/syncmldstmo/base/vitem/smlVItemTools;->DecodeEscapeChar(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 2274
    :cond_1d
    packed-switch p2, :pswitch_data_46

    .line 2297
    move-object v2, p0

    .line 2301
    :goto_21
    packed-switch p3, :pswitch_data_50

    .line 2318
    :pswitch_24
    move-object v0, v2

    :goto_25
    :pswitch_25
    move-object v3, v0

    .line 2321
    goto :goto_b

    .line 2278
    :pswitch_27
    const-string v2, ""

    .line 2281
    :try_start_29
    invoke-static {p0}, Lcom/syncmldstmo/base/smlQP;->decodeQP(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2c
    .catch Lcom/syncmldstmo/base/smlMimeException; {:try_start_29 .. :try_end_2c} :catch_2e

    move-result-object v2

    goto :goto_21

    .line 2283
    :catch_2e
    move-exception v1

    .line 2285
    .local v1, e:Lcom/syncmldstmo/base/smlMimeException;
    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlMimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_21

    .line 2290
    .end local v1           #e:Lcom/syncmldstmo/base/smlMimeException;
    :pswitch_37
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlBase64;->decode([B)[B

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2291
    goto :goto_21

    .line 2304
    :pswitch_44
    move-object v0, v2

    .line 2305
    goto :goto_25

    .line 2274
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_37
        :pswitch_27
        :pswitch_27
    .end packed-switch

    .line 2301
    :pswitch_data_50
    .packed-switch 0x2
        :pswitch_25
        :pswitch_24
        :pswitch_44
        :pswitch_24
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method public static EncodeEscapeData(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 2327
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2328
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2330
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_56

    .line 2332
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_28

    .line 2334
    add-int/lit8 v2, v0, 0x1

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2335
    const-string v2, "\\\\"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2336
    add-int/lit8 v0, v0, 0x1

    .line 2330
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2338
    :cond_28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_3f

    .line 2340
    add-int/lit8 v2, v0, 0x1

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2341
    const-string v2, "\\;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2342
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 2344
    :cond_3f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_25

    .line 2346
    add-int/lit8 v2, v0, 0x1

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2347
    const-string v2, "\\,"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2348
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 2351
    :cond_56
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static VCalALARM2STRING(ILcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 16
    .parameter "nTag"
    .parameter "pAlarm"
    .parameter "vItemConfig"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1373
    const/4 v0, 0x0

    .line 1374
    .local v0, Tag:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1376
    .local v7, retData:Ljava/lang/String;
    const-string v5, ""

    .line 1377
    .local v5, pData:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1378
    .local v6, pWork:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1384
    .local v1, bIsTime:Z
    if-nez p1, :cond_c

    .line 1385
    const/4 v8, 0x0

    .line 1481
    :goto_b
    return-object v8

    .line 1387
    :cond_c
    iget-object v8, p2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-static {p0, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetCharset(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;)I

    move-result v2

    .line 1388
    .local v2, nCharset:I
    iget-object v8, p2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-static {p0, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetEncodeType(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;)I

    move-result v3

    .line 1389
    .local v3, nEncodeType:I
    const/4 v4, 0x0

    .line 1391
    .local v4, nIsEscape:Z
    sget-object v8, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {p0, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    .line 1392
    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1393
    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1396
    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    if-eqz v8, :cond_3f

    .line 1398
    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v5

    .line 1400
    :cond_3f
    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1402
    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    if-eqz v8, :cond_158

    .line 1404
    const-string v6, "P"

    .line 1406
    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->weekDay:I

    if-lez v8, :cond_6d

    .line 1408
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->weekDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1409
    const-string v8, "W"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1412
    :cond_6d
    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->year:I

    if-lez v8, :cond_8f

    .line 1414
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->year:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1415
    const-string v8, "Y"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1418
    :cond_8f
    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->month:I

    if-lez v8, :cond_b1

    .line 1420
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->month:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1421
    const-string v8, "M"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1424
    :cond_b1
    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->monthDay:I

    if-lez v8, :cond_d3

    .line 1426
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->monthDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1427
    const-string v8, "D"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1430
    :cond_d3
    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->hour:I

    if-lez v8, :cond_fe

    .line 1432
    if-nez v1, :cond_e2

    .line 1434
    const-string v8, "T"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1435
    const/4 v1, 0x1

    .line 1437
    :cond_e2
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->hour:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1438
    const-string v8, "H"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1441
    :cond_fe
    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->minute:I

    if-lez v8, :cond_129

    .line 1443
    if-nez v1, :cond_10d

    .line 1445
    const-string v8, "T"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1446
    const/4 v1, 0x1

    .line 1448
    :cond_10d
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->minute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1449
    const-string v8, "M"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1452
    :cond_129
    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->second:I

    if-lez v8, :cond_154

    .line 1454
    if-nez v1, :cond_138

    .line 1456
    const-string v8, "T"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1457
    const/4 v1, 0x1

    .line 1459
    :cond_138
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->second:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1460
    const-string v8, "S"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1462
    :cond_154
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1464
    :cond_158
    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1466
    iget v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->nRepeatCount:I

    if-lez v8, :cond_17a

    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    if-eqz v8, :cond_17a

    .line 1468
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->nRepeatCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1470
    :cond_17a
    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1472
    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->pString:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_192

    .line 1474
    iget-object v8, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->pString:Ljava/lang/String;

    invoke-static {v8, v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1477
    :cond_192
    move-object v7, v0

    .line 1478
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1479
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 1481
    goto/16 :goto_b
.end method

.method public static VCalALLDAY(I)Ljava/lang/String;
    .registers 5
    .parameter "nAllday"

    .prologue
    .line 1486
    const/4 v0, 0x0

    .line 1487
    .local v0, retData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1489
    .local v1, tag:Ljava/lang/String;
    const/16 v2, 0x14

    sget-object v3, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v1

    .line 1490
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1492
    move-object v0, v1

    .line 1493
    const/4 v2, 0x1

    if-ne p0, v2, :cond_21

    .line 1494
    const-string v2, "TRUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1498
    :goto_1a
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1500
    return-object v0

    .line 1496
    :cond_21
    const-string v2, "FALSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public static VCalBEGIN(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "szVer"

    .prologue
    .line 1290
    const/4 v0, 0x0

    .line 1292
    .local v0, ret:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    sget-object v3, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":VCALENDAR\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VERSION:"

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

    .line 1294
    return-object v0
.end method

.method public static VCalEND()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1299
    const-string v0, "END:VCALENDAR\r\n"

    return-object v0
.end method

.method public static VCalENUM(IILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;
    .registers 6
    .parameter "nTag"
    .parameter "nEnum"
    .parameter "VItemTag"

    .prologue
    .line 1334
    const/4 v0, 0x0

    .line 1335
    .local v0, retData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1344
    .local v1, tag:Ljava/lang/String;
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {p0, v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v1

    .line 1347
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1349
    move-object v0, v1

    .line 1350
    invoke-static {p1, p2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1351
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1353
    return-object v0
.end method

.method public static VCalGetALARM(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;
    .registers 11
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 1963
    const/4 v0, 0x0

    .line 1965
    .local v0, EncodingType:I
    const/4 v4, 0x1

    .line 1967
    .local v4, nIsEscape:Z
    const/4 v5, 0x0

    .line 1968
    .local v5, szData:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1970
    .local v6, szTmp:[Ljava/lang/String;
    iget-object v7, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v0

    .line 1971
    iget-object v7, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v3

    .line 1972
    .local v3, nCharSet:I
    if-nez v3, :cond_18

    .line 1974
    iget v7, p1, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v3

    .line 1977
    :cond_18
    new-instance v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    invoke-direct {v1}, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;-><init>()V

    .line 1979
    .local v1, alarm:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;
    iget-object v7, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v7}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 1980
    const/4 v7, 0x0

    .line 2024
    :goto_26
    return-object v7

    .line 1982
    :cond_27
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    .line 1984
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    .line 1985
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1987
    const/4 v2, 0x0

    .local v2, i:I
    :goto_32
    array-length v7, v6

    if-ge v2, v7, :cond_68

    .line 1990
    aget-object v7, v6, v2

    invoke-static {v7}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 1992
    packed-switch v2, :pswitch_data_84

    .line 1987
    :cond_40
    :goto_40
    :pswitch_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1995
    :pswitch_43
    aget-object v7, v6, v2

    invoke-static {v7}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemStringTimeToVItemTime(Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v7

    iput-object v7, v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    goto :goto_40

    .line 2007
    :pswitch_4c
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->nRepeatCount:I

    goto :goto_40

    .line 2010
    :pswitch_59
    aget-object v7, v6, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8, v0, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->pString:Ljava/lang/String;

    goto :goto_40

    .line 2016
    :cond_68
    iget-object v7, v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    if-nez v7, :cond_7c

    iget-object v7, v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->SnoozeTime:Landroid/text/format/Time;

    if-nez v7, :cond_7c

    iget v7, v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->nRepeatCount:I

    if-nez v7, :cond_7c

    iget-object v7, v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->pString:Ljava/lang/String;

    invoke-static {v7}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_81

    .line 2018
    :cond_7c
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->bUsed:Z

    :goto_7f
    move-object v7, v1

    .line 2024
    goto :goto_26

    .line 2022
    :cond_81
    const/4 v1, 0x0

    goto :goto_7f

    .line 1992
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_43
        :pswitch_40
        :pswitch_4c
        :pswitch_59
    .end packed-switch
.end method

.method public static VCalGetALLDAY(Lcom/syncmldstmo/base/vitem/smlVItemItem;)I
    .registers 4
    .parameter "item"

    .prologue
    .line 1602
    const/4 v0, 0x0

    .line 1604
    .local v0, nALLDAY:I
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1605
    const/4 v1, 0x0

    .line 1618
    :goto_a
    return v1

    .line 1608
    :cond_b
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    .line 1609
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "SET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1610
    :cond_27
    const/4 v0, 0x1

    .line 1615
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 1616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nALLDAY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    move v1, v0

    .line 1618
    goto :goto_a

    .line 1612
    :cond_58
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static VCalGetENUM(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)I
    .registers 5
    .parameter "item"
    .parameter "VItemTag"

    .prologue
    .line 1927
    const/4 v0, 0x0

    .line 1929
    .local v0, nEnum:I
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1931
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagEnum(Ljava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)I

    move-result v0

    .line 1939
    :goto_f
    return v0

    .line 1935
    :cond_10
    const/high16 v1, 0x2

    const-string v2, "Warning!!! There is no ENUM"

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1936
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public static VCalGetPRIORITY(Lcom/syncmldstmo/base/vitem/smlVItemItem;)I
    .registers 3
    .parameter "item"

    .prologue
    .line 1944
    const/4 v0, 0x0

    .line 1946
    .local v0, nPriority:I
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1948
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1950
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1a

    const/4 v1, 0x3

    if-le v0, v1, :cond_1a

    .line 1952
    const/4 v0, -0x1

    .line 1958
    :cond_1a
    :goto_1a
    return v0

    .line 1956
    :cond_1b
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method public static VCalGetRRULE(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Ljava/lang/String;
    .registers 12
    .parameter "item"

    .prologue
    .line 1623
    const/4 v0, 0x0

    .line 1624
    .local v0, RRULE:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1625
    .local v6, szData:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1626
    .local v7, szTmp:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1628
    .local v3, interval:I
    iget-object v8, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1629
    const/4 v8, 0x0

    .line 1922
    :goto_d
    return-object v8

    .line 1631
    :cond_e
    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    .line 1633
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1635
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1636
    const/4 v8, 0x0

    goto :goto_d

    .line 1640
    :cond_21
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x44

    if-ne v8, v9, :cond_a3

    .line 1647
    const-string v0, "FREQ=DAILY;WKST=SU"

    .line 1649
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1651
    .local v5, strInterval:Ljava/lang/String;
    const/4 v8, 0x1

    if-le v3, v8, :cond_4f

    .line 1653
    const-string v8, ";INTERVAL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1654
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1657
    :cond_4f
    const/4 v2, 0x1

    .local v2, idx:I
    :goto_50
    array-length v8, v7

    if-ge v2, v8, :cond_3bd

    .line 1659
    aget-object v8, v7, v2

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 1657
    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 1662
    :cond_5e
    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_76

    .line 1665
    const-string v8, ";UNTIL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1666
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    .line 1668
    :cond_76
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_8c

    .line 1670
    const-string v8, ";UNTIL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1671
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    .line 1673
    :cond_8c
    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_5b

    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-gt v8, v9, :cond_5b

    goto :goto_5b

    .line 1684
    .end local v2           #idx:I
    .end local v5           #strInterval:Ljava/lang/String;
    :cond_a3
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x57

    if-ne v8, v9, :cond_14c

    .line 1688
    const/4 v4, 0x0

    .line 1690
    .local v4, nCnt:I
    const-string v0, "FREQ=WEEKLY;WKST=SU"

    .line 1692
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1694
    .restart local v5       #strInterval:Ljava/lang/String;
    const/4 v8, 0x1

    if-le v3, v8, :cond_d2

    .line 1696
    const-string v8, ";INTERVAL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1697
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1700
    :cond_d2
    const/4 v2, 0x1

    .restart local v2       #idx:I
    :goto_d3
    array-length v8, v7

    if-ge v2, v8, :cond_3bd

    .line 1702
    aget-object v8, v7, v2

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e1

    .line 1700
    :cond_de
    :goto_de
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 1705
    :cond_e1
    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_f9

    .line 1708
    const-string v8, ";UNTIL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1709
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    .line 1711
    :cond_f9
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_10f

    .line 1713
    const-string v8, ";UNTIL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1714
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    .line 1716
    :cond_10f
    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_131

    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-gt v8, v9, :cond_131

    .line 1718
    aget-object v8, v7, v2

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-eq v8, v9, :cond_de

    goto :goto_de

    .line 1728
    :cond_131
    if-nez v4, :cond_142

    .line 1730
    const-string v8, ";BYDAY="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1736
    :cond_139
    :goto_139
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1737
    add-int/lit8 v4, v4, 0x1

    goto :goto_de

    .line 1732
    :cond_142
    const/4 v8, 0x1

    if-lt v4, v8, :cond_139

    .line 1734
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_139

    .line 1741
    .end local v2           #idx:I
    .end local v4           #nCnt:I
    .end local v5           #strInterval:Ljava/lang/String;
    :cond_14c
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_216

    .line 1745
    const-string v0, "FREQ=MONTHLY;WKST=SU"

    .line 1747
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1749
    .restart local v5       #strInterval:Ljava/lang/String;
    const/4 v8, 0x1

    if-le v3, v8, :cond_179

    .line 1751
    const-string v8, ";INTERVAL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1752
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1755
    :cond_179
    const/4 v2, 0x1

    .restart local v2       #idx:I
    :goto_17a
    array-length v8, v7

    if-ge v2, v8, :cond_3bd

    .line 1757
    aget-object v8, v7, v2

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_188

    .line 1755
    :cond_185
    :goto_185
    add-int/lit8 v2, v2, 0x1

    goto :goto_17a

    .line 1760
    :cond_188
    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_1a0

    .line 1763
    const-string v8, ";UNTIL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1764
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_185

    .line 1766
    :cond_1a0
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_1b6

    .line 1768
    const-string v8, ";UNTIL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1769
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_185

    .line 1771
    :cond_1b6
    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_200

    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-gt v8, v9, :cond_200

    .line 1773
    const-string v8, ";BYDAY="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1775
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d3
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_185

    .line 1777
    aget-object v8, v7, v2

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_1fd

    aget-object v8, v7, v2

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-gt v8, v9, :cond_1fd

    .line 1779
    aget-object v8, v7, v2

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1775
    :cond_1fd
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d3

    .line 1786
    .end local v1           #i:I
    :cond_200
    const-string v8, "BYDAY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20e

    .line 1787
    const-string v8, ";BYDAY="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1788
    :cond_20e
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_185

    .line 1792
    .end local v2           #idx:I
    .end local v5           #strInterval:Ljava/lang/String;
    :cond_216
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2a3

    .line 1797
    const-string v0, "FREQ=MONTHLY;WKST=SU"

    .line 1799
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1801
    .restart local v5       #strInterval:Ljava/lang/String;
    const/4 v8, 0x1

    if-le v3, v8, :cond_243

    .line 1803
    const-string v8, ";INTERVAL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1804
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1807
    :cond_243
    const/4 v2, 0x1

    .restart local v2       #idx:I
    :goto_244
    array-length v8, v7

    if-ge v2, v8, :cond_3bd

    .line 1809
    aget-object v8, v7, v2

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_252

    .line 1807
    :cond_24f
    :goto_24f
    add-int/lit8 v2, v2, 0x1

    goto :goto_244

    .line 1812
    :cond_252
    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_26a

    .line 1815
    const-string v8, ";UNTIL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1816
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24f

    .line 1818
    :cond_26a
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_280

    .line 1820
    const-string v8, ";UNTIL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1821
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24f

    .line 1823
    :cond_280
    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_24f

    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-gt v8, v9, :cond_24f

    .line 1825
    const-string v8, ";BYMONTHDAY="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1826
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24f

    .line 1835
    .end local v2           #idx:I
    .end local v5           #strInterval:Ljava/lang/String;
    :cond_2a3
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "YM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_330

    .line 1842
    const-string v0, "FREQ=YEARLY;WKST=SU"

    .line 1844
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1846
    .restart local v5       #strInterval:Ljava/lang/String;
    const/4 v8, 0x1

    if-le v3, v8, :cond_2d0

    .line 1848
    const-string v8, ";INTERVAL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1849
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1852
    :cond_2d0
    const/4 v2, 0x1

    .restart local v2       #idx:I
    :goto_2d1
    array-length v8, v7

    if-ge v2, v8, :cond_3bd

    .line 1854
    aget-object v8, v7, v2

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2df

    .line 1852
    :cond_2dc
    :goto_2dc
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d1

    .line 1857
    :cond_2df
    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_2f7

    .line 1860
    const-string v8, ";UNTIL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1861
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2dc

    .line 1863
    :cond_2f7
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_30d

    .line 1865
    const-string v8, ";UNTIL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1866
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2dc

    .line 1868
    :cond_30d
    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_2dc

    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-gt v8, v9, :cond_2dc

    .line 1870
    const-string v8, ";BYMONTH="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1871
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2dc

    .line 1880
    .end local v2           #idx:I
    .end local v5           #strInterval:Ljava/lang/String;
    :cond_330
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "YD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3bd

    .line 1882
    const-string v0, "FREQ=YEARLY;WKST=SU"

    .line 1884
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1886
    .restart local v5       #strInterval:Ljava/lang/String;
    const/4 v8, 0x1

    if-le v3, v8, :cond_35d

    .line 1888
    const-string v8, ";INTERVAL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1889
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1892
    :cond_35d
    const/4 v2, 0x1

    .restart local v2       #idx:I
    :goto_35e
    array-length v8, v7

    if-ge v2, v8, :cond_3bd

    .line 1894
    aget-object v8, v7, v2

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36c

    .line 1892
    :cond_369
    :goto_369
    add-int/lit8 v2, v2, 0x1

    goto :goto_35e

    .line 1897
    :cond_36c
    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_384

    .line 1900
    const-string v8, ";UNTIL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1901
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_369

    .line 1903
    :cond_384
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_39a

    .line 1905
    const-string v8, ";UNTIL="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1906
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_369

    .line 1908
    :cond_39a
    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_369

    aget-object v8, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-gt v8, v9, :cond_369

    .line 1910
    const-string v8, ";BYMONTHDAY="

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1911
    aget-object v8, v7, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_369

    .line 1921
    .end local v2           #idx:I
    .end local v5           #strInterval:Ljava/lang/String;
    :cond_3bd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RRULE : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    move-object v8, v0

    .line 1922
    goto/16 :goto_d
.end method

.method public static VCalPRIORITY(I)Ljava/lang/String;
    .registers 5
    .parameter "nPriority"

    .prologue
    .line 1358
    const/4 v0, 0x0

    .line 1359
    .local v0, retData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1361
    .local v1, tag:Ljava/lang/String;
    const/16 v2, 0xa

    sget-object v3, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v1

    .line 1362
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1364
    move-object v0, v1

    .line 1365
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1366
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1368
    return-object v0
.end method

.method public static VCalRRULE(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "rrule"

    .prologue
    const/4 v13, 0x6

    .line 1505
    const/4 v5, 0x0

    .line 1506
    .local v5, retData:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1507
    .local v8, tag:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1509
    .local v7, szTmp:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1510
    .local v1, count:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1511
    .local v9, until:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1513
    .local v4, option:Ljava/lang/String;
    const/4 v10, 0x5

    sget-object v11, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v10, v11}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v8

    .line 1514
    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1516
    const-string v10, ";"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1518
    const-string v10, "DAILY"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_39

    .line 1519
    const-string v10, "D1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1531
    :cond_28
    :goto_28
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_29
    array-length v10, v7

    if-ge v3, v10, :cond_15d

    .line 1533
    aget-object v10, v7, v3

    const-string v11, "WKST="

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a4

    .line 1531
    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1520
    .end local v3           #idx:I
    :cond_39
    const-string v10, "WEEKLY"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_48

    .line 1521
    const-string v10, "W1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_28

    .line 1522
    :cond_48
    const-string v10, "MONTHLY"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5f

    const-string v10, "BYDAY"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 1523
    const-string v10, "MP1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_28

    .line 1524
    :cond_5f
    const-string v10, "MONTHLY"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_76

    const-string v10, "BYMONTHDAY"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_76

    .line 1525
    const-string v10, "MD1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_28

    .line 1526
    :cond_76
    const-string v10, "YEARLY"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8d

    const-string v10, "BYMONTHDAY"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 1527
    const-string v10, "YM1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_28

    .line 1528
    :cond_8d
    const-string v10, "YEARLY"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_28

    const-string v10, "BYMONTH"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 1529
    const-string v10, "YD1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_28

    .line 1537
    .restart local v3       #idx:I
    :cond_a4
    aget-object v10, v7, v3

    const-string v11, "BYDAY="

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 1539
    aget-object v10, v7, v3

    aget-object v11, v7, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1540
    .local v0, byDay:Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1542
    .local v6, szDay:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c1
    array-length v10, v6

    if-ge v2, v10, :cond_36

    .line 1544
    if-nez v2, :cond_cb

    .line 1546
    aget-object v4, v6, v2

    .line 1542
    :goto_c8
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    .line 1550
    :cond_cb
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1551
    aget-object v10, v6, v2

    invoke-virtual {v4, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_c8

    .line 1555
    .end local v0           #byDay:Ljava/lang/String;
    .end local v2           #i:I
    .end local v6           #szDay:[Ljava/lang/String;
    :cond_d8
    aget-object v10, v7, v3

    const-string v11, "BYMONTH="

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f2

    .line 1557
    aget-object v10, v7, v3

    const/16 v11, 0x8

    aget-object v12, v7, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_36

    .line 1559
    :cond_f2
    aget-object v10, v7, v3

    const-string v11, "BYMONTHDAY="

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10c

    .line 1561
    aget-object v10, v7, v3

    const/16 v11, 0xb

    aget-object v12, v7, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_36

    .line 1563
    :cond_10c
    aget-object v10, v7, v3

    const-string v11, "UNTIL="

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_132

    .line 1565
    aget-object v10, v7, v3

    aget-object v11, v7, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1566
    const-string v10, "T"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_36

    .line 1568
    const-string v10, "T000000Z"

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_36

    .line 1571
    :cond_132
    aget-object v10, v7, v3

    const-string v11, "COUNT="

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 1573
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v7, v3

    aget-object v12, v7, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_36

    .line 1577
    :cond_15d
    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_16d

    .line 1579
    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1580
    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1582
    :cond_16d
    invoke-static {v9}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_17d

    .line 1584
    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1585
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1587
    :cond_17d
    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_18d

    .line 1589
    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1590
    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1593
    :cond_18d
    move-object v5, v8

    .line 1594
    const-string v10, "\r\n"

    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1596
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "retData : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 1597
    return-object v5
.end method

.method public static VCardADR(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 9
    .parameter "ADR"
    .parameter "vItemConfig"

    .prologue
    const/16 v6, 0xa

    .line 634
    const/4 v1, 0x0

    .line 635
    .local v1, addrData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 637
    .local v0, Tag:Ljava/lang/String;
    const/4 v2, 0x0

    .line 641
    .local v2, nCharset:I
    if-nez p0, :cond_9

    .line 642
    const/4 v5, 0x0

    .line 703
    :goto_8
    return-object v5

    .line 644
    :cond_9
    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-static {v6, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetCharset(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;)I

    move-result v2

    .line 645
    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-static {v6, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetEncodeType(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;)I

    move-result v3

    .line 646
    .local v3, nEncodeType:I
    const/4 v4, 0x1

    .line 648
    .local v4, nIsEscape:Z
    const-string v0, "ADR"

    .line 649
    iget v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->type:I

    sget-object v6, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TYPE:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardEnumToTypeString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    if-eqz p0, :cond_4e

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 657
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    invoke-static {v5, v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    :cond_4e
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    if-eqz p0, :cond_68

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_68

    .line 663
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    invoke-static {v5, v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    :cond_68
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    if-eqz p0, :cond_82

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 669
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    invoke-static {v5, v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    :cond_82
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    if-eqz p0, :cond_9c

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9c

    .line 675
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    invoke-static {v5, v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    :cond_9c
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    if-eqz p0, :cond_b6

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b6

    .line 681
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    invoke-static {v5, v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    :cond_b6
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    if-eqz p0, :cond_d0

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d0

    .line 687
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    invoke-static {v5, v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    :cond_d0
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    if-eqz p0, :cond_ea

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ea

    .line 693
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    invoke-static {v5, v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    :cond_ea
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "string : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 699
    move-object v1, v0

    .line 700
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CREF:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 701
    const/4 v0, 0x0

    move-object v5, v1

    .line 703
    goto/16 :goto_8
.end method

.method public static VCardBEGIN()Ljava/lang/String;
    .registers 5

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, retStr:Ljava/lang/String;
    const/4 v1, 0x0

    .line 493
    .local v1, szVer:Ljava/lang/String;
    const-string v1, "2.1"

    .line 494
    const-string v2, "\r\n"

    sput-object v2, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CREF:Ljava/lang/String;

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CREF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    const/16 v2, 0xf

    sget-object v3, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CREF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    return-object v0
.end method

.method public static VCardCLASS(I)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 823
    const/4 v0, 0x0

    .line 826
    .local v0, Tag:Ljava/lang/String;
    const-string v0, "CLASS:"

    .line 828
    if-nez p0, :cond_12

    .line 829
    const-string v1, "PUBLIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    :cond_b
    :goto_b
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CREF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    return-object v0

    .line 830
    :cond_12
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1c

    .line 831
    const-string v1, "PRIVATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 832
    :cond_1c
    const/4 v1, 0x2

    if-ne p0, v1, :cond_b

    .line 833
    const-string v1, "CONFIDENTIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static VCardDATE(ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "nTag"
    .parameter "evnet"

    .prologue
    const/16 v10, 0x30

    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, Tag:Ljava/lang/String;
    const/4 v1, 0x0

    .line 773
    .local v1, date:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 774
    .local v3, month:Ljava/lang/String;
    const/4 v2, 0x0

    .line 776
    .local v2, day:Ljava/lang/String;
    const-string v4, "\\-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 778
    array-length v4, v1

    if-ge v4, v6, :cond_17

    .line 779
    const-string v4, ""

    .line 801
    :goto_16
    return-object v4

    .line 781
    :cond_17
    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v9, :cond_97

    aget-object v4, v1, v7

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v10, :cond_97

    .line 782
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 786
    :goto_40
    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v9, :cond_9a

    aget-object v4, v1, v6

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v10, :cond_9a

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 792
    :goto_69
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {p0, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    .line 793
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    aget-object v4, v1, v8

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CREF:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 801
    goto :goto_16

    .line 784
    :cond_97
    aget-object v3, v1, v7

    goto :goto_40

    .line 789
    :cond_9a
    aget-object v2, v1, v6

    goto :goto_69
.end method

.method public static VCardEND()Ljava/lang/String;
    .registers 1

    .prologue
    .line 508
    const-string v0, "END:VCARD"

    return-object v0
.end method

.method public static VCardENUMITEM(ILjava/lang/String;ILcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 10
    .parameter "nTag"
    .parameter "Data"
    .parameter "nType"
    .parameter "vItemConfig"

    .prologue
    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, enData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 519
    .local v0, Tag:Ljava/lang/String;
    invoke-static {p1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 520
    const/4 v5, 0x0

    .line 535
    :goto_9
    return-object v5

    .line 522
    :cond_a
    iget-object v5, p3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-static {p0, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetCharset(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;)I

    move-result v2

    .line 523
    .local v2, nCharset:I
    iget-object v5, p3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-static {p0, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetEncodeType(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;)I

    move-result v3

    .line 524
    .local v3, nEncodeType:I
    iget v5, p3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetIsEscape(I)Z

    move-result v4

    .line 526
    .local v4, nIsEscape:Z
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {p0, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    .line 527
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TYPE:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {p2, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardEnumToTypeString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {v0, p1, v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendTagEncodeData(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 535
    goto :goto_9
.end method

.method public static VCardEnumToTypeString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;
    .registers 7
    .parameter "nType"
    .parameter "VItemTag"

    .prologue
    .line 843
    if-nez p0, :cond_5

    .line 844
    const-string v4, ""

    .line 880
    :goto_4
    return-object v4

    .line 846
    :cond_5
    const/4 v2, 0x0

    .line 847
    .local v2, nCnt:I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 849
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 855
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->_list:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_47

    .line 857
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->_list:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 862
    .local v1, n:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, p0

    if-eqz v4, :cond_44

    .line 864
    add-int/lit8 v2, v2, 0x1

    .line 865
    const/4 v4, 0x1

    if-le v2, v4, :cond_32

    .line 870
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 872
    :cond_32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 874
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr p0, v4

    .line 855
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 878
    .end local v1           #n:Ljava/lang/Integer;
    :cond_47
    if-nez v2, :cond_4c

    .line 879
    const-string v4, ""

    goto :goto_4

    .line 880
    :cond_4c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method public static VCardGetADR(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    .registers 11
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 1117
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;-><init>()V

    .line 1119
    .local v0, Address:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    const/4 v1, 0x0

    .line 1121
    .local v1, EncodingType:I
    const/4 v4, 0x1

    .line 1123
    .local v4, nIsEscape:Z
    const/4 v6, 0x0

    .line 1125
    .local v6, szData:Ljava/lang/String;
    if-eqz v0, :cond_cf

    .line 1127
    iget-object v8, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->type:I

    .line 1129
    iget-object v8, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v1

    .line 1130
    iget-object v8, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v3

    .line 1131
    .local v3, nCharSet:I
    if-nez v3, :cond_26

    .line 1133
    iget v8, p1, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v3

    .line 1136
    :cond_26
    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    .line 1138
    const/16 v8, 0x3b

    invoke-static {v6, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingCharSplit(Ljava/lang/String;C)Ljava/util/Vector;

    move-result-object v7

    .line 1140
    .local v7, vectorData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2f
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v2, v8, :cond_94

    .line 1142
    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1144
    .local v5, szAddr:Ljava/lang/String;
    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_44

    .line 1146
    packed-switch v2, :pswitch_data_d2

    .line 1140
    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1149
    :pswitch_47
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v8, v1, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    goto :goto_44

    .line 1152
    :pswitch_52
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v8, v1, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    goto :goto_44

    .line 1155
    :pswitch_5d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v8, v1, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    goto :goto_44

    .line 1158
    :pswitch_68
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v8, v1, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    goto :goto_44

    .line 1161
    :pswitch_73
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v8, v1, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    goto :goto_44

    .line 1164
    :pswitch_7e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v8, v1, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    goto :goto_44

    .line 1167
    :pswitch_89
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v8, v1, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    goto :goto_44

    .line 1173
    .end local v5           #szAddr:Ljava/lang/String;
    :cond_94
    iget-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_cc

    iget-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_cc

    iget-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_cc

    iget-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_cc

    iget-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_cc

    iget-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_cc

    iget-object v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d0

    .line 1177
    :cond_cc
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->isValid:Z

    .line 1184
    .end local v2           #i:I
    .end local v3           #nCharSet:I
    .end local v7           #vectorData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_cf
    :goto_cf
    return-object v0

    .line 1181
    .restart local v2       #i:I
    .restart local v3       #nCharSet:I
    .restart local v7       #vectorData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_d0
    const/4 v0, 0x0

    goto :goto_cf

    .line 1146
    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_47
        :pswitch_52
        :pswitch_5d
        :pswitch_68
        :pswitch_73
        :pswitch_7e
        :pswitch_89
    .end packed-switch
.end method

.method public static VCardGetDATE(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Ljava/lang/String;
    .registers 10
    .parameter "item"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 944
    const/4 v0, 0x0

    .line 945
    .local v0, bday:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    .line 947
    .local v1, date:[Ljava/lang/String;
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 949
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 952
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 963
    :goto_23
    aget-object v0, v1, v4

    .line 964
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    aget-object v2, v1, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 966
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 967
    aget-object v2, v1, v6

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 969
    :cond_3d
    return-object v0

    .line 957
    :cond_3e
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 958
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 959
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    goto :goto_23
.end method

.method public static VCardGetENUMITEM(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    .registers 8
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 1056
    const/4 v0, 0x0

    .line 1057
    .local v0, EncodingType:I
    const/4 v2, 0x0

    .line 1058
    .local v2, nCharSet:I
    const/4 v3, 0x0

    .line 1059
    .local v3, nIsEscape:Z
    new-instance v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    invoke-direct {v1}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1061
    .local v1, EnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    if-eqz v1, :cond_3f

    .line 1063
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v0

    .line 1064
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v2

    .line 1065
    if-nez v2, :cond_20

    .line 1067
    iget v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->nTagNo:I

    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetCharset(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;)I

    move-result v2

    .line 1070
    :cond_20
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->type:I

    .line 1071
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5, v0, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1073
    iget-object v4, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1075
    const/4 v1, 0x0

    .line 1078
    :cond_3f
    return-object v1
.end method

.method public static VCardGetN(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;
    .registers 11
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 885
    new-instance v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    invoke-direct {v1}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;-><init>()V

    .line 887
    .local v1, N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;
    const/4 v0, 0x0

    .line 889
    .local v0, EncodingType:I
    const/4 v4, 0x1

    .line 891
    .local v4, nIsEscape:Z
    const/4 v5, 0x0

    .line 893
    .local v5, szData:Ljava/lang/String;
    iget-object v8, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v0

    .line 894
    iget-object v8, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v3

    .line 895
    .local v3, nCharSet:I
    if-nez v3, :cond_1c

    .line 897
    iget v8, p1, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v3

    .line 900
    :cond_1c
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    .line 902
    const/16 v8, 0x3b

    invoke-static {v5, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingCharSplit(Ljava/lang/String;C)Ljava/util/Vector;

    move-result-object v7

    .line 904
    .local v7, vectorData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_25
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v2, v8, :cond_74

    .line 906
    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 908
    .local v6, szName:Ljava/lang/String;
    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 910
    packed-switch v2, :pswitch_data_a2

    .line 904
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 913
    :pswitch_3d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v8, v0, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    goto :goto_3a

    .line 916
    :pswitch_48
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v8, v0, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    goto :goto_3a

    .line 919
    :pswitch_53
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v8, v0, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->addition:Ljava/lang/String;

    goto :goto_3a

    .line 922
    :pswitch_5e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v8, v0, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    goto :goto_3a

    .line 925
    :pswitch_69
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v8, v0, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    goto :goto_3a

    .line 931
    .end local v6           #szName:Ljava/lang/String;
    :cond_74
    iget-object v8, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9c

    iget-object v8, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9c

    iget-object v8, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->addition:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9c

    iget-object v8, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9c

    iget-object v8, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a0

    .line 933
    :cond_9c
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->isValid:Z

    .line 939
    :goto_9f
    return-object v1

    .line 937
    :cond_a0
    const/4 v1, 0x0

    goto :goto_9f

    .line 910
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_48
        :pswitch_53
        :pswitch_5e
        :pswitch_69
    .end packed-switch
.end method

.method public static VCardGetORG(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    .registers 11
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 1189
    new-instance v4, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;

    invoke-direct {v4}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;-><init>()V

    .line 1191
    .local v4, org:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    const/4 v0, 0x0

    .line 1193
    .local v0, EncodingType:I
    const/4 v3, 0x1

    .line 1195
    .local v3, nIsEscape:Z
    const/4 v5, 0x0

    .line 1197
    .local v5, szData:Ljava/lang/String;
    if-eqz v4, :cond_96

    .line 1199
    iget-object v8, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->type:I

    .line 1201
    iget-object v8, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v0

    .line 1202
    iget-object v8, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v2

    .line 1203
    .local v2, nCharSet:I
    if-nez v2, :cond_26

    .line 1205
    iget v8, p1, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v2

    .line 1208
    :cond_26
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    .line 1210
    const/16 v8, 0x3b

    invoke-static {v5, v8}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingCharSplit(Ljava/lang/String;C)Ljava/util/Vector;

    move-result-object v7

    .line 1212
    .local v7, vectorData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2f
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v1, v8, :cond_73

    .line 1214
    invoke-virtual {v7, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1216
    .local v6, szOrg:Ljava/lang/String;
    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_44

    .line 1218
    packed-switch v1, :pswitch_data_9a

    .line 1212
    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1221
    :pswitch_47
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v8, v0, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    goto :goto_44

    .line 1224
    :pswitch_52
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v8, v0, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit1:Ljava/lang/String;

    goto :goto_44

    .line 1227
    :pswitch_5d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v8, v0, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    goto :goto_44

    .line 1230
    :pswitch_68
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v8, v0, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit3:Ljava/lang/String;

    goto :goto_44

    .line 1236
    .end local v6           #szOrg:Ljava/lang/String;
    :cond_73
    iget-object v8, v4, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_93

    iget-object v8, v4, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit1:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_93

    iget-object v8, v4, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_93

    iget-object v8, v4, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit3:Ljava/lang/String;

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_97

    .line 1238
    :cond_93
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->isValid:Z

    .line 1245
    .end local v1           #i:I
    .end local v2           #nCharSet:I
    .end local v7           #vectorData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_96
    :goto_96
    return-object v4

    .line 1242
    .restart local v1       #i:I
    .restart local v2       #nCharSet:I
    .restart local v7       #vectorData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_97
    const/4 v4, 0x0

    goto :goto_96

    .line 1218
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_47
        :pswitch_52
        :pswitch_5d
        :pswitch_68
    .end packed-switch
.end method

.method public static VCardGetPHOTO(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;
    .registers 6
    .parameter "item"
    .parameter "vItemConfig"

    .prologue
    .line 976
    const/4 v2, 0x0

    .line 977
    .local v2, szData:Ljava/lang/String;
    new-instance v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;

    invoke-direct {v1}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;-><init>()V

    .line 979
    .local v1, photo:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;
    if-eqz v1, :cond_22

    .line 981
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;->type:I

    .line 983
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v0

    .line 984
    .local v0, nCharSet:I
    if-nez v0, :cond_1e

    .line 986
    iget v3, p1, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v0

    .line 989
    :cond_1e
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    .line 990
    iput-object v2, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;->Binary:Ljava/lang/String;

    .line 992
    .end local v0           #nCharSet:I
    :cond_22
    return-object v1
.end method

.method public static VCardGetTEL(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    .registers 7
    .parameter "item"

    .prologue
    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, EncodingType:I
    const/4 v2, 0x0

    .line 1085
    .local v2, nCharSet:I
    const/4 v3, 0x0

    .line 1086
    .local v3, nIsEscape:Z
    new-instance v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    invoke-direct {v1}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1088
    .local v1, Tel:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v0

    .line 1089
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v2

    .line 1101
    if-eqz v1, :cond_2c

    .line 1103
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetType(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->type:I

    .line 1104
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5, v0, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1112
    :cond_2c
    return-object v1
.end method

.method public static VCardGetType(Ljava/lang/String;)I
    .registers 10
    .parameter "szTag"

    .prologue
    .line 1251
    const/4 v6, 0x0

    .line 1252
    .local v6, types:I
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TYPE:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    .line 1255
    .local v5, typehash:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;
    const-string v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1257
    .local v2, s:[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_a
    array-length v7, v2

    if-ge v0, v7, :cond_6b

    .line 1259
    aget-object v7, v2, v0

    const-string v8, "CHARSET="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_68

    aget-object v7, v2, v0

    const-string v8, "ENCODING="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 1261
    aget-object v7, v2, v0

    const-string v8, "TYPE="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 1263
    aget-object v7, v2, v0

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v0

    .line 1264
    aget-object v7, v2, v0

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1266
    .local v3, sp2:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3d
    array-length v7, v3

    if-ge v1, v7, :cond_68

    .line 1268
    aget-object v7, v3, v1

    invoke-virtual {v5, v7}, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1269
    .local v4, t:Ljava/lang/Integer;
    if-eqz v4, :cond_4d

    .line 1271
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    or-int/2addr v6, v7

    .line 1266
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 1275
    .end local v1           #j:I
    .end local v3           #sp2:[Ljava/lang/String;
    .end local v4           #t:Ljava/lang/Integer;
    :cond_50
    aget-object v7, v2, v0

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_68

    .line 1277
    aget-object v7, v2, v0

    invoke-virtual {v5, v7}, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1278
    .restart local v4       #t:Ljava/lang/Integer;
    if-eqz v4, :cond_68

    .line 1280
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    or-int/2addr v6, v7

    .line 1257
    .end local v4           #t:Ljava/lang/Integer;
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1285
    :cond_6b
    return v6
.end method

.method public static VCardGetVERSION(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;
    .registers 4
    .parameter "item"

    .prologue
    .line 1043
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 1045
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;->VCARD_V21:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    .line 1051
    .local v0, version:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;
    :goto_d
    return-object v0

    .line 1049
    .end local v0           #version:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;
    :cond_e
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;->VCARD_V30:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    .restart local v0       #version:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;
    goto :goto_d
.end method

.method public static VCardN(ILcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 11
    .parameter "nTag"
    .parameter "Name"
    .parameter "vItemConfig"

    .prologue
    .line 540
    const/4 v4, 0x0

    .line 541
    .local v4, nameData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 546
    .local v0, Tag:Ljava/lang/String;
    iget-object v5, p2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-static {p0, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetCharset(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;)I

    move-result v1

    .line 547
    .local v1, nCharset:I
    iget-object v5, p2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-static {p0, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetEncodeType(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;)I

    move-result v2

    .line 548
    .local v2, nEncodeType:I
    const/4 v3, 0x1

    .line 550
    .local v3, nIsEscape:Z
    const/high16 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start charset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", EncodeType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nIsEscape : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 552
    const-string v0, "N"

    .line 553
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    if-eqz p1, :cond_67

    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_67

    .line 559
    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v5, v1, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    :cond_67
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    if-eqz p1, :cond_81

    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_81

    .line 565
    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v5, v1, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    :cond_81
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    if-eqz p1, :cond_9b

    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->addition:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9b

    .line 571
    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->addition:Ljava/lang/String;

    invoke-static {v5, v1, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    :cond_9b
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    if-eqz p1, :cond_b5

    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b5

    .line 577
    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    invoke-static {v5, v1, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    :cond_b5
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    if-eqz p1, :cond_cf

    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_cf

    .line 583
    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    invoke-static {v5, v1, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    :cond_cf
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "szBuf : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 588
    move-object v4, v0

    .line 589
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CREF:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 590
    const/4 v0, 0x0

    .line 592
    return-object v4
.end method

.method public static VCardORG(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 9
    .parameter "org"
    .parameter "vItemConfig"

    .prologue
    const/16 v6, 0x9

    .line 708
    const/4 v4, 0x0

    .line 709
    .local v4, orgData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 715
    .local v0, Tag:Ljava/lang/String;
    if-nez p0, :cond_8

    .line 716
    const/4 v5, 0x0

    .line 766
    :goto_7
    return-object v5

    .line 718
    :cond_8
    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-static {v6, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetCharset(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;)I

    move-result v1

    .line 719
    .local v1, nCharset:I
    iget-object v5, p1, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-static {v6, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetEncodeType(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;)I

    move-result v2

    .line 720
    .local v2, nEncodeType:I
    const/4 v3, 0x1

    .line 722
    .local v3, nIsEscape:Z
    const-string v0, "ORG"

    .line 723
    iget v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->type:I

    sget-object v6, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TYPE:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardEnumToTypeString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 730
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    invoke-static {v5, v1, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    :cond_4b
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit1:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_63

    .line 736
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit1:Ljava/lang/String;

    invoke-static {v5, v1, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    :cond_63
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 742
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    invoke-static {v5, v1, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    :cond_7b
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit3:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_93

    .line 748
    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit3:Ljava/lang/String;

    invoke-static {v5, v1, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    :cond_93
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    move-object v4, v0

    .line 762
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CREF:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 764
    const/high16 v5, 0x2

    const-string v6, "End"

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v5, v4

    .line 766
    goto/16 :goto_7
.end method

.method public static VCardPHOTO(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 6
    .parameter "nTag"
    .parameter "Data"
    .parameter "vItemConfig"

    .prologue
    .line 806
    const/4 v0, 0x0

    .line 809
    .local v0, Tag:Ljava/lang/String;
    iget-object v2, p2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-static {p0, v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetEncodeType(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;)I

    move-result v1

    .line 811
    .local v1, nEncodeType:I
    const-string v0, "PHOTO"

    .line 812
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    const-string v2, "TYPE=JPEG:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CREF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    return-object v0
.end method

.method public static VEventBEGIN()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1304
    const-string v0, "BEGIN:VEVENT\r\n"

    return-object v0
.end method

.method public static VEventEND()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1309
    const-string v0, "END:VEVENT\r\n"

    return-object v0
.end method

.method public static VItemAppendCharset(I)Ljava/lang/String;
    .registers 2
    .parameter "nCharset"

    .prologue
    .line 311
    packed-switch p0, :pswitch_data_12

    .line 323
    :pswitch_3
    const-string v0, ""

    :goto_5
    return-object v0

    .line 314
    :pswitch_6
    const-string v0, ";CHARSET=UTF-8"

    goto :goto_5

    .line 316
    :pswitch_9
    const-string v0, ";CHARSET=UTF-7"

    goto :goto_5

    .line 318
    :pswitch_c
    const-string v0, ";CHARSET=LATIN1"

    goto :goto_5

    .line 320
    :pswitch_f
    const-string v0, ";CHARSET=SHIFT_JIS"

    goto :goto_5

    .line 311
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
    .parameter "nEncodeType"

    .prologue
    .line 329
    packed-switch p0, :pswitch_data_c

    .line 341
    const-string v0, ""

    :goto_5
    return-object v0

    .line 333
    :pswitch_6
    const-string v0, ";ENCODING=QUOTED-PRINTABLE"

    goto :goto_5

    .line 338
    :pswitch_9
    const-string v0, ";ENCODING=BASE64"

    goto :goto_5

    .line 329
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static VItemAppendTagEncodeData(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 11
    .parameter "Tag"
    .parameter "Data"
    .parameter "nCharset"
    .parameter "nEncodeType"
    .parameter "nIsEscape"

    .prologue
    const/high16 v5, 0x2

    .line 347
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 348
    .local v1, retData:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 349
    .local v2, szBuf:Ljava/lang/String;
    const/4 v0, 0x0

    .line 351
    .local v0, Tmp:Ljava/lang/String;
    invoke-static {p0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {p1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 352
    :cond_15
    const/4 v3, 0x0

    .line 376
    :goto_16
    return-object v3

    .line 354
    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x40

    if-lt v3, v4, :cond_24

    .line 356
    const-string v3, "pTag over than 64 byte"

    invoke-static {v5, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 359
    :cond_24
    invoke-static {p1, p2, p3, p4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 365
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    sget-object v3, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CREF:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const/4 v0, 0x0

    .line 370
    :cond_4e
    const/4 v2, 0x0

    .line 376
    :goto_4f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    .line 374
    :cond_54
    const-string v3, "Warning... Encoded data is NULL"

    invoke-static {v5, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_4f
.end method

.method public static VItemDATETIME(ILandroid/text/format/Time;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;
    .registers 6
    .parameter "Tag"
    .parameter "time"
    .parameter "VItemTag"

    .prologue
    .line 2048
    const/4 v0, 0x0

    .line 2049
    .local v0, retData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2051
    .local v1, tag:Ljava/lang/String;
    invoke-static {p0, p2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v1

    .line 2052
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2054
    move-object v0, v1

    .line 2055
    invoke-static {p1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2056
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2058
    return-object v0
.end method

.method public static VItemEncodeData(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 13
    .parameter "Data"
    .parameter "nCharset"
    .parameter "nEncodeType"
    .parameter "nIsEscape"

    .prologue
    .line 381
    const-string v2, ""

    .line 382
    .local v2, retData:Ljava/lang/String;
    const-string v3, ""

    .line 383
    .local v3, szBuf:Ljava/lang/String;
    const-string v5, ""

    .line 384
    .local v5, szEnc:Ljava/lang/String;
    const/4 v7, 0x3

    new-array v6, v7, [C

    .line 386
    .local v6, szEscape:[C
    const/4 v7, 0x0

    const/16 v8, 0x5c

    aput-char v8, v6, v7

    .line 387
    const/4 v7, 0x1

    const/16 v8, 0x3b

    aput-char v8, v6, v7

    .line 388
    const/4 v7, 0x2

    const/16 v8, 0x2c

    aput-char v8, v6, v7

    .line 391
    invoke-static {p0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 392
    const/4 v7, 0x0

    .line 478
    :goto_1f
    return-object v7

    .line 394
    :cond_20
    packed-switch p1, :pswitch_data_8a

    .line 415
    :pswitch_23
    move-object v3, p0

    .line 419
    :goto_24
    :pswitch_24
    if-eqz p3, :cond_4c

    const/4 v7, 0x3

    if-eq p2, v7, :cond_4c

    .line 421
    const/4 v7, 0x0

    aget-char v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_47

    const/4 v7, 0x1

    aget-char v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_47

    const/4 v7, 0x2

    aget-char v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4c

    .line 425
    :cond_47
    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->EncodeEscapeData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, szDest:Ljava/lang/String;
    move-object v3, v4

    .line 430
    .end local v4           #szDest:Ljava/lang/String;
    :cond_4c
    packed-switch p2, :pswitch_data_9c

    .line 475
    move-object v2, v3

    :goto_50
    move-object v7, v2

    .line 478
    goto :goto_1f

    .line 398
    :pswitch_52
    move-object v3, p0

    .line 399
    goto :goto_24

    .line 405
    :pswitch_54
    move-object v3, p0

    .line 406
    goto :goto_24

    .line 409
    :pswitch_56
    move-object v3, p0

    .line 410
    goto :goto_24

    .line 412
    :pswitch_58
    move-object v3, p0

    .line 413
    goto :goto_24

    .line 433
    :pswitch_5a
    move-object v2, v3

    .line 434
    goto :goto_50

    .line 437
    :pswitch_5c
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 438
    .local v0, buf:[B
    invoke-static {v0}, Lcom/syncmldstmo/base/smlBase64;->encode([B)Ljava/lang/String;

    move-result-object v5

    .line 439
    const/4 v3, 0x0

    .line 440
    move-object v2, v5

    .line 441
    goto :goto_50

    .line 445
    .end local v0           #buf:[B
    :pswitch_67
    move-object v5, v3

    .line 448
    :try_start_68
    invoke-static {v3}, Lcom/syncmldstmo/base/smlQP;->encodeQP(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6b
    .catch Lcom/syncmldstmo/base/smlMimeException; {:try_start_68 .. :try_end_6b} :catch_6f

    move-result-object v5

    .line 455
    :goto_6c
    const/4 v3, 0x0

    .line 456
    move-object v2, v5

    .line 457
    goto :goto_50

    .line 450
    :catch_6f
    move-exception v1

    .line 452
    .local v1, e:Lcom/syncmldstmo/base/smlMimeException;
    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlMimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_6c

    .line 461
    .end local v1           #e:Lcom/syncmldstmo/base/smlMimeException;
    :pswitch_78
    move-object v5, v3

    .line 464
    :try_start_79
    invoke-static {v3}, Lcom/syncmldstmo/base/smlQP;->encodeQP(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7c
    .catch Lcom/syncmldstmo/base/smlMimeException; {:try_start_79 .. :try_end_7c} :catch_80

    move-result-object v5

    .line 470
    :goto_7d
    const/4 v3, 0x0

    .line 471
    move-object v2, v5

    .line 472
    goto :goto_50

    .line 466
    :catch_80
    move-exception v1

    .line 468
    .restart local v1       #e:Lcom/syncmldstmo/base/smlMimeException;
    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlMimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_7d

    .line 394
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_56
        :pswitch_54
        :pswitch_23
        :pswitch_52
        :pswitch_23
        :pswitch_24
        :pswitch_58
    .end packed-switch

    .line 430
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_5c
        :pswitch_67
        :pswitch_78
    .end packed-switch
.end method

.method public static VItemGetDATETIME(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Landroid/text/format/Time;
    .registers 9
    .parameter

    .prologue
    const/high16 v7, 0x2

    const/16 v6, 0xd

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 2108
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2110
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_eb

    .line 2112
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    const-string v2, "z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 2114
    :cond_29
    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 2120
    :goto_2e
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 2121
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 2122
    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 2123
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 2124
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 2125
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 2126
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    const/16 v2, 0xf

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 2128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "year:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/text/format/Time;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/text/format/Time;->month:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", min : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/text/format/Time;->minute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2134
    :goto_e3
    return-object v0

    .line 2118
    :cond_e4
    const-string v1, "UTC"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 2132
    :cond_eb
    const-string v1, "Warning!!! There is no VItemGetDATETIME"

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_e3
.end method

.method public static VItemGetSTRING(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 9
    .parameter "item"
    .parameter "smlVItemTags"
    .parameter "vItemConfig"

    .prologue
    .line 2063
    const/4 v0, 0x0

    .line 2066
    .local v0, EncodingType:I
    const/4 v3, 0x0

    .line 2068
    .local v3, retData:Ljava/lang/String;
    if-nez p0, :cond_6

    .line 2070
    const/4 v4, 0x0

    .line 2103
    :goto_5
    return-object v4

    .line 2073
    :cond_6
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckEncoding(Ljava/lang/String;)I

    move-result v0

    .line 2074
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->CheckCharset(Ljava/lang/String;)I

    move-result v1

    .line 2075
    .local v1, nCharSet:I
    iget v4, p2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetIsEscape(I)Z

    move-result v2

    .line 2076
    .local v2, nIsEscape:Z
    if-nez v1, :cond_20

    .line 2078
    iget v4, p2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    invoke-static {v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetDefaultCharset(I)I

    move-result v1

    .line 2080
    :cond_20
    const/4 v4, 0x2

    if-ne v0, v4, :cond_33

    .line 2082
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    if-ne p1, v4, :cond_33

    .line 2084
    iget v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->nTagNo:I

    iget-object v5, p2, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetEncodeType(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_33

    .line 2086
    const/4 v0, 0x3

    .line 2098
    :cond_33
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5, v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->DecodingValue(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v3

    .line 2099
    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 2101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DecodingValue failed at  Tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    :cond_5d
    move-object v4, v3

    .line 2103
    goto :goto_5
.end method

.method public static VItemGetTagEnum(Ljava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)I
    .registers 3
    .parameter "Tag"
    .parameter "VItemTag"

    .prologue
    .line 306
    invoke-virtual {p1, p0}, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;
    .registers 3
    .parameter "nTag"
    .parameter "VItemTag"

    .prologue
    .line 301
    invoke-virtual {p1, p0}, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static VItemSTRING(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;
    .registers 9
    .parameter "nTag"
    .parameter "Data"
    .parameter "VItemTag"
    .parameter "vItemConfig"

    .prologue
    .line 2029
    const/4 v0, 0x0

    .line 2034
    .local v0, Tag:Ljava/lang/String;
    iget-object v4, p3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    invoke-static {p0, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetCharset(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;)I

    move-result v1

    .line 2035
    .local v1, nCharset:I
    iget-object v4, p3, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    invoke-static {p0, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetEncodeType(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;)I

    move-result v2

    .line 2036
    .local v2, nEncodeType:I
    const/4 v3, 0x1

    .line 2038
    .local v3, nIsEscape:Z
    invoke-static {p0, p2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetTagString(ILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v0

    .line 2039
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendCharset(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2040
    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendEncodeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2041
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2043
    invoke-static {v0, p1, v1, v2, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemAppendTagEncodeData(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static VItemStringTimeToVItemTime(Ljava/lang/String;)Landroid/text/format/Time;
    .registers 10
    .parameter "szTime"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/16 v5, 0xf

    const/16 v4, 0xb

    .line 2164
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 2166
    .local v1, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_1c

    .line 2167
    :cond_1a
    const/4 v1, 0x0

    .line 2201
    .end local v1           #time:Landroid/text/format/Time;
    :cond_1b
    :goto_1b
    return-object v1

    .line 2170
    .restart local v1       #time:Landroid/text/format/Time;
    :cond_1c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    if-ge v0, v5, :cond_48

    .line 2172
    const/16 v2, 0x8

    if-ne v0, v2, :cond_36

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_33

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x74

    if-ne v2, v3, :cond_36

    .line 2170
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 2176
    :cond_36
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_46

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-le v2, v3, :cond_33

    .line 2177
    :cond_46
    const/4 v1, 0x0

    goto :goto_1b

    .line 2181
    :cond_48
    const-string v2, "Z"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, "z"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 2183
    :cond_58
    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 2186
    :cond_5d
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 2187
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 2188
    iget v2, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 2189
    const/16 v2, 0x8

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 2190
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->hour:I

    .line 2191
    const/16 v2, 0xd

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->minute:I

    .line 2192
    const/16 v2, 0xd

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->second:I

    .line 2193
    iput v6, v1, Landroid/text/format/Time;->isDst:I

    .line 2195
    iget v2, v1, Landroid/text/format/Time;->year:I

    const/16 v3, 0x7f5

    if-le v2, v3, :cond_1b

    .line 2197
    const/16 v2, 0x7f5

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 2198
    iput v4, v1, Landroid/text/format/Time;->month:I

    .line 2199
    const/16 v2, 0x1f

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_1b
.end method

.method public static VItemTimeToStringTime(Landroid/text/format/Time;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2139
    .line 2141
    iget v0, p0, Landroid/text/format/Time;->year:I

    const/16 v1, 0x7f5

    if-le v0, v1, :cond_17

    .line 2143
    const/16 v0, 0x7f5

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 2144
    const/16 v0, 0xb

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 2145
    const/16 v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 2148
    :cond_17
    iget-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    if-eqz v0, :cond_a2

    .line 2150
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

    .line 2158
    :goto_57
    const/high16 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "year:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mon:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/format/Time;->month:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hour : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", min : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/format/Time;->minute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2159
    return-object v0

    .line 2154
    :cond_a2
    const-string v0, "GMT"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 2155
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

    goto/16 :goto_57
.end method

.method public static VNoteBEGIN()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1324
    const-string v0, "BEGIN:VNOTE\r\n"

    return-object v0
.end method

.method public static VNoteEND()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1329
    const-string v0, "END:VNOTE\r\n"

    return-object v0
.end method

.method public static VTodoBEGIN()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1314
    const-string v0, "BEGIN:VTODO\r\n"

    return-object v0
.end method

.method public static VTodoEND()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1319
    const-string v0, "END:VTODO\r\n"

    return-object v0
.end method

.method public static smlGetCharset(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;)I
    .registers 3
    .parameter "nField"
    .parameter "CharSet"

    .prologue
    .line 172
    if-eqz p1, :cond_7

    .line 173
    aget-object v0, p1, p0

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;->CharSet:I

    .line 174
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
    .line 212
    const/4 v0, 0x4

    .line 214
    .local v0, nCharSet:I
    packed-switch p0, :pswitch_data_10

    .line 232
    :goto_4
    return v0

    .line 217
    :pswitch_5
    const/4 v0, 0x4

    .line 218
    goto :goto_4

    .line 220
    :pswitch_7
    const/4 v0, 0x4

    .line 221
    goto :goto_4

    .line 223
    :pswitch_9
    const/4 v0, 0x4

    .line 224
    goto :goto_4

    .line 226
    :pswitch_b
    const/4 v0, 0x7

    .line 227
    goto :goto_4

    .line 229
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    .line 214
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

.method public static smlGetEncodeType(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;)I
    .registers 3
    .parameter "nField"
    .parameter "EncodeType"

    .prologue
    .line 179
    if-eqz p1, :cond_7

    .line 180
    aget-object v0, p1, p0

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;->EncodeType:I

    .line 181
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static smlGetIsEscape(I)Z
    .registers 2
    .parameter "nAppType"

    .prologue
    .line 187
    const/4 v0, 0x1

    .line 189
    .local v0, nRet:Z
    packed-switch p0, :pswitch_data_10

    .line 207
    :goto_4
    return v0

    .line 192
    :pswitch_5
    const/4 v0, 0x0

    .line 193
    goto :goto_4

    .line 195
    :pswitch_7
    const/4 v0, 0x0

    .line 196
    goto :goto_4

    .line 198
    :pswitch_9
    const/4 v0, 0x0

    .line 199
    goto :goto_4

    .line 201
    :pswitch_b
    const/4 v0, 0x0

    .line 202
    goto :goto_4

    .line 204
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_4

    .line 189
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

.method public static smlGetVitemEncTemplete(I)Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;
    .registers 2
    .parameter "AppType"

    .prologue
    .line 167
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItem_Enc_Templet:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    aget-object v0, v0, p0

    return-object v0
.end method
