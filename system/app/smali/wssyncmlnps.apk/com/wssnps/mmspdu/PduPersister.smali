.class public Lcom/wssnps/mmspdu/PduPersister;
.super Ljava/lang/Object;
.source "PduPersister.java"


# static fields
.field private static final ADDRESS_FIELDS:[I

.field private static final CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PART_PROJECTION:[Ljava/lang/String;

.field private static final PDU_CACHE_INSTANCE:Lcom/wssnps/mmspdu/myutil/PduCache;

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersister:Lcom/wssnps/mmspdu/PduPersister;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x9a

    const/16 v5, 0x96

    const/4 v4, 0x3

    const/4 v3, 0x4

    .line 89
    new-array v0, v3, [I

    fill-array-data v0, :array_416

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->ADDRESS_FIELDS:[I

    .line 96
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "msg_box"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const-string v1, "retr_txt"

    aput-object v1, v0, v4

    const-string v1, "sub"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ct_cls"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "d_tm"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 154
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "chset"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "cd"

    aput-object v2, v0, v1

    const-string v1, "cid"

    aput-object v1, v0, v4

    const-string v1, "cl"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 191
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 197
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 201
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 206
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 210
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 215
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 223
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 232
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 244
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 257
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 263
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {}, Lcom/wssnps/mmspdu/myutil/PduCache;->getInstance()Lcom/wssnps/mmspdu/myutil/PduCache;

    move-result-object v0

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/wssnps/mmspdu/myutil/PduCache;

    .line 269
    return-void

    .line 89
    :array_416
    .array-data 0x4
        0x81t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 274
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/wssnps/mmspdu/PduPersister;->mContext:Landroid/content/Context;

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/wssnps/mmspdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 277
    return-void
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .registers 4
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    .line 336
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 337
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssnps/mmspdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 339
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 4
    .parameter

    .prologue
    .line 1217
    :try_start_0
    const-string v0, "iso-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 1221
    :goto_6
    return-object v0

    .line 1218
    :catch_7
    move-exception v0

    .line 1220
    const/4 v1, 0x3

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1221
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_6
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .registers 4
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    .line 329
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 330
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 332
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/wssnps/mmspdu/PduPersister;
    .registers 2
    .parameter "context"

    .prologue
    .line 281
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->sPersister:Lcom/wssnps/mmspdu/PduPersister;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->sPersister:Lcom/wssnps/mmspdu/PduPersister;

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 282
    :cond_e
    new-instance v0, Lcom/wssnps/mmspdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/wssnps/mmspdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wssnps/mmspdu/PduPersister;->sPersister:Lcom/wssnps/mmspdu/PduPersister;

    .line 285
    :cond_15
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->sPersister:Lcom/wssnps/mmspdu/PduPersister;

    return-object v0
.end method

.method private loadAddress(JLcom/wssnps/mmspdu/PduHeaders;)V
    .registers 16
    .parameter "msgId"
    .parameter "headers"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 465
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/wssnps/mmspdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "address"

    aput-object v5, v3, v10

    const-string v5, "charset"

    aput-object v5, v3, v6

    const-string v5, "type"

    aput-object v5, v3, v11

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 470
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_99

    .line 472
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 473
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 474
    .local v7, addr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 475
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 476
    .local v8, addrType:I
    sparse-switch v8, :sswitch_data_9a

    .line 490
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_3c .. :try_end_6c} :catchall_6d

    goto :goto_3c

    .line 496
    .end local v7           #addr:Ljava/lang/String;
    .end local v8           #addrType:I
    :catchall_6d
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 478
    .restart local v7       #addr:Ljava/lang/String;
    .restart local v8       #addrType:I
    :sswitch_72
    :try_start_72
    new-instance v0, Lcom/wssnps/mmspdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/wssnps/mmspdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/wssnps/mmspdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/wssnps/mmspdu/PduHeaders;->setEncodedStringValue(Lcom/wssnps/mmspdu/EncodedStringValue;I)V

    goto :goto_3c

    .line 485
    :sswitch_84
    new-instance v0, Lcom/wssnps/mmspdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/wssnps/mmspdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/wssnps/mmspdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/wssnps/mmspdu/PduHeaders;->appendEncodedStringValue(Lcom/wssnps/mmspdu/EncodedStringValue;I)V
    :try_end_95
    .catchall {:try_start_72 .. :try_end_95} :catchall_6d

    goto :goto_3c

    .line 496
    .end local v7           #addr:Ljava/lang/String;
    .end local v8           #addrType:I
    :cond_96
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_99
    return-void

    .line 476
    :sswitch_data_9a
    .sparse-switch
        0x81 -> :sswitch_84
        0x82 -> :sswitch_84
        0x89 -> :sswitch_72
        0x97 -> :sswitch_84
    .end sparse-switch
.end method

.method private loadParts(J)[Lcom/wssnps/mmspdu/PduPart;
    .registers 36
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/mmspdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wssnps/mmspdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/wssnps/mmspdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 347
    .local v12, c:Landroid/database/Cursor;
    const/16 v30, 0x0

    .line 350
    .local v30, parts:[Lcom/wssnps/mmspdu/PduPart;
    if-eqz v12, :cond_3a

    :try_start_34
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_60

    .line 351
    :cond_3a
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadParts("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): no part to load."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V
    :try_end_59
    .catchall {:try_start_34 .. :try_end_59} :catchall_16e

    .line 352
    const/4 v2, 0x0

    .line 456
    if-eqz v12, :cond_5f

    .line 457
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_5f
    :goto_5f
    return-object v2

    .line 355
    :cond_60
    :try_start_60
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 356
    .local v24, partCount:I
    const/16 v27, 0x0

    .line 357
    .local v27, partIdx:I
    move/from16 v0, v24

    new-array v0, v0, [Lcom/wssnps/mmspdu/PduPart;

    move-object/from16 v30, v0

    move/from16 v28, v27

    .line 358
    .end local v27           #partIdx:I
    .local v28, partIdx:I
    :goto_6e
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1b6

    .line 359
    new-instance v23, Lcom/wssnps/mmspdu/PduPart;

    invoke-direct/range {v23 .. v23}, Lcom/wssnps/mmspdu/PduPart;-><init>()V

    .line 360
    .local v23, part:Lcom/wssnps/mmspdu/PduPart;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/wssnps/mmspdu/PduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v13

    .line 362
    .local v13, charset:Ljava/lang/Integer;
    if-eqz v13, :cond_8b

    .line 363
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/wssnps/mmspdu/PduPart;->setCharset(I)V

    .line 366
    :cond_8b
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/wssnps/mmspdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v14

    .line 368
    .local v14, contentDisposition:[B
    if-eqz v14, :cond_99

    .line 369
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/wssnps/mmspdu/PduPart;->setContentDisposition([B)V

    .line 372
    :cond_99
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/wssnps/mmspdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v15

    .line 374
    .local v15, contentId:[B
    if-eqz v15, :cond_a7

    .line 375
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/wssnps/mmspdu/PduPart;->setContentId([B)V

    .line 378
    :cond_a7
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/wssnps/mmspdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v16

    .line 380
    .local v16, contentLocation:[B
    if-eqz v16, :cond_b7

    .line 381
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduPart;->setContentLocation([B)V

    .line 384
    :cond_b7
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/wssnps/mmspdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v17

    .line 386
    .local v17, contentType:[B
    if-eqz v17, :cond_166

    .line 387
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduPart;->setContentType([B)V

    .line 392
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/wssnps/mmspdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v19

    .line 394
    .local v19, fileName:[B
    if-eqz v19, :cond_d7

    .line 395
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduPart;->setFilename([B)V

    .line 398
    :cond_d7
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/wssnps/mmspdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v22

    .line 400
    .local v22, name:[B
    if-eqz v22, :cond_e7

    .line 401
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduPart;->setName([B)V

    .line 405
    :cond_e7
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 406
    .local v25, partId:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/part/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v25

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 407
    .local v29, partURI:Landroid/net/Uri;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 411
    invoke-static/range {v17 .. v17}, Lcom/wssnps/mmspdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v32

    .line 412
    .local v32, type:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15e

    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15e

    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15e

    .line 415
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 416
    .local v9, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    .line 421
    .local v20, is:Ljava/io/InputStream;
    const-string v2, "text/plain"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13d

    const-string v2, "application/smil"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 422
    :cond_13d
    const/16 v2, 0x8

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 423
    .local v31, text:Ljava/lang/String;
    new-instance v2, Lcom/wssnps/mmspdu/EncodedStringValue;

    if-eqz v31, :cond_175

    .end local v31           #text:Ljava/lang/String;
    :goto_147
    move-object/from16 v0, v31

    invoke-direct {v2, v0}, Lcom/wssnps/mmspdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/wssnps/mmspdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    .line 425
    .local v10, blob:[B
    const/4 v2, 0x0

    array-length v3, v10

    invoke-virtual {v9, v10, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 451
    .end local v10           #blob:[B
    :cond_155
    :goto_155
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/wssnps/mmspdu/PduPart;->setData([B)V

    .line 453
    .end local v9           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v20           #is:Ljava/io/InputStream;
    :cond_15e
    add-int/lit8 v27, v28, 0x1

    .end local v28           #partIdx:I
    .restart local v27       #partIdx:I
    aput-object v23, v30, v28

    move/from16 v28, v27

    .line 454
    .end local v27           #partIdx:I
    .restart local v28       #partIdx:I
    goto/16 :goto_6e

    .line 389
    .end local v19           #fileName:[B
    .end local v22           #name:[B
    .end local v25           #partId:J
    .end local v29           #partURI:Landroid/net/Uri;
    .end local v32           #type:Ljava/lang/String;
    :cond_166
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Content-Type must be set."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_16e
    .catchall {:try_start_60 .. :try_end_16e} :catchall_16e

    .line 456
    .end local v13           #charset:Ljava/lang/Integer;
    .end local v14           #contentDisposition:[B
    .end local v15           #contentId:[B
    .end local v16           #contentLocation:[B
    .end local v17           #contentType:[B
    .end local v23           #part:Lcom/wssnps/mmspdu/PduPart;
    .end local v24           #partCount:I
    .end local v28           #partIdx:I
    :catchall_16e
    move-exception v2

    if-eqz v12, :cond_174

    .line 457
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_174
    throw v2

    .line 423
    .restart local v9       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #charset:Ljava/lang/Integer;
    .restart local v14       #contentDisposition:[B
    .restart local v15       #contentId:[B
    .restart local v16       #contentLocation:[B
    .restart local v17       #contentType:[B
    .restart local v19       #fileName:[B
    .restart local v20       #is:Ljava/io/InputStream;
    .restart local v22       #name:[B
    .restart local v23       #part:Lcom/wssnps/mmspdu/PduPart;
    .restart local v24       #partCount:I
    .restart local v25       #partId:J
    .restart local v28       #partIdx:I
    .restart local v29       #partURI:Landroid/net/Uri;
    .restart local v31       #text:Ljava/lang/String;
    .restart local v32       #type:Ljava/lang/String;
    :cond_175
    :try_start_175
    const-string v31, ""
    :try_end_177
    .catchall {:try_start_175 .. :try_end_177} :catchall_16e

    goto :goto_147

    .line 429
    .end local v31           #text:Ljava/lang/String;
    :cond_178
    :try_start_178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/mmspdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    .line 431
    const/16 v2, 0x100

    new-array v11, v2, [B

    .line 432
    .local v11, buffer:[B
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v21

    .line 433
    .local v21, len:I
    :goto_18c
    if-ltz v21, :cond_1c9

    .line 434
    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v11, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 435
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I
    :try_end_199
    .catchall {:try_start_178 .. :try_end_199} :catchall_1af
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_199} :catch_19b

    move-result v21

    goto :goto_18c

    .line 437
    .end local v11           #buffer:[B
    .end local v21           #len:I
    :catch_19b
    move-exception v18

    .line 438
    .local v18, e:Ljava/io/IOException;
    const/4 v2, 0x3

    :try_start_19d
    const-string v3, "Failed to load part data"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    .line 439
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 440
    new-instance v2, Lcom/google/android/mms/MmsException;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1af
    .catchall {:try_start_19d .. :try_end_1af} :catchall_1af

    .line 442
    .end local v18           #e:Ljava/io/IOException;
    :catchall_1af
    move-exception v2

    if-eqz v20, :cond_1b5

    .line 444
    :try_start_1b2
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_1b5
    .catchall {:try_start_1b2 .. :try_end_1b5} :catchall_16e
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1b5} :catch_1bf

    .line 442
    :cond_1b5
    :goto_1b5
    :try_start_1b5
    throw v2
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_16e

    .line 456
    .end local v9           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v13           #charset:Ljava/lang/Integer;
    .end local v14           #contentDisposition:[B
    .end local v15           #contentId:[B
    .end local v16           #contentLocation:[B
    .end local v17           #contentType:[B
    .end local v19           #fileName:[B
    .end local v20           #is:Ljava/io/InputStream;
    .end local v22           #name:[B
    .end local v23           #part:Lcom/wssnps/mmspdu/PduPart;
    .end local v25           #partId:J
    .end local v29           #partURI:Landroid/net/Uri;
    .end local v32           #type:Ljava/lang/String;
    :cond_1b6
    if-eqz v12, :cond_1bb

    .line 457
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_1bb
    move-object/from16 v2, v30

    .line 461
    goto/16 :goto_5f

    .line 445
    .restart local v9       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #charset:Ljava/lang/Integer;
    .restart local v14       #contentDisposition:[B
    .restart local v15       #contentId:[B
    .restart local v16       #contentLocation:[B
    .restart local v17       #contentType:[B
    .restart local v19       #fileName:[B
    .restart local v20       #is:Ljava/io/InputStream;
    .restart local v22       #name:[B
    .restart local v23       #part:Lcom/wssnps/mmspdu/PduPart;
    .restart local v25       #partId:J
    .restart local v29       #partURI:Landroid/net/Uri;
    .restart local v32       #type:Ljava/lang/String;
    :catch_1bf
    move-exception v18

    .line 446
    .restart local v18       #e:Ljava/io/IOException;
    const/4 v3, 0x3

    :try_start_1c1
    const-string v4, "Failed to close stream"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1c8
    .catchall {:try_start_1c1 .. :try_end_1c8} :catchall_16e

    goto :goto_1b5

    .line 442
    .end local v18           #e:Ljava/io/IOException;
    .restart local v11       #buffer:[B
    .restart local v21       #len:I
    :cond_1c9
    if-eqz v20, :cond_155

    .line 444
    :try_start_1cb
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_1ce
    .catchall {:try_start_1cb .. :try_end_1ce} :catchall_16e
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1ce} :catch_1cf

    goto :goto_155

    .line 445
    :catch_1cf
    move-exception v18

    .line 446
    .restart local v18       #e:Ljava/io/IOException;
    const/4 v2, 0x3

    :try_start_1d1
    const-string v3, "Failed to close stream"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1d8
    .catchall {:try_start_1d1 .. :try_end_1d8} :catchall_16e

    goto/16 :goto_155
.end method

.method private persistAddress(JI[Lcom/wssnps/mmspdu/EncodedStringValue;)V
    .registers 13
    .parameter "msgId"
    .parameter "type"
    .parameter "array"

    .prologue
    .line 640
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 642
    .local v5, values:Landroid/content/ContentValues;
    move-object v1, p4

    .local v1, arr$:[Lcom/wssnps/mmspdu/EncodedStringValue;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_5a

    aget-object v0, v1, v2

    .line 643
    .local v0, addr:Lcom/wssnps/mmspdu/EncodedStringValue;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 644
    const-string v6, "address"

    invoke-virtual {v0}, Lcom/wssnps/mmspdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    invoke-static {v7}, Lcom/wssnps/mmspdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v6, "charset"

    invoke-virtual {v0}, Lcom/wssnps/mmspdu/EncodedStringValue;->getCharacterSet()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string v6, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/addr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 649
    .local v4, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/wssnps/mmspdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/wssnps/mmspdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v7, v4, v5}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 642
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 651
    .end local v0           #addr:Lcom/wssnps/mmspdu/EncodedStringValue;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_5a
    return-void
.end method

.method private persistData(Lcom/wssnps/mmspdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 16
    .parameter "part"
    .parameter "uri"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 730
    const/4 v7, 0x0

    .line 731
    .local v7, os:Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 734
    .local v5, is:Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getData()[B

    move-result-object v2

    .line 735
    .local v2, data:[B
    const-string v8, "text/plain"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "application/smil"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 736
    :cond_16
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 737
    .local v1, cv:Landroid/content/ContentValues;
    const-string v8, "text"

    new-instance v9, Lcom/wssnps/mmspdu/EncodedStringValue;

    invoke-direct {v9, v2}, Lcom/wssnps/mmspdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v9}, Lcom/wssnps/mmspdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v8, p0, Lcom/wssnps/mmspdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, p2, v1, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e2

    .line 739
    new-instance v8, Lcom/google/android/mms/MmsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_51
    .catchall {:try_start_2 .. :try_end_51} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_51} :catch_51
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_51} :catch_bb

    .line 762
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #data:[B
    :catch_51
    move-exception v4

    .line 763
    .local v4, e:Ljava/io/FileNotFoundException;
    const/4 v8, 0x3

    :try_start_53
    const-string v9, "Failed to open Input/Output stream."

    invoke-static {v8, v9, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    .line 764
    new-instance v8, Lcom/google/android/mms/MmsException;

    invoke-direct {v8, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_5e

    .line 769
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catchall_5e
    move-exception v8

    if-eqz v7, :cond_64

    .line 771
    :try_start_61
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_106

    .line 776
    :cond_64
    :goto_64
    if-eqz v5, :cond_69

    .line 778
    :try_start_66
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_120

    .line 769
    :cond_69
    :goto_69
    throw v8

    .line 742
    .restart local v2       #data:[B
    :cond_6a
    :try_start_6a
    iget-object v8, p0, Lcom/wssnps/mmspdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    .line 743
    if-nez v2, :cond_c8

    .line 744
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    .line 745
    .local v3, dataUri:Landroid/net/Uri;
    if-eqz v3, :cond_7e

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 746
    :cond_7e
    const/4 v8, 0x1

    const-string v9, "Can\'t find data for this part."

    invoke-static {v8, v9}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V
    :try_end_84
    .catchall {:try_start_6a .. :try_end_84} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_6a .. :try_end_84} :catch_51
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_84} :catch_bb

    .line 769
    if-eqz v7, :cond_89

    .line 771
    :try_start_86
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_153

    .line 776
    :cond_89
    :goto_89
    if-eqz v5, :cond_8c

    .line 778
    :try_start_8b
    throw v5
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8c} :catch_16d

    .line 784
    .end local v3           #dataUri:Landroid/net/Uri;
    :cond_8c
    :goto_8c
    return-void

    .line 749
    .restart local v3       #dataUri:Landroid/net/Uri;
    :cond_8d
    :try_start_8d
    iget-object v8, p0, Lcom/wssnps/mmspdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 751
    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saving data to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 753
    const/16 v8, 0x100

    new-array v0, v8, [B

    .line 754
    .local v0, buffer:[B
    const/4 v6, 0x0

    .local v6, len:I
    :goto_af
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_e2

    .line 755
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_ba
    .catchall {:try_start_8d .. :try_end_ba} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_ba} :catch_51
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_ba} :catch_bb

    goto :goto_af

    .line 765
    .end local v0           #buffer:[B
    .end local v2           #data:[B
    .end local v3           #dataUri:Landroid/net/Uri;
    .end local v6           #len:I
    :catch_bb
    move-exception v4

    .line 766
    .local v4, e:Ljava/io/IOException;
    const/4 v8, 0x3

    :try_start_bd
    const-string v9, "Failed to read/write data."

    invoke-static {v8, v9, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    .line 767
    new-instance v8, Lcom/google/android/mms/MmsException;

    invoke-direct {v8, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_c8
    .catchall {:try_start_bd .. :try_end_c8} :catchall_5e

    .line 758
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #data:[B
    :cond_c8
    const/4 v8, 0x1

    :try_start_c9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saving data to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 759
    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_e2
    .catchall {:try_start_c9 .. :try_end_e2} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_c9 .. :try_end_e2} :catch_51
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_e2} :catch_bb

    .line 769
    :cond_e2
    if-eqz v7, :cond_e7

    .line 771
    :try_start_e4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_13a

    .line 776
    :cond_e7
    :goto_e7
    if-eqz v5, :cond_8c

    .line 778
    :try_start_e9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ed

    goto :goto_8c

    .line 779
    :catch_ed
    move-exception v4

    .line 780
    .restart local v4       #e:Ljava/io/IOException;
    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while closing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_102
    invoke-static {v8, v9, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_8c

    .line 772
    .end local v2           #data:[B
    .end local v4           #e:Ljava/io/IOException;
    :catch_106
    move-exception v4

    .line 773
    .restart local v4       #e:Ljava/io/IOException;
    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException while closing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_64

    .line 779
    .end local v4           #e:Ljava/io/IOException;
    :catch_120
    move-exception v4

    .line 780
    .restart local v4       #e:Ljava/io/IOException;
    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException while closing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_69

    .line 772
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #data:[B
    :catch_13a
    move-exception v4

    .line 773
    .restart local v4       #e:Ljava/io/IOException;
    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while closing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_e7

    .line 772
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #dataUri:Landroid/net/Uri;
    :catch_153
    move-exception v4

    .line 773
    .restart local v4       #e:Ljava/io/IOException;
    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while closing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_89

    .line 779
    .end local v4           #e:Ljava/io/IOException;
    :catch_16d
    move-exception v4

    .line 780
    .restart local v4       #e:Ljava/io/IOException;
    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while closing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_102
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/wssnps/mmspdu/PduHeaders;I)V
    .registers 11
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"

    .prologue
    .line 291
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, s:Ljava/lang/String;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2c

    .line 293
    sget-object v4, Lcom/wssnps/mmspdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 294
    .local v1, charsetColumnIndex:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 295
    .local v0, charset:I
    new-instance v3, Lcom/wssnps/mmspdu/EncodedStringValue;

    invoke-static {v2}, Lcom/wssnps/mmspdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/wssnps/mmspdu/EncodedStringValue;-><init>(I[B)V

    .line 297
    .local v3, value:Lcom/wssnps/mmspdu/EncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/wssnps/mmspdu/PduHeaders;->setEncodedStringValue(Lcom/wssnps/mmspdu/EncodedStringValue;I)V

    .line 299
    .end local v0           #charset:I
    .end local v1           #charsetColumnIndex:I
    .end local v3           #value:Lcom/wssnps/mmspdu/EncodedStringValue;
    :cond_2c
    return-void
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/wssnps/mmspdu/PduHeaders;I)V
    .registers 8
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"

    .prologue
    .line 322
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 323
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 324
    .local v0, l:J
    invoke-virtual {p3, v0, v1, p4}, Lcom/wssnps/mmspdu/PduHeaders;->setLongInteger(JI)V

    .line 326
    .end local v0           #l:J
    :cond_d
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/wssnps/mmspdu/PduHeaders;I)V
    .registers 7
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 314
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 315
    .local v0, b:I
    invoke-virtual {p3, v0, p4}, Lcom/wssnps/mmspdu/PduHeaders;->setOctet(II)V

    .line 317
    .end local v0           #b:I
    :cond_d
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/wssnps/mmspdu/PduHeaders;I)V
    .registers 7
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"

    .prologue
    .line 304
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 306
    invoke-static {v0}, Lcom/wssnps/mmspdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/wssnps/mmspdu/PduHeaders;->setTextString([BI)V

    .line 308
    :cond_d
    return-void
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1204
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "iso-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1208
    :goto_7
    return-object v0

    .line 1205
    :catch_8
    move-exception v0

    .line 1207
    const/4 v1, 0x3

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1208
    const-string v0, ""

    goto :goto_7
.end method


# virtual methods
.method public load(Landroid/net/Uri;)Lcom/wssnps/mmspdu/GenericPdu;
    .registers 30
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 509
    sget-object v4, Lcom/wssnps/mmspdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/wssnps/mmspdu/myutil/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/wssnps/mmspdu/myutil/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;

    .line 510
    .local v13, cacheEntry:Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
    if-eqz v13, :cond_11

    .line 511
    invoke-virtual {v13}, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;->getPdu()Lcom/wssnps/mmspdu/GenericPdu;

    move-result-object v24

    .line 635
    :goto_10
    return-object v24

    .line 514
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssnps/mmspdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/wssnps/mmspdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/wssnps/mmspdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 516
    .local v12, c:Landroid/database/Cursor;
    new-instance v15, Lcom/wssnps/mmspdu/PduHeaders;

    invoke-direct {v15}, Lcom/wssnps/mmspdu/PduHeaders;-><init>()V

    .line 518
    .local v15, headers:Lcom/wssnps/mmspdu/PduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v19

    .line 523
    .local v19, msgId:J
    if-eqz v12, :cond_3c

    :try_start_2f
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3c

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_5e

    .line 524
    :cond_3c
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_57
    .catchall {:try_start_2f .. :try_end_57} :catchall_57

    .line 554
    :catchall_57
    move-exception v4

    if-eqz v12, :cond_5d

    .line 555
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 554
    :cond_5d
    throw v4

    .line 527
    :cond_5e
    const/4 v4, 0x1

    :try_start_5f
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 528
    .local v18, msgBox:I
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 530
    .local v26, threadId:J
    sget-object v4, Lcom/wssnps/mmspdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    .line 531
    .local v25, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_72
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 532
    .local v14, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v15, v4}, Lcom/wssnps/mmspdu/PduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/wssnps/mmspdu/PduHeaders;I)V

    goto :goto_72

    .line 536
    .end local v14           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_98
    sget-object v4, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    .line 537
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_a2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 538
    .restart local v14       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v15, v4}, Lcom/wssnps/mmspdu/PduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/wssnps/mmspdu/PduHeaders;I)V

    goto :goto_a2

    .line 542
    .end local v14           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_c8
    sget-object v4, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    .line 543
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_d2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 544
    .restart local v14       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v15, v4}, Lcom/wssnps/mmspdu/PduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/wssnps/mmspdu/PduHeaders;I)V

    goto :goto_d2

    .line 548
    .end local v14           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_f8
    sget-object v4, Lcom/wssnps/mmspdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    .line 549
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_102
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_128

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 550
    .restart local v14       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v15, v4}, Lcom/wssnps/mmspdu/PduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/wssnps/mmspdu/PduHeaders;I)V
    :try_end_127
    .catchall {:try_start_5f .. :try_end_127} :catchall_57

    goto :goto_102

    .line 554
    .end local v14           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_128
    if-eqz v12, :cond_12d

    .line 555
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 560
    :cond_12d
    const-wide/16 v4, -0x1

    cmp-long v4, v19, v4

    if-nez v4, :cond_13b

    .line 561
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "Error! ID of the message: -1."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 565
    :cond_13b
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2, v15}, Lcom/wssnps/mmspdu/PduPersister;->loadAddress(JLcom/wssnps/mmspdu/PduHeaders;)V

    .line 567
    const/16 v4, 0x8c

    invoke-virtual {v15, v4}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v21

    .line 568
    .local v21, msgType:I
    new-instance v11, Lcom/wssnps/mmspdu/PduBody;

    invoke-direct {v11}, Lcom/wssnps/mmspdu/PduBody;-><init>()V

    .line 572
    .local v11, body:Lcom/wssnps/mmspdu/PduBody;
    const/16 v4, 0x84

    move/from16 v0, v21

    if-eq v0, v4, :cond_159

    const/16 v4, 0x80

    move/from16 v0, v21

    if-ne v0, v4, :cond_178

    .line 574
    :cond_159
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/wssnps/mmspdu/PduPersister;->loadParts(J)[Lcom/wssnps/mmspdu/PduPart;

    move-result-object v22

    .line 575
    .local v22, parts:[Lcom/wssnps/mmspdu/PduPart;
    if-eqz v22, :cond_178

    .line 576
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    .line 577
    .local v23, partsNum:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_16a
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_178

    .line 578
    aget-object v4, v22, v16

    invoke-virtual {v11, v4}, Lcom/wssnps/mmspdu/PduBody;->addPart(Lcom/wssnps/mmspdu/PduPart;)Z

    .line 577
    add-int/lit8 v16, v16, 0x1

    goto :goto_16a

    .line 583
    .end local v16           #i:I
    .end local v22           #parts:[Lcom/wssnps/mmspdu/PduPart;
    .end local v23           #partsNum:I
    :cond_178
    const/16 v24, 0x0

    .line 584
    .local v24, pdu:Lcom/wssnps/mmspdu/GenericPdu;
    packed-switch v21, :pswitch_data_20a

    .line 629
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized PDU type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 586
    :pswitch_19a
    new-instance v24, Lcom/wssnps/mmspdu/NotificationInd;

    .end local v24           #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Lcom/wssnps/mmspdu/NotificationInd;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 633
    .restart local v24       #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    :goto_1a1
    new-instance v13, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;

    .end local v13           #cacheEntry:Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
    move-object/from16 v0, v24

    move/from16 v1, v18

    move-wide/from16 v2, v26

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;-><init>(Lcom/wssnps/mmspdu/GenericPdu;IJ)V

    .line 634
    .restart local v13       #cacheEntry:Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
    sget-object v4, Lcom/wssnps/mmspdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/wssnps/mmspdu/myutil/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v13}, Lcom/wssnps/mmspdu/myutil/PduCache;->put(Landroid/net/Uri;Lcom/wssnps/mmspdu/myutil/PduCacheEntry;)Z

    goto/16 :goto_10

    .line 589
    :pswitch_1b5
    new-instance v24, Lcom/wssnps/mmspdu/DeliveryInd;

    .end local v24           #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Lcom/wssnps/mmspdu/DeliveryInd;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 590
    .restart local v24       #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    goto :goto_1a1

    .line 592
    :pswitch_1bd
    new-instance v24, Lcom/wssnps/mmspdu/ReadOrigInd;

    .end local v24           #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Lcom/wssnps/mmspdu/ReadOrigInd;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 593
    .restart local v24       #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    goto :goto_1a1

    .line 595
    :pswitch_1c5
    new-instance v24, Lcom/wssnps/mmspdu/RetrieveConf;

    .end local v24           #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    move-object/from16 v0, v24

    invoke-direct {v0, v15, v11}, Lcom/wssnps/mmspdu/RetrieveConf;-><init>(Lcom/wssnps/mmspdu/PduHeaders;Lcom/wssnps/mmspdu/PduBody;)V

    .line 596
    .restart local v24       #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    goto :goto_1a1

    .line 598
    :pswitch_1cd
    new-instance v24, Lcom/wssnps/mmspdu/SendReq;

    .end local v24           #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    move-object/from16 v0, v24

    invoke-direct {v0, v15, v11}, Lcom/wssnps/mmspdu/SendReq;-><init>(Lcom/wssnps/mmspdu/PduHeaders;Lcom/wssnps/mmspdu/PduBody;)V

    .line 599
    .restart local v24       #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    goto :goto_1a1

    .line 601
    :pswitch_1d5
    new-instance v24, Lcom/wssnps/mmspdu/AcknowledgeInd;

    .end local v24           #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Lcom/wssnps/mmspdu/AcknowledgeInd;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 602
    .restart local v24       #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    goto :goto_1a1

    .line 604
    :pswitch_1dd
    new-instance v24, Lcom/wssnps/mmspdu/NotifyRespInd;

    .end local v24           #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Lcom/wssnps/mmspdu/NotifyRespInd;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 605
    .restart local v24       #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    goto :goto_1a1

    .line 607
    :pswitch_1e5
    new-instance v24, Lcom/wssnps/mmspdu/ReadRecInd;

    .end local v24           #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Lcom/wssnps/mmspdu/ReadRecInd;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 608
    .restart local v24       #pdu:Lcom/wssnps/mmspdu/GenericPdu;
    goto :goto_1a1

    .line 625
    :pswitch_1ed
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported PDU type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 584
    :pswitch_data_20a
    .packed-switch 0x80
        :pswitch_1cd
        :pswitch_1ed
        :pswitch_19a
        :pswitch_1dd
        :pswitch_1c5
        :pswitch_1d5
        :pswitch_1b5
        :pswitch_1e5
        :pswitch_1bd
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
        :pswitch_1ed
    .end packed-switch
.end method

.method public persist(Lcom/wssnps/mmspdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x89

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1012
    if-nez p2, :cond_f

    .line 1013
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Uri may not be null."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_f
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1017
    if-nez v0, :cond_21

    .line 1018
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_21
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/wssnps/mmspdu/myutil/PduCache;

    invoke-virtual {v0, p2}, Lcom/wssnps/mmspdu/myutil/PduCache;->purge(Landroid/net/Uri;)Lcom/wssnps/mmspdu/myutil/PduCacheEntry;

    .line 1026
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/GenericPdu;->getPduHeaders()Lcom/wssnps/mmspdu/PduHeaders;

    move-result-object v2

    .line 1028
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1031
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1032
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_39
    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1033
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1034
    invoke-virtual {v2, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getEncodedStringValue(I)Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v7

    .line 1035
    if-eqz v7, :cond_39

    .line 1036
    sget-object v8, Lcom/wssnps/mmspdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1037
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/wssnps/mmspdu/EncodedStringValue;->getTextString()[B

    move-result-object v8

    invoke-static {v8}, Lcom/wssnps/mmspdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v7}, Lcom/wssnps/mmspdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_39

    .line 1042
    :cond_7e
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1043
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_88
    :goto_88
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1044
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 1045
    if-eqz v1, :cond_88

    .line 1046
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/mmspdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    .line 1050
    :cond_b2
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1051
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_bc
    :goto_bc
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1052
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1053
    if-eqz v1, :cond_bc

    .line 1054
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_bc

    .line 1058
    :cond_e6
    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1059
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f0
    :goto_f0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1060
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 1061
    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-eqz v1, :cond_f0

    .line 1062
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_f0

    .line 1066
    :cond_11e
    new-instance v7, Ljava/util/HashMap;

    sget-object v0, Lcom/wssnps/mmspdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v0, v0

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1069
    sget-object v5, Lcom/wssnps/mmspdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v8, v5

    move v1, v6

    :goto_12a
    if-ge v1, v8, :cond_14a

    aget v9, v5, v1

    .line 1071
    if-ne v9, v11, :cond_145

    .line 1072
    invoke-virtual {v2, v9}, Lcom/wssnps/mmspdu/PduHeaders;->getEncodedStringValue(I)Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v10

    .line 1073
    if-eqz v10, :cond_246

    .line 1074
    new-array v0, v12, [Lcom/wssnps/mmspdu/EncodedStringValue;

    .line 1075
    aput-object v10, v0, v6

    .line 1080
    :goto_13a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12a

    .line 1078
    :cond_145
    invoke-virtual {v2, v9}, Lcom/wssnps/mmspdu/PduHeaders;->getEncodedStringValues(I)[Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v0

    goto :goto_13a

    .line 1083
    :cond_14a
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1084
    const-wide v0, 0x7fffffffffffffffL

    .line 1085
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/GenericPdu;->getMessageType()I

    move-result v5

    .line 1090
    const/16 v8, 0x82

    if-eq v5, v8, :cond_164

    const/16 v8, 0x84

    if-eq v5, v8, :cond_164

    const/16 v8, 0x80

    if-ne v5, v8, :cond_19c

    .line 1094
    :cond_164
    packed-switch v5, :pswitch_data_24a

    :pswitch_167
    move-object v1, v4

    .line 1107
    :goto_168
    if-eqz v1, :cond_196

    .line 1108
    array-length v5, v1

    move v0, v6

    :goto_16c
    if-ge v0, v5, :cond_196

    aget-object v8, v1, v0

    .line 1109
    if-eqz v8, :cond_179

    .line 1110
    invoke-virtual {v8}, Lcom/wssnps/mmspdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_179
    add-int/lit8 v0, v0, 0x1

    goto :goto_16c

    .line 1097
    :pswitch_17c
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wssnps/mmspdu/EncodedStringValue;

    move-object v1, v0

    .line 1098
    goto :goto_168

    .line 1100
    :pswitch_188
    const/16 v0, 0x97

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wssnps/mmspdu/EncodedStringValue;

    move-object v1, v0

    .line 1101
    goto :goto_168

    .line 1114
    :cond_196
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    .line 1116
    :cond_19c
    const-string v2, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1122
    instance-of v0, p1, Lcom/wssnps/mmspdu/MultimediaMessagePdu;

    if-eqz v0, :cond_1c6

    .line 1123
    check-cast p1, Lcom/wssnps/mmspdu/MultimediaMessagePdu;

    invoke-virtual {p1}, Lcom/wssnps/mmspdu/MultimediaMessagePdu;->getBody()Lcom/wssnps/mmspdu/PduBody;

    move-result-object v1

    .line 1125
    if-eqz v1, :cond_1c6

    .line 1126
    invoke-virtual {v1}, Lcom/wssnps/mmspdu/PduBody;->getPartsNum()I

    move-result v2

    move v0, v6

    .line 1127
    :goto_1ba
    if-ge v0, v2, :cond_1c6

    .line 1128
    invoke-virtual {v1, v0}, Lcom/wssnps/mmspdu/PduBody;->getPart(I)Lcom/wssnps/mmspdu/PduPart;

    move-result-object v5

    .line 1129
    invoke-virtual {p0, v5, v8, v9}, Lcom/wssnps/mmspdu/PduPersister;->persistPart(Lcom/wssnps/mmspdu/PduPart;J)Landroid/net/Uri;

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ba

    .line 1134
    :cond_1c6
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/wssnps/mmspdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, p2, v3}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1135
    if-nez v0, :cond_1d8

    .line 1136
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "persist() failed: return null."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_1d8
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 1142
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 1143
    const-string v0, "mid"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1144
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/wssnps/mmspdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/part"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1155
    sget-object v3, Lcom/wssnps/mmspdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v4, v3

    move v1, v6

    :goto_22e
    if-ge v1, v4, :cond_245

    aget v5, v3, v1

    .line 1156
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wssnps/mmspdu/EncodedStringValue;

    .line 1157
    if-eqz v0, :cond_241

    .line 1158
    invoke-direct {p0, v10, v11, v5, v0}, Lcom/wssnps/mmspdu/PduPersister;->persistAddress(JI[Lcom/wssnps/mmspdu/EncodedStringValue;)V

    .line 1155
    :cond_241
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22e

    .line 1162
    :cond_245
    return-object v2

    :cond_246
    move-object v0, v4

    goto/16 :goto_13a

    .line 1094
    nop

    :pswitch_data_24a
    .packed-switch 0x80
        :pswitch_188
        :pswitch_167
        :pswitch_17c
        :pswitch_167
        :pswitch_17c
    .end packed-switch
.end method

.method public persistPart(Lcom/wssnps/mmspdu/PduPart;J)Landroid/net/Uri;
    .registers 14
    .parameter "part"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 655
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://mms/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/part"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 656
    .local v5, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 658
    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getCharset()I

    move-result v0

    .line 659
    .local v0, charset:I
    if-eqz v0, :cond_33

    .line 660
    const-string v8, "chset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    :cond_33
    const/4 v1, 0x0

    .line 664
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getContentType()[B

    move-result-object v8

    if-eqz v8, :cond_d3

    .line 665
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getContentType()[B

    move-result-object v8

    invoke-static {v8}, Lcom/wssnps/mmspdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    .line 666
    const-string v8, "ct"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v8, "application/smil"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 669
    const-string v8, "seq"

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    :cond_59
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getFilename()[B

    move-result-object v8

    if-eqz v8, :cond_6d

    .line 676
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getFilename()[B

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    .line 677
    .local v2, fileName:Ljava/lang/String;
    const-string v8, "fn"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .end local v2           #fileName:Ljava/lang/String;
    :cond_6d
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getName()[B

    move-result-object v8

    if-eqz v8, :cond_81

    .line 681
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getName()[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    .line 682
    .local v3, name:Ljava/lang/String;
    const-string v8, "name"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .end local v3           #name:Ljava/lang/String;
    :cond_81
    const/4 v6, 0x0

    .line 686
    .local v6, value:Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getContentDisposition()[B

    move-result-object v8

    if-eqz v8, :cond_97

    .line 687
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getContentDisposition()[B

    move-result-object v8

    invoke-static {v8}, Lcom/wssnps/mmspdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    .line 688
    .local v6, value:Ljava/lang/String;
    const-string v8, "cd"

    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_97
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getContentId()[B

    move-result-object v8

    if-eqz v8, :cond_ac

    .line 692
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getContentId()[B

    move-result-object v8

    invoke-static {v8}, Lcom/wssnps/mmspdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    .line 693
    .restart local v6       #value:Ljava/lang/String;
    const-string v8, "cid"

    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :cond_ac
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getContentLocation()[B

    move-result-object v8

    if-eqz v8, :cond_c1

    .line 697
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/PduPart;->getContentLocation()[B

    move-result-object v8

    invoke-static {v8}, Lcom/wssnps/mmspdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    .line 698
    .restart local v6       #value:Ljava/lang/String;
    const-string v8, "cl"

    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_c1
    iget-object v8, p0, Lcom/wssnps/mmspdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/wssnps/mmspdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v9, v5, v7}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 702
    .local v4, res:Landroid/net/Uri;
    if-nez v4, :cond_db

    .line 703
    new-instance v8, Lcom/google/android/mms/MmsException;

    const-string v9, "Failed to persist part, return null."

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 672
    .end local v4           #res:Landroid/net/Uri;
    :cond_d3
    new-instance v8, Lcom/google/android/mms/MmsException;

    const-string v9, "MIME type of the part must be set."

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 706
    .restart local v4       #res:Landroid/net/Uri;
    :cond_db
    invoke-direct {p0, p1, v4, v1}, Lcom/wssnps/mmspdu/PduPersister;->persistData(Lcom/wssnps/mmspdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    .line 709
    invoke-virtual {p1, v4}, Lcom/wssnps/mmspdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 711
    return-object v4
.end method
