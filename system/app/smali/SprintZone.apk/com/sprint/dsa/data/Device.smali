.class public Lcom/sprint/dsa/data/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lcom/sprint/dsa/res/CustomResourceQualifier;


# static fields
.field public static final MOTO_I1X:Ljava/lang/String; = "i1x"

.field public static final PG41200:Ljava/lang/String; = "PG41200"

.field public static final SPH_P100:Ljava/lang/String; = "SPH-P100"


# instance fields
.field private mHasVoice:Z

.field private mIden:Z

.field private mNoActivation:Z

.field private mOnlyActivation:Z

.field private mResourceQualifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/data/Device;->mResourceQualifier:Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/data/Device;->mHasVoice:Z

    .line 17
    iput-boolean v1, p0, Lcom/sprint/dsa/data/Device;->mNoActivation:Z

    .line 18
    iput-boolean v1, p0, Lcom/sprint/dsa/data/Device;->mOnlyActivation:Z

    .line 19
    iput-boolean v1, p0, Lcom/sprint/dsa/data/Device;->mIden:Z

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/sprint/dsa/data/Device;
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 27
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 30
    .local v1, model:Ljava/lang/String;
    sget-boolean v2, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/sprint/dsa/Util;->MODEL:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 31
    sget-object v1, Lcom/sprint/dsa/Util;->MODEL:Ljava/lang/String;

    .line 35
    :cond_d
    new-instance v0, Lcom/sprint/dsa/data/Device;

    invoke-direct {v0}, Lcom/sprint/dsa/data/Device;-><init>()V

    .line 37
    .local v0, device:Lcom/sprint/dsa/data/Device;
    const-string v2, "SPH-P100"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 38
    const-string v2, "PG41200"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 39
    :cond_22
    const-string v2, "novoice"

    iput-object v2, v0, Lcom/sprint/dsa/data/Device;->mResourceQualifier:Ljava/lang/String;

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sprint/dsa/data/Device;->mHasVoice:Z

    .line 44
    :cond_29
    const-string v2, "i1x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 45
    iput-boolean v3, v0, Lcom/sprint/dsa/data/Device;->mNoActivation:Z

    .line 46
    iput-boolean v3, v0, Lcom/sprint/dsa/data/Device;->mIden:Z

    .line 50
    :cond_35
    return-object v0
.end method


# virtual methods
.method public getResourceQualifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/dsa/data/Device;->mResourceQualifier:Ljava/lang/String;

    return-object v0
.end method

.method public hasVoice()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sprint/dsa/data/Device;->mHasVoice:Z

    return v0
.end method

.method public isIden()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sprint/dsa/data/Device;->mIden:Z

    return v0
.end method

.method public noActivation()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sprint/dsa/data/Device;->mNoActivation:Z

    return v0
.end method

.method public onlyActivition()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sprint/dsa/data/Device;->mOnlyActivation:Z

    return v0
.end method
