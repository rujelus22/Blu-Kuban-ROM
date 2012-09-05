.class public final Lcom/coremobility/integration/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/i/a;
.implements Lcom/coremobility/integration/k;


# static fields
.field protected static a:[Lcom/coremobility/integration/a/i;

.field private static final c:[Ljava/lang/String;

.field private static e:Lcom/coremobility/integration/aa;

.field private static f:Lcom/coremobility/integration/a/a;


# instance fields
.field private b:Ljava/util/Hashtable;

.field private d:Lcom/coremobility/integration/a/g;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x5

    const/4 v5, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/coremobility/integration/a/i;

    const/4 v1, 0x0

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "sdk"

    invoke-direct {v2, v3, v8, v8}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/coremobility/integration/a/i;

    const-string v2, "HERO200"

    invoke-direct {v1, v2, v6, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/coremobility/integration/a/i;

    const-string v2, "SPH-M900"

    invoke-direct {v1, v2, v7, v7}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/coremobility/integration/a/i;

    const-string v2, "PC36100"

    invoke-direct {v1, v2, v5, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/coremobility/integration/a/i;

    const-string v2, "SPH-M910"

    invoke-direct {v1, v2, v9, v7}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/integration/a/i;

    const-string v2, "SPH-D700"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v7}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v9

    const/4 v1, 0x6

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "PG06100"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "LS670"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "SPH-M920"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4, v7}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "PG86100"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "SPH-D600"

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4, v7}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "MB855"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4, v9}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "SPH-D710"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4, v7}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "PH44100"

    const/16 v4, 0xe

    invoke-direct {v2, v3, v4, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "EVO"

    const/16 v4, 0xf

    invoke-direct {v2, v3, v4, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "HTCEVODesign4G"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "HTCEVOV4G"

    const/16 v4, 0x11

    invoke-direct {v2, v3, v4, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "SPH-L710"

    const/16 v4, 0x12

    invoke-direct {v2, v3, v4, v7}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "SPH-L300"

    const/16 v4, 0x13

    invoke-direct {v2, v3, v4, v7}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "C5170"

    const/16 v4, 0x14

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    new-array v0, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cmconfigstring"

    aput-object v2, v0, v1

    const-string v1, "cmconfigvalue"

    aput-object v1, v0, v8

    const-string v1, "cmconfigdata"

    aput-object v1, v0, v6

    sput-object v0, Lcom/coremobility/integration/a/a;->c:[Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/integration/aa;->a()Lcom/coremobility/integration/aa;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/a/a;->e:Lcom/coremobility/integration/aa;

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/a/a;->f:Lcom/coremobility/integration/a/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    return-void
.end method

.method public static a()Lcom/coremobility/integration/a/a;
    .registers 12

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/coremobility/integration/a/a;->f:Lcom/coremobility/integration/a/a;

    if-nez v0, :cond_214

    new-instance v4, Lcom/coremobility/integration/a/a;

    invoke-direct {v4}, Lcom/coremobility/integration/a/a;-><init>()V

    sput-object v4, Lcom/coremobility/integration/a/a;->f:Lcom/coremobility/integration/a/a;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    if-nez v0, :cond_19

    new-instance v0, Lcom/coremobility/integration/a/g;

    invoke-direct {v0, v4}, Lcom/coremobility/integration/a/g;-><init>(Lcom/coremobility/integration/a/a;)V

    iput-object v0, v4, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    :cond_19
    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_178

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "SIM_CONFIG_VALUE_FAKE_SMS_IP"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x405

    invoke-direct {v3, v4, v5, v6}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "SIM_CONFIG_VALUE_FAKE_SMS_PORT"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x406

    invoke-direct {v3, v4, v5, v6}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "SIM_CONFIG_VALUE_FAKE_SMS_PING_TIME"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x408

    invoke-direct {v3, v4, v5, v6}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_MMS_LOCATOR_URL"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1300

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_MMS_URL_0"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1320

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_MMS_URL_1"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1321

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_MMS_URL_2"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1322

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_MMS_URL_3"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1323

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_REST_LOCATOR_URL"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1800

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_REST_URL_0"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1820

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_LOGIN_NAI"

    new-instance v3, Lcom/coremobility/integration/a/d;

    invoke-direct {v3, v4, v6, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_LOGIN_NAI_PW"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_LOGIN_NAI_DOMAIN"

    new-instance v3, Lcom/coremobility/integration/a/d;

    invoke-direct {v3, v4, v11, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_SLOT_NAI"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_SLOT_NAI_PW"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_SLOT_NAI_DOMAIN"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/4 v5, 0x6

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_LOGIN_MDN"

    new-instance v3, Lcom/coremobility/integration/a/d;

    invoke-direct {v3, v4, v2, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_MSID"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0xf

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_MEID"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x12

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_ESN"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0xe

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "SIM_CONFIG_VALUE_ENABLE_FAKE_SMS"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x404

    invoke-direct {v3, v4, v5, v6}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_DEVICE_MODEL"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0xc

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_DEVICE_REVISION"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0xd

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_CARRIER"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x11

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_DEVICE_PLATFORM"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_178
    new-instance v0, Lcom/coremobility/integration/a/e;

    invoke-direct {v0, v4}, Lcom/coremobility/integration/a/e;-><init>(Lcom/coremobility/integration/a/a;)V

    iget-object v1, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/e;->a(Ljava/util/Hashtable;)V

    invoke-virtual {v0}, Lcom/coremobility/integration/a/e;->a()Lcom/coremobility/integration/a/g;

    move-result-object v5

    move v3, v2

    :goto_187
    if-ge v3, v11, :cond_1f4

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/a/a;->c:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    move v1, v2

    :goto_1ae
    array-length v0, v6

    if-ge v1, v0, :cond_1f0

    aget-object v0, v6, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/integration/a/a;->b(Ljava/lang/String;)I

    move-result v8

    invoke-static {v0}, Lcom/coremobility/integration/a/a;->c(Ljava/lang/String;)I

    move-result v9

    if-ltz v8, :cond_1d8

    if-ltz v9, :cond_1d8

    aget-object v0, v7, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1dc

    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/Integer;

    iget-object v10, v4, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v10, v3}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v8, v9, v0}, Lcom/coremobility/integration/a/f;->a(IILjava/lang/String;)V

    :cond_1d8
    :goto_1d8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1ae

    :cond_1dc
    aget-object v0, v7, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1d8

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v10

    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v8, v9, v0}, Lcom/coremobility/integration/a/f;->a(IILjava/lang/String;)V

    goto :goto_1d8

    :cond_1f0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_187

    :cond_1f4
    if-eqz v5, :cond_208

    :goto_1f6
    if-ge v2, v11, :cond_208

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-virtual {v5, v2}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/f;->a(Lcom/coremobility/integration/a/f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f6

    :cond_208
    invoke-static {}, Lcom/coremobility/integration/d;->a()Lcom/coremobility/integration/d;

    invoke-static {}, Lcom/coremobility/i/b;->a()Lcom/coremobility/i/b;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/a/a;->f:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v1}, Lcom/coremobility/i/b;->a(Lcom/coremobility/i/a;)V

    :cond_214
    sget-object v0, Lcom/coremobility/integration/a/a;->f:Lcom/coremobility/integration/a/a;

    return-object v0
.end method

.method private a(II[B)Z
    .registers 9

    const/4 v3, 0x2

    :try_start_1
    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/coremobility/integration/a/f;->a(IILjava/lang/String;)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_12} :catch_35

    :goto_12
    invoke-static {v3}, Lcom/coremobility/integration/a/a;->f(I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/coremobility/integration/a/a;->b(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x3

    shl-int/lit8 v4, p2, 0x10

    or-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    const/4 v0, 0x1

    return v0

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(III)I
    .registers 9

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v1, v3}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/coremobility/integration/a/f;->a(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    :try_start_e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_11} :catch_13

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v1

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_2e
    new-array v1, v3, [I

    invoke-static {p1, p2, v1}, Lcom/coremobility/integration/aa;->a(II[I)Z

    move-result v2

    if-ne v2, v3, :cond_38

    aget p3, v1, v0

    :cond_38
    move v0, p3

    goto :goto_12
.end method

.method private static b(Ljava/lang/String;)I
    .registers 8

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v0, -0x1

    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_d} :catch_2f

    move-result-object v1

    :try_start_e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_11} :catch_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_11} :catch_2f

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v1

    const/4 v2, 0x5

    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_2e} :catch_2f

    goto :goto_12

    :catch_2f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12
.end method

.method private static b(II)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/a/a;->f:Lcom/coremobility/integration/a/a;

    return-void
.end method

.method private static c(Ljava/lang/String;)I
    .registers 8

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v0, -0x1

    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :try_start_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_12} :catch_34

    move-result-object v1

    :try_start_13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_16} :catch_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_16} :catch_34

    move-result v0

    :goto_17
    return v0

    :catch_18
    move-exception v1

    const/4 v2, 0x5

    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_33} :catch_34

    goto :goto_17

    :catch_34
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public static e(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static f(I)Landroid/content/SharedPreferences$Editor;
    .registers 4

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/a/a;->c:[Ljava/lang/String;

    aget-object v1, v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/coremobility/integration/aa;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()V
    .registers 1

    sget-object v0, Lcom/coremobility/integration/a/a;->e:Lcom/coremobility/integration/aa;

    invoke-virtual {v0}, Lcom/coremobility/integration/aa;->b()V

    return-void
.end method

.method public static h()V
    .registers 1

    sget-object v0, Lcom/coremobility/integration/a/a;->e:Lcom/coremobility/integration/aa;

    invoke-virtual {v0}, Lcom/coremobility/integration/aa;->c()V

    return-void
.end method


# virtual methods
.method public final a(III)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/coremobility/integration/a/a;->b(III)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/coremobility/i/g;)I
    .registers 8

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/coremobility/i/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CFG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p1}, Lcom/coremobility/i/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/i/d;->a(Ljava/lang/String;)Lcom/coremobility/i/d;

    move-result-object v0

    if-nez v0, :cond_19

    move v0, v1

    :goto_18
    return v0

    :cond_19
    invoke-virtual {v0}, Lcom/coremobility/i/d;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/i/e;

    if-eqz v0, :cond_21

    iget-char v3, v0, Lcom/coremobility/i/e;->a:C

    sparse-switch v3, :sswitch_data_62

    goto :goto_21

    :sswitch_35
    :try_start_35
    iget v3, v0, Lcom/coremobility/i/e;->b:I

    iget v4, v0, Lcom/coremobility/i/e;->c:I

    iget-object v0, v0, Lcom/coremobility/i/e;->d:Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v3, v4, v0}, Lcom/coremobility/integration/a/a;->a(II[B)Z
    :try_end_44
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_35 .. :try_end_44} :catch_45

    goto :goto_21

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_21

    :sswitch_4a
    iget v3, v0, Lcom/coremobility/i/e;->b:I

    iget v4, v0, Lcom/coremobility/i/e;->c:I

    iget-object v0, v0, Lcom/coremobility/i/e;->d:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;Z)Z

    goto :goto_21

    :sswitch_54
    iget v3, v0, Lcom/coremobility/i/e;->b:I

    iget v4, v0, Lcom/coremobility/i/e;->c:I

    iget v0, v0, Lcom/coremobility/i/e;->e:I

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/coremobility/integration/a/a;->a(IIIZ)Z

    goto :goto_21

    :cond_5e
    move v0, v1

    goto :goto_18

    :cond_60
    const/4 v0, 0x0

    goto :goto_18

    :sswitch_data_62
    .sparse-switch
        0x64 -> :sswitch_35
        0x73 -> :sswitch_4a
        0x76 -> :sswitch_54
    .end sparse-switch
.end method

.method public final a(IILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILjava/lang/String;[I)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_6

    aput v2, p4, v2

    :cond_6
    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/coremobility/integration/a/f;->a(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    move-object p3, v0

    :cond_13
    :goto_13
    return-object p3

    :cond_14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/coremobility/integration/aa;->a(IILjava/lang/StringBuffer;)Z

    move-result v1

    if-ne v1, v3, :cond_24

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_13

    :cond_24
    if-eqz p4, :cond_13

    aput v3, p4, v2

    goto :goto_13
.end method

.method public final a(I)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coremobility/integration/a/f;->a(I)V

    invoke-static {v1}, Lcom/coremobility/integration/a/a;->f(I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, v1}, Lcom/coremobility/integration/a/a;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(II)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/coremobility/integration/a/a;->a(IIIZ)Z

    move-result v0

    return v0
.end method

.method public final a(IIIZ)Z
    .registers 10

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v4}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/coremobility/integration/a/f;->a(IILjava/lang/String;)V

    invoke-static {v4}, Lcom/coremobility/integration/a/a;->f(I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/coremobility/integration/a/a;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p4, :cond_2b

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    const/16 v1, 0x35

    const/4 v2, 0x0

    shl-int/lit8 v3, p2, 0x10

    or-int/2addr v3, p1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_2b
    return v4
.end method

.method public final a(IILjava/lang/String;Z)Z
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/coremobility/integration/a/f;->a(IILjava/lang/String;)V

    invoke-static {v1}, Lcom/coremobility/integration/a/a;->f(I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/coremobility/integration/a/a;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p4, :cond_28

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x2

    shl-int/lit8 v4, p2, 0x10

    or-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coremobility/integration/a/f;->a(I)V

    invoke-static {v1}, Lcom/coremobility/integration/a/a;->f(I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/coremobility/integration/a/a;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(IILjava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()I
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    move v0, v1

    :goto_c
    sget-object v3, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    sget-object v3, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/coremobility/integration/a/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_24

    sget-object v1, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    aget-object v0, v1, v0

    iget v1, v0, Lcom/coremobility/integration/a/i;->b:I

    goto :goto_a

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public final c(I)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/coremobility/integration/a/f;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    move v0, v1

    :goto_c
    sget-object v3, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    sget-object v3, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/coremobility/integration/a/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_24

    sget-object v1, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    aget-object v0, v1, v0

    iget v1, v0, Lcom/coremobility/integration/a/i;->c:I

    goto :goto_a

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public final d(I)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x404

    invoke-direct {p0, v2, v1, v1}, Lcom/coremobility/integration/a/a;->b(III)I

    move-result v2

    if-ne v2, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public final i()V
    .registers 15

    const/4 v13, 0x5

    const/4 v0, 0x2

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v9

    const/16 v3, 0x502

    invoke-virtual {p0, v3, v2, v12, v12}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p0, v2, v2, v4, v12}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v10

    const/16 v4, 0x503

    invoke-virtual {p0, v4, v2, v12, v12}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {p0, v1, v2, v5, v12}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v11

    if-eqz v3, :cond_c9

    invoke-virtual {v10, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_c9

    move v6, v1

    :goto_2a
    if-eqz v4, :cond_cc

    invoke-virtual {v11, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_cc

    move v5, v1

    :goto_33
    if-nez v3, :cond_e2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_e2

    move v8, v1

    :goto_3c
    if-nez v4, :cond_df

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_df

    move v7, v1

    :goto_45
    if-nez v8, :cond_49

    if-eqz v7, :cond_64

    :cond_49
    if-eqz v8, :cond_d1

    invoke-static {v10}, Lcom/coremobility/j/s;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cf

    move v6, v0

    :goto_52
    if-eqz v7, :cond_d7

    if-eqz v11, :cond_d3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d3

    move v5, v1

    :goto_5d
    if-eqz v5, :cond_d5

    :goto_5f
    const/16 v1, 0x3c

    invoke-virtual {v9, v1, v12, v6, v0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_64
    if-eqz v3, :cond_68

    if-eqz v8, :cond_96

    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v3, :cond_d9

    move-object v0, v3

    :goto_76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x502

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;Z)Z

    :cond_96
    if-eqz v4, :cond_9a

    if-eqz v7, :cond_c8

    :cond_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nai "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v4, :cond_dc

    move-object v0, v4

    :goto_a8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x503

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;Z)Z

    :cond_c8
    return-void

    :cond_c9
    move v6, v2

    goto/16 :goto_2a

    :cond_cc
    move v5, v2

    goto/16 :goto_33

    :cond_cf
    move v6, v1

    goto :goto_52

    :cond_d1
    move v6, v2

    goto :goto_52

    :cond_d3
    move v5, v2

    goto :goto_5d

    :cond_d5
    move v0, v1

    goto :goto_5f

    :cond_d7
    move v0, v2

    goto :goto_5f

    :cond_d9
    const-string v0, "null"

    goto :goto_76

    :cond_dc
    const-string v0, "null"

    goto :goto_a8

    :cond_df
    move v7, v5

    goto/16 :goto_45

    :cond_e2
    move v8, v6

    goto/16 :goto_3c
.end method
