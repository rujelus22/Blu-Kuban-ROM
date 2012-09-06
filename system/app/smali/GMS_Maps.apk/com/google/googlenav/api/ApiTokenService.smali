.class public Lcom/google/googlenav/api/ApiTokenService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lac/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/google/googlenav/api/ApiTokenService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/api/ApiTokenService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/api/ApiTokenService;-><init>(Lac/p;)V

    .line 40
    return-void
.end method

.method constructor <init>(Lac/p;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    const-class v0, Lcom/google/googlenav/api/ApiTokenService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/google/googlenav/api/ApiTokenService;->b:Lac/p;

    .line 46
    return-void
.end method

.method private a(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 7
    .parameter

    .prologue
    .line 72
    const-string v0, "com.google.android.maps.api.extra.SENDER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 73
    instance-of v1, v0, Landroid/app/PendingIntent;

    if-nez v1, :cond_c

    .line 76
    const/4 v0, 0x0

    .line 116
    :goto_b
    return-object v0

    .line 78
    :cond_c
    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/api/ApiTokenService;->a(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.maps.api.action.TOKEN_RESPONSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v1}, Lcom/google/googlenav/api/ApiTokenService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    if-nez v2, :cond_2a

    .line 86
    const-string v1, "com.google.android.maps.api.extra.ERROR"

    const-string v2, "CERTIFICATE_ERROR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    .line 92
    :cond_2a
    const-string v3, "com.google.android.maps.api.extra.API_KEY"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    if-nez v3, :cond_3a

    .line 95
    const-string v1, "com.google.android.maps.api.extra.ERROR"

    const-string v2, "INVALID_PARAMETERS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    .line 101
    :cond_3a
    new-instance v4, Lcom/google/googlenav/api/a;

    invoke-direct {v4, v3, v1, v2}, Lcom/google/googlenav/api/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/google/googlenav/api/ApiTokenService;->b:Lac/p;

    const-wide/16 v2, 0x7530

    invoke-virtual {v4, v1, v2, v3}, Lcom/google/googlenav/api/a;->a(Lac/p;J)Lcom/google/googlenav/api/b;

    move-result-object v1

    .line 103
    if-nez v1, :cond_51

    .line 105
    const-string v1, "com.google.android.maps.api.extra.ERROR"

    const-string v2, "TIMEOUT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    .line 107
    :cond_51
    iget-boolean v2, v1, Lcom/google/googlenav/api/b;->a:Z

    if-nez v2, :cond_5d

    .line 109
    const-string v1, "com.google.android.maps.api.extra.ERROR"

    const-string v2, "REJECTED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    .line 114
    :cond_5d
    const-string v2, "com.google.android.maps.api.extra.API_TOKEN"

    iget-object v3, v1, Lcom/google/googlenav/api/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v2, "com.google.android.maps.api.extra.API_TOKEN_EXPIRY"

    iget-wide v3, v1, Lcom/google/googlenav/api/b;->c:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_b
.end method


# virtual methods
.method a(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/googlenav/api/ApiTokenService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/googlenav/api/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 50
    const-string v0, "com.google.android.maps.api.action.TOKEN_REQUEST"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 51
    invoke-direct {p0, p1}, Lcom/google/googlenav/api/ApiTokenService;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 52
    if-nez v0, :cond_13

    .line 65
    :cond_12
    :goto_12
    return-void

    .line 63
    :cond_13
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/api/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/api/ApiTokenService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_12
.end method
