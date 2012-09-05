.class public final Lcom/sdgtl/mediahub/spr/contentProvider/a;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/Timer;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:J

.field private G:J

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/util/ArrayList;

.field private K:Lcom/sdgtl/mediahub/spr/common/dz;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/eo;)V
    .registers 11

    const/4 v7, 0x3

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->J:Ljava/util/ArrayList;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v2, "http://hub.samsungmediahub.net/store/common/store"

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d:Ljava/lang/String;

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k:Ljava/lang/String;

    if-eqz v2, :cond_126

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_126

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->e:Ljava/lang/String;

    :goto_52
    :try_start_52
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/sdgtl/mediahub/spr/a;->a:Z

    if-nez v3, :cond_12c

    if-nez v0, :cond_12c

    const-string v0, "5555550002"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i:Ljava/lang/String;
    :try_end_70
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_70} :catch_131

    move-object v0, v2

    :goto_71
    if-eqz v0, :cond_13b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13b

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->h:Ljava/lang/String;

    :goto_86
    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->m:Ljava/lang/String;

    iput v6, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n:I

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->s:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/ev;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u:Ljava/lang/String;

    const-string v0, "HTTPCLIENTPOOL_UA"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->v:Ljava/lang/String;

    const-string v0, "user_token"

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->w:Ljava/lang/String;

    const-string v0, "refresh_token"

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->x:Ljava/lang/String;

    const-string v0, "samsung_account"

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->y:Ljava/lang/String;

    const-string v0, "user_id"

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->z:Ljava/lang/String;

    iput v6, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->A:I

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->D:Ljava/lang/String;

    iput-wide v4, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->F:J

    const-string v0, "N"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->L:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_141

    move-object v0, v1

    :goto_f7
    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->M:Ljava/lang/String;

    const-string v0, "mymedia_last_updated"

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_172

    iput-wide v4, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->G:J

    :goto_103
    const-string v0, "no_sign_in_time"

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_189

    iput-wide v4, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->F:J

    :goto_10d
    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->a:Z

    if-nez v0, :cond_1a1

    if-eqz p2, :cond_123

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/eo;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->g:Ljava/lang/String;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/eo;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->h:Ljava/lang/String;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/eo;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->e:Ljava/lang/String;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/eo;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    :cond_123
    :goto_123
    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    return-void

    :cond_126
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->e:Ljava/lang/String;

    goto/16 :goto_52

    :cond_12c
    :try_start_12c
    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i:Ljava/lang/String;
    :try_end_12e
    .catch Ljava/lang/SecurityException; {:try_start_12c .. :try_end_12e} :catch_131

    move-object v0, v2

    goto/16 :goto_71

    :catch_131
    move-exception v0

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_71

    :cond_13b
    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->h:Ljava/lang/String;

    goto/16 :goto_86

    :cond_141
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X-Remote-Address.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_16d

    move-object v0, v1

    goto :goto_f7

    :cond_16d
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f7

    :cond_172
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17d

    iput-wide v4, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->G:J

    goto :goto_103

    :cond_17d
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->G:J

    goto/16 :goto_103

    :cond_189
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_195

    iput-wide v4, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->F:J

    goto/16 :goto_10d

    :cond_195
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->F:J

    goto/16 :goto_10d

    :cond_1a1
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_217

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_1c3

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_217

    :cond_1c3
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_1d1

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    const-string v2, "12345678"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_217

    :cond_1d1
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_1df

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    const-string v2, "004999010640000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_217

    :cond_1df
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_1ed

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    const-string v2, "B0000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_217

    :cond_1ed
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_1fb

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    const-string v2, "00000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_217

    :cond_1fb
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_209

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_217

    :cond_209
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_23d

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    const-string v2, "0000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23d

    :cond_217
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    const-string v2, "0000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23d

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23d

    if-nez v0, :cond_24f

    const-string v0, "1002"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    :cond_23d
    :goto_23d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    if-nez v0, :cond_123

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    goto/16 :goto_123

    :cond_24f
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    goto :goto_23d
.end method

.method private E()Lcom/sdgtl/mediahub/spr/common/dz;
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "purchase_lock_state"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "{\"state\":0,\"period\":0}"

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v2, "purchase_lock_state"

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/dz;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/dz;-><init>()V

    :goto_18
    return-object v0

    :cond_19
    :try_start_19
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->x(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dz;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_18

    :catch_1e
    move-exception v1

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/dz;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/dz;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_18
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X-Remote-Address.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_24
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    :cond_2f
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2f

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3e} :catch_4f

    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_4e
    return-object v0

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_4e
.end method


# virtual methods
.method public final A()I
    .registers 5

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->E()Lcom/sdgtl/mediahub/spr/common/dz;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dz;->a:I

    if-eqz v0, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/dz;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d(I)V

    :cond_1c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dz;->a:I

    return v0
.end method

.method public final B()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->e:Z

    if-nez v1, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c:Ljava/lang/String;

    const-string v1, "http"

    const-string v2, "https"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public final a(I)V
    .registers 5

    iput p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "rating_level"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    if-nez v0, :cond_b

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/dz;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/dz;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    :cond_b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    iput p1, v0, Lcom/sdgtl/mediahub/spr/common/dz;->a:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    iput-wide p2, v0, Lcom/sdgtl/mediahub/spr/common/dz;->b:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "store_url"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 6

    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    if-nez p1, :cond_18

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->j()V

    :cond_c
    :goto_c
    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->z:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->z:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->z:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->j()V

    goto :goto_c
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->J:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_33

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v2, "hd_support_devices_device_id"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/db;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/db;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v2, "hd_support_devices_device_nick_name"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/db;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/db;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "hd_support_devices_device_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "hd_support_devices_device_nick_name"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .registers 5

    iput p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->A:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "black_list_check"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0xea60

    mul-int/2addr v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->F:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "no_sign_in_time"

    iget-wide v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->F:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "shop_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .registers 7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    if-nez v0, :cond_b

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/dz;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/dz;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    :cond_b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    iput p1, v0, Lcom/sdgtl/mediahub/spr/common/dz;->a:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dz;->a:I

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/dz;->b:J

    :goto_1b
    :try_start_1b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Lcom/sdgtl/mediahub/spr/common/dz;)Ljava/lang/String;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_20} :catch_54

    move-result-object v0

    :goto_21
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v2, "purchase_lock_state"

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "purchase_lock_state_state"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/dz;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "purchase_lock_state_period"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/dz;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->K:Lcom/sdgtl/mediahub/spr/common/dz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x1b7740

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/dz;->b:J

    goto :goto_1b

    :catch_54
    move-exception v0

    move-object v1, v0

    const-string v0, "{\"state\":0,\"period\":0}"

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_21
.end method

.method public final d(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "channel_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "rating_mark"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "rating_request"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "country_code"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "shop_time_zone"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "language_code"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->s:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "user_token"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->w:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final k()I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n:I

    return v0
.end method

.method public final k(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "refresh_token"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->x:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "samsung_account"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->y:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "service_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->D:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final o(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "black_list_reason"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->B:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "migration_yn"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->C:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final q(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "currency_unit"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->E:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final r(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "domain_support_yn"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->L:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "force_upgrade_yn"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->H:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final t(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "download_network"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->I:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final v()I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->A:I

    return v0
.end method

.method public final w()V
    .registers 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->F:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "no_sign_in_time"

    iget-wide v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->F:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final x()Z
    .registers 5

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->F:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->F:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final y()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->G:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->N:Landroid/content/Context;

    const-string v1, "mymedia_last_updated"

    iget-wide v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->G:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final z()J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/a;->G:J

    return-wide v0
.end method
