.class public Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk11;
.super Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk7;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk7;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk11;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk11;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk11;->a:Ljava/lang/Boolean;

    .line 30
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk11;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
