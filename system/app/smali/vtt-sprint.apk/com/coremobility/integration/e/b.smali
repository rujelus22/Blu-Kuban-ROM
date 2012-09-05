.class public final Lcom/coremobility/integration/e/b;
.super Lcom/coremobility/integration/x;


# instance fields
.field d:Lcom/coremobility/f/g;

.field e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/coremobility/integration/x;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/b;->d:Lcom/coremobility/f/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/e/b;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "DataRoaming"

    return-object v0
.end method

.method public final a(Lcom/coremobility/f/g;)V
    .registers 4

    iput-object p1, p0, Lcom/coremobility/integration/e/b;->d:Lcom/coremobility/f/g;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/coremobility/integration/e/b;->d:Lcom/coremobility/f/g;

    invoke-virtual {v1}, Lcom/coremobility/f/g;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/e/b;->a(Z)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/e/b;->a(Z)V

    goto :goto_2a
.end method

.method public final a(Z)V
    .registers 7

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/16 v3, 0x17

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/e/b;->d:Lcom/coremobility/f/g;

    if-eqz v2, :cond_1e

    if-nez p1, :cond_21

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v4, :cond_1f

    move v2, v0

    :goto_10
    if-eqz v2, :cond_21

    const-string v0, "Off"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/b;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->d(Lcom/coremobility/integration/x;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    move v2, v1

    goto :goto_10

    :cond_21
    if-eqz p1, :cond_1e

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v4, :cond_4a

    :goto_27
    if-nez v0, :cond_1e

    :try_start_29
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "data_roaming"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_29 .. :try_end_3a} :catch_4c

    move-result v0

    :goto_3b
    if-nez v0, :cond_4f

    const-string v0, "Not Enabled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/b;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->c(Lcom/coremobility/integration/x;)V

    goto :goto_1e

    :cond_4a
    move v0, v1

    goto :goto_27

    :catch_4c
    move-exception v0

    move v0, v1

    goto :goto_3b

    :cond_4f
    const-string v0, "Enabled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e
.end method

.method public final a(Lcom/coremobility/integration/v;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/b;->d:Lcom/coremobility/f/g;

    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method
