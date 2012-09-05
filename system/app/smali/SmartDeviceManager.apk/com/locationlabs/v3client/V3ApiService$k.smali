.class final Lcom/locationlabs/v3client/V3ApiService$k;
.super Lcom/locationlabs/v3client/V3ApiService$n;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/locationlabs/v3client/V3ApiService$n",
        "<",
        "Lcq;",
        "Lee;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/locationlabs/v3client/V3ApiService;


# direct methods
.method public constructor <init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$k;->c:Lcom/locationlabs/v3client/V3ApiService;

    .line 102
    const-string v0, "com.locationlabs.v3client.action.GET_ACCOUNT"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/locationlabs/v3client/V3ApiService$n;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/locationlabs/v3client/V3ApiService$k;->c(Landroid/content/Context;)V

    .line 114
    const-string v0, "CONSUMER_RETRY_TIME_SEC"

    invoke-static {v0}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Lw;->a(Ljava/lang/Long;)V

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/locationlabs/v3client/AccountService;->a(Landroid/content/Context;J)V

    .line 115
    return-void
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 98
    check-cast p2, Lcq;

    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-static {p1}, Lal;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2}, Lw;->a(Lcq;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lw;->a(Z)V

    invoke-interface {v0, v3}, Lw;->a(Ljava/lang/Long;)V

    const-string v2, "made account"

    invoke-static {v2}, Li;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/locationlabs/v3client/AccountService;->c(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/locationlabs/v3client/FeatureService;->b(Landroid/content/Context;)V

    invoke-static {p1, v3}, Lcom/locationlabs/v3client/ConfigurationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcq;->a()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0, v3}, Lw;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/locationlabs/v3client/MoSmsPhoneNumberService;->a(Landroid/content/Context;)V

    :goto_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lam;->a(J)Lcg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    invoke-static {p1}, Lcom/locationlabs/v3client/LocationService;->c(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/locationlabs/v3client/HeartbeatService;->b(Landroid/content/Context;)V

    invoke-interface {v0}, Lw;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Laf;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_49
    invoke-interface {v0, v1}, Lw;->a(Ljava/lang/String;)V

    goto :goto_2f
.end method
