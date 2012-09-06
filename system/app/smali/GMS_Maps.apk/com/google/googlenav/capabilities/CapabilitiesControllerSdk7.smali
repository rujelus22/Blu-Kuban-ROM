.class public Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk7;
.super Lcom/google/googlenav/capabilities/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/googlenav/capabilities/a;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 49
    const-string v0, "android:htc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "android:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "htc_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "htc-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "htc "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "htc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 55
    const-string v0, "puccinilte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 59
    const-string v0, "sholes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    .line 20
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 21
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0}, Lac/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk7;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {v0}, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk7;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_1e
    invoke-static {v0}, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk7;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 41
    :cond_24
    const/4 v0, 0x1

    .line 45
    :goto_25
    return v0

    :cond_26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_25
.end method
