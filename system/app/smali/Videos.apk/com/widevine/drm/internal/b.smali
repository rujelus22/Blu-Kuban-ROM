.class public final Lcom/widevine/drm/internal/b;
.super Ljava/lang/Object;


# static fields
.field private static p:Lcom/widevine/drmapi/android/WVEventListener;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/widevine/drmapi/android/WVStatus;

.field private h:Lcom/widevine/drmapi/android/WVEvent;

.field private i:Lcom/widevine/drm/internal/x;

.field private j:J

.field private k:J

.field private l:J

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V
    .registers 7

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/widevine/drm/internal/b;->a:J

    iput-wide v2, p0, Lcom/widevine/drm/internal/b;->c:J

    iput-wide v2, p0, Lcom/widevine/drm/internal/b;->b:J

    iput-wide v2, p0, Lcom/widevine/drm/internal/b;->l:J

    iput-wide v2, p0, Lcom/widevine/drm/internal/b;->k:J

    iput-wide v2, p0, Lcom/widevine/drm/internal/b;->j:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/widevine/drm/internal/b;->f:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->n:Ljava/lang/String;

    iput-object p2, p0, Lcom/widevine/drm/internal/b;->g:Lcom/widevine/drmapi/android/WVStatus;

    iput-object p1, p0, Lcom/widevine/drm/internal/b;->i:Lcom/widevine/drm/internal/x;

    iput-boolean v1, p0, Lcom/widevine/drm/internal/b;->d:Z

    iput-boolean v1, p0, Lcom/widevine/drm/internal/b;->m:Z

    iput v1, p0, Lcom/widevine/drm/internal/b;->o:I

    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    invoke-virtual {p1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_88

    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->NullEvent:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    :goto_36
    return-void

    :pswitch_37
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-ne p2, v0, :cond_40

    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->Initialized:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :cond_40
    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->InitializeFailed:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :pswitch_45
    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->Terminated:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :pswitch_4a
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq p2, v0, :cond_52

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OutOfRange:Lcom/widevine/drmapi/android/WVStatus;

    if-ne p2, v0, :cond_57

    :cond_52
    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->Playing:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :cond_57
    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->PlayFailed:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :pswitch_5c
    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->Stopped:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :pswitch_61
    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->Registered:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :pswitch_66
    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->Unregistered:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :pswitch_6b
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-ne p2, v0, :cond_74

    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->LicenseReceived:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :cond_74
    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->LicenseRequestFailed:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :pswitch_79
    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->QueryStatus:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :pswitch_7e
    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->SecureStore:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :pswitch_83
    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->EndOfList:Lcom/widevine/drmapi/android/WVEvent;

    iput-object v0, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    goto :goto_36

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_37
        :pswitch_45
        :pswitch_4a
        :pswitch_5c
        :pswitch_61
        :pswitch_66
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_79
        :pswitch_79
        :pswitch_7e
        :pswitch_7e
        :pswitch_83
        :pswitch_83
        :pswitch_83
    .end packed-switch
.end method

.method public static a(Lcom/widevine/drmapi/android/WVEventListener;)V
    .registers 1

    sput-object p0, Lcom/widevine/drm/internal/b;->p:Lcom/widevine/drmapi/android/WVEventListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/widevine/drm/internal/c;->b:[I

    iget-object v2, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v2}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_154

    :cond_12
    :goto_12
    sget-object v1, Lcom/widevine/drm/internal/c;->b:[I

    iget-object v2, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v2}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_15e

    :cond_1f
    :goto_1f
    sget-object v1, Lcom/widevine/drm/internal/c;->b:[I

    iget-object v2, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v2}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16e

    :cond_2c
    :goto_2c
    sget-object v1, Lcom/widevine/drm/internal/c;->b:[I

    iget-object v2, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v2}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_184

    :cond_39
    :goto_39
    :pswitch_39
    sget-object v1, Lcom/widevine/drm/internal/c;->b:[I

    iget-object v2, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v2}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_192

    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/widevine/drm/internal/b;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/widevine/drm/internal/b;->g:Lcom/widevine/drmapi/android/WVStatus;

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq v1, v2, :cond_5b

    const-string v1, "WVErrorKey"

    iget-object v2, p0, Lcom/widevine/drm/internal/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    sget-object v1, Lcom/widevine/drm/internal/c;->b:[I

    iget-object v2, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v2}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_19a

    :goto_68
    sget-object v1, Lcom/widevine/drm/internal/c;->b:[I

    iget-object v2, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v2}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1ba

    :goto_75
    :pswitch_75
    invoke-static {}, Lcom/widevine/drm/internal/s;->a()Lcom/widevine/drm/internal/s;

    move-result-object v1

    iget-object v2, p0, Lcom/widevine/drm/internal/b;->i:Lcom/widevine/drm/internal/x;

    iget-object v3, p0, Lcom/widevine/drm/internal/b;->g:Lcom/widevine/drmapi/android/WVStatus;

    invoke-virtual {v1, v2, v3}, Lcom/widevine/drm/internal/s;->a(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    sget-object v1, Lcom/widevine/drm/internal/b;->p:Lcom/widevine/drmapi/android/WVEventListener;

    iget-object v2, p0, Lcom/widevine/drm/internal/b;->h:Lcom/widevine/drmapi/android/WVEvent;

    invoke-interface {v1, v2, v0}, Lcom/widevine/drmapi/android/WVEventListener;->onEvent(Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)Lcom/widevine/drmapi/android/WVStatus;

    return-void

    :pswitch_88
    iget-boolean v1, p0, Lcom/widevine/drm/internal/b;->d:Z

    if-eqz v1, :cond_12

    const-string v1, "WVLicenseDurationRemainingKey"

    iget-wide v2, p0, Lcom/widevine/drm/internal/b;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WVPurchaseDurationRemainingKey"

    iget-wide v2, p0, Lcom/widevine/drm/internal/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WVPlaybackElapsedTimeKey"

    iget-wide v2, p0, Lcom/widevine/drm/internal/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    :pswitch_af
    iget-boolean v1, p0, Lcom/widevine/drm/internal/b;->m:Z

    if-eqz v1, :cond_1f

    const-string v1, "WVSystemIDKey"

    iget-wide v2, p0, Lcom/widevine/drm/internal/b;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WVAssetIDKey"

    iget-wide v2, p0, Lcom/widevine/drm/internal/b;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WVKeyIDKey"

    iget-wide v2, p0, Lcom/widevine/drm/internal/b;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f

    :pswitch_d6
    iget-object v1, p0, Lcom/widevine/drm/internal/b;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2c

    const-string v1, "WVAssetPathKey"

    iget-object v2, p0, Lcom/widevine/drm/internal/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/widevine/drm/internal/b;->e:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fb

    const-string v1, "WVAssetTypeKey"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_fb
    const-string v1, "WVAssetTypeKey"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :pswitch_107
    const-string v1, "WVIsEncryptedKey"

    iget-boolean v2, p0, Lcom/widevine/drm/internal/b;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_39

    :pswitch_114
    iget-boolean v1, p0, Lcom/widevine/drm/internal/b;->m:Z

    if-eqz v1, :cond_39

    const-string v1, "WVIsEncryptedKey"

    iget-boolean v2, p0, Lcom/widevine/drm/internal/b;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_39

    :pswitch_125
    iget v1, p0, Lcom/widevine/drm/internal/b;->o:I

    if-lez v1, :cond_46

    iget v1, p0, Lcom/widevine/drm/internal/b;->o:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_46

    iget-object v1, p0, Lcom/widevine/drm/internal/b;->g:Lcom/widevine/drmapi/android/WVStatus;

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-ne v1, v2, :cond_46

    const-string v1, "WVLicenseTypeKey"

    iget v2, p0, Lcom/widevine/drm/internal/b;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_46

    :pswitch_141
    const-string v1, "WVStatusKey"

    iget-object v2, p0, Lcom/widevine/drm/internal/b;->g:Lcom/widevine/drmapi/android/WVStatus;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_68

    :pswitch_14a
    const-string v1, "WVVersionKey"

    const-string v2, "5.0.0.5694"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_75

    nop

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_88
        :pswitch_88
        :pswitch_88
    .end packed-switch

    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_af
    .end packed-switch

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
    .end packed-switch

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_107
        :pswitch_114
        :pswitch_39
        :pswitch_107
        :pswitch_107
    .end packed-switch

    :pswitch_data_192
    .packed-switch 0x1
        :pswitch_125
        :pswitch_125
    .end packed-switch

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_141
        :pswitch_141
        :pswitch_141
        :pswitch_141
        :pswitch_141
        :pswitch_141
        :pswitch_141
        :pswitch_141
        :pswitch_141
        :pswitch_141
        :pswitch_141
        :pswitch_141
        :pswitch_141
        :pswitch_141
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch 0xa
        :pswitch_14a
        :pswitch_75
        :pswitch_75
        :pswitch_14a
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/widevine/drm/internal/b;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/widevine/drm/internal/b;->f:Z

    return-void
.end method

.method public final b(JJJ)V
    .registers 8

    iput-wide p1, p0, Lcom/widevine/drm/internal/b;->j:J

    iput-wide p3, p0, Lcom/widevine/drm/internal/b;->k:J

    iput-wide p5, p0, Lcom/widevine/drm/internal/b;->l:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/widevine/drm/internal/b;->m:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/widevine/drm/internal/b;->n:Ljava/lang/String;

    return-void
.end method
