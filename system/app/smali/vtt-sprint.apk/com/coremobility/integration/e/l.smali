.class public final Lcom/coremobility/integration/e/l;
.super Lcom/coremobility/integration/x;


# instance fields
.field d:Lcom/coremobility/f/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/coremobility/integration/x;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/l;->d:Lcom/coremobility/f/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "PhoneCall"

    return-object v0
.end method

.method public final a(Lcom/coremobility/f/g;)V
    .registers 4

    iput-object p1, p0, Lcom/coremobility/integration/e/l;->d:Lcom/coremobility/f/g;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/e/l;->a(Z)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/e/l;->a(Z)V

    goto :goto_1e
.end method

.method public final a(Z)V
    .registers 7

    const/16 v4, 0x17

    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/e/l;->d:Lcom/coremobility/f/g;

    if-eqz v2, :cond_1e

    if-nez p1, :cond_21

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v3, :cond_1f

    move v2, v0

    :goto_10
    if-eqz v2, :cond_21

    const-string v0, "Off"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/l;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->e(Lcom/coremobility/integration/x;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    move v2, v1

    goto :goto_10

    :cond_21
    if-eqz p1, :cond_1e

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v3, :cond_36

    :goto_27
    if-nez v0, :cond_1e

    const-string v0, "On"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/l;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->b(Lcom/coremobility/integration/x;)V

    goto :goto_1e

    :cond_36
    move v0, v1

    goto :goto_27
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/l;->d:Lcom/coremobility/f/g;

    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method
