.class public Lcom/google/googlenav/friend/reporting/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Class;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/googlenav/friend/reporting/g;

.field private final d:Lcom/google/googlenav/friend/reporting/d;

.field private final e:Lcom/google/googlenav/friend/reporting/s;

.field private final f:Lcom/google/googlenav/friend/reporting/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;

    sput-object v0, Lcom/google/googlenav/friend/reporting/n;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/g;Lcom/google/googlenav/friend/reporting/d;Lcom/google/googlenav/friend/reporting/s;Lcom/google/googlenav/friend/reporting/e;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/googlenav/friend/reporting/n;->b:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/google/googlenav/friend/reporting/n;->c:Lcom/google/googlenav/friend/reporting/g;

    .line 62
    iput-object p3, p0, Lcom/google/googlenav/friend/reporting/n;->d:Lcom/google/googlenav/friend/reporting/d;

    .line 63
    iput-object p4, p0, Lcom/google/googlenav/friend/reporting/n;->e:Lcom/google/googlenav/friend/reporting/s;

    .line 64
    iput-object p5, p0, Lcom/google/googlenav/friend/reporting/n;->f:Lcom/google/googlenav/friend/reporting/e;

    .line 65
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/googlenav/friend/reporting/n;
    .registers 7
    .parameter

    .prologue
    .line 71
    new-instance v0, Lcom/google/googlenav/friend/reporting/f;

    invoke-static {p0}, Lcom/google/googlenav/friend/reporting/u;->a(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/reporting/f;-><init>(Ljavax/crypto/SecretKey;)V

    .line 72
    invoke-static {p0, v0}, Lcom/google/googlenav/friend/reporting/s;->a(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/f;)Lcom/google/googlenav/friend/reporting/s;

    move-result-object v4

    .line 74
    new-instance v2, Lcom/google/googlenav/friend/reporting/g;

    invoke-direct {v2, p0, v0, v4}, Lcom/google/googlenav/friend/reporting/g;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/f;Lcom/google/googlenav/friend/reporting/s;)V

    .line 76
    new-instance v3, Lcom/google/googlenav/friend/reporting/d;

    invoke-static {p0}, LaT/b;->a(Landroid/content/Context;)LaT/b;

    move-result-object v0

    invoke-direct {v3, p0, v0, v4}, Lcom/google/googlenav/friend/reporting/d;-><init>(Landroid/content/Context;LaT/b;Lcom/google/googlenav/friend/reporting/s;)V

    .line 78
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 80
    new-instance v5, Lcom/google/googlenav/friend/reporting/e;

    invoke-direct {v5, p0}, Lcom/google/googlenav/friend/reporting/e;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/google/googlenav/friend/reporting/n;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/friend/reporting/n;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/g;Lcom/google/googlenav/friend/reporting/d;Lcom/google/googlenav/friend/reporting/s;Lcom/google/googlenav/friend/reporting/e;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/n;->d()Z

    move-result v0

    if-nez v0, :cond_7

    .line 122
    :cond_6
    :goto_6
    return-void

    .line 112
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/n;->f:Lcom/google/googlenav/friend/reporting/e;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/e;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/n;->e()V

    .line 121
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/n;->c()V

    goto :goto_6
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/n;->e:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/friend/reporting/s;->a(J)V

    .line 94
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/n;->a()V

    .line 95
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/n;->f()V

    .line 133
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/n;->c:Lcom/google/googlenav/friend/reporting/g;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/g;->c()V
    :try_end_8
    .catch Lcom/google/googlenav/friend/reporting/b; {:try_start_3 .. :try_end_8} :catch_15

    .line 138
    :goto_8
    :try_start_8
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/n;->d:Lcom/google/googlenav/friend/reporting/d;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/d;->c()V
    :try_end_d
    .catch Lcom/google/googlenav/friend/reporting/b; {:try_start_8 .. :try_end_d} :catch_13

    .line 142
    :goto_d
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/n;->e:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/s;->d()Z

    .line 143
    return-void

    .line 139
    :catch_13
    move-exception v0

    goto :goto_d

    .line 134
    :catch_15
    move-exception v0

    goto :goto_8
.end method

.method c()V
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/n;->b:Landroid/content/Context;

    new-instance v1, LR/a;

    invoke-direct {v1}, LR/a;-><init>()V

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a(Landroid/content/Context;Lcom/google/googlenav/common/a;)V

    .line 148
    return-void
.end method

.method d()Z
    .registers 2

    .prologue
    .line 152
    invoke-static {}, Lcom/google/googlenav/friend/au;->k()Z

    move-result v0

    return v0
.end method

.method e()V
    .registers 9

    .prologue
    const-wide/32 v2, 0xea60

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 162
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/n;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 165
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/googlenav/friend/reporting/n;->b:Landroid/content/Context;

    sget-object v6, Lcom/google/googlenav/friend/reporting/n;->a:Ljava/lang/Class;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    iget-object v5, p0, Lcom/google/googlenav/friend/reporting/n;->b:Landroid/content/Context;

    const/high16 v6, 0x800

    invoke-static {v5, v7, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 183
    iget-object v6, p0, Lcom/google/googlenav/friend/reporting/n;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/location/clientlib/b;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6e

    iget-object v6, p0, Lcom/google/googlenav/friend/reporting/n;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/location/clientlib/b;->b(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 186
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 189
    iget-object v5, p0, Lcom/google/googlenav/friend/reporting/n;->b:Landroid/content/Context;

    const/high16 v6, 0x1000

    invoke-static {v5, v7, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 193
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.google.android.location.internal.GMM_NLP"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v6, "com.google.android.location.internal.EXTRA_DEBUG_INFO"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    const-string v6, "com.google.android.location.internal.EXTRA_PENDING_INTENT"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    const-string v6, "com.google.android.location.internal.EXTRA_PERIOD_MILLIS"

    invoke-virtual {v1, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/n;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_5a

    .line 222
    :cond_5a
    :goto_5a
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "passive"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 223
    const-string v1, "passive"

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 226
    :cond_6d
    return-void

    .line 211
    :cond_6e
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v6, "network"

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 212
    const-string v1, "network"

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_5a
.end method

.method f()V
    .registers 6

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/n;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 235
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/n;->b:Landroid/content/Context;

    sget-object v3, Lcom/google/googlenav/friend/reporting/n;->a:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/n;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 241
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 243
    return-void
.end method
