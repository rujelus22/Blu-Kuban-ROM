.class public final Lbh;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private buildVersion:Ljava/lang/String;
    .annotation runtime Lfx;
        a = "buildVersion"
    .end annotation
.end field

.field private fingerprint:Ljava/lang/String;
    .annotation runtime Lfx;
        a = "fingerprint"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lfx;
        a = "id"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lfx;
        a = "message"
    .end annotation
.end field

.field private model:Ljava/lang/String;
    .annotation runtime Lfx;
        a = "model"
    .end annotation
.end field

.field private network:Ljava/lang/String;
    .annotation runtime Lfx;
        a = "network"
    .end annotation
.end field

.field private number:Ljava/lang/String;
    .annotation runtime Lfx;
        a = "number"
    .end annotation
.end field

.field private oauth_consumer_key:Ljava/lang/String;
    .annotation runtime Lfx;
        a = "oauth_consumer_key"
    .end annotation
.end field

.field private oauth_token:Ljava/lang/String;
    .annotation runtime Lfx;
        a = "oauth_token"
    .end annotation
.end field

.field private osVersion:Ljava/lang/String;
    .annotation runtime Lfx;
        a = "osVersion"
    .end annotation
.end field

.field private persistedKey:Ljava/lang/String;
    .annotation runtime Lfs;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lbh;->message:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lbh;->persistedKey:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public final addIdentifyingInfo(Lda;Lcq;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static {}, Ld;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbh;->buildVersion:Ljava/lang/String;

    .line 98
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lbh;->osVersion:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lda;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbh;->oauth_consumer_key:Ljava/lang/String;

    .line 100
    if-eqz p2, :cond_17

    .line 102
    iget-object v0, p2, Lcq;->a:Ljava/lang/String;

    iput-object v0, p0, Lbh;->oauth_token:Ljava/lang/String;

    .line 114
    :goto_16
    return-void

    .line 105
    :cond_17
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v1

    .line 106
    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 107
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lbh;->id:Ljava/lang/String;

    .line 108
    invoke-static {v0}, Lcom/locationlabs/v3client/AccountService;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbh;->network:Ljava/lang/String;

    .line 109
    invoke-static {v1}, Lcom/locationlabs/v3client/AccountService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbh;->number:Ljava/lang/String;

    .line 110
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lbh;->model:Ljava/lang/String;

    .line 111
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lbh;->fingerprint:Ljava/lang/String;

    goto :goto_16
.end method

.method public final getPersistedKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lbh;->persistedKey:Ljava/lang/String;

    return-object v0
.end method
