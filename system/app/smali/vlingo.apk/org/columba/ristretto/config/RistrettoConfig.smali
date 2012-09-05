.class public Lorg/columba/ristretto/config/RistrettoConfig;
.super Ljava/lang/Object;
.source "RistrettoConfig.java"


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x1d4c0

.field private static myInstance:Lorg/columba/ristretto/config/RistrettoConfig;


# instance fields
.field private checkCommandLineLength:Z

.field private timeout:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const v0, 0x1d4c0

    iput v0, p0, Lorg/columba/ristretto/config/RistrettoConfig;->timeout:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/columba/ristretto/config/RistrettoConfig;->checkCommandLineLength:Z

    .line 58
    return-void
.end method

.method public static getInstance()Lorg/columba/ristretto/config/RistrettoConfig;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lorg/columba/ristretto/config/RistrettoConfig;->myInstance:Lorg/columba/ristretto/config/RistrettoConfig;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lorg/columba/ristretto/config/RistrettoConfig;

    invoke-direct {v0}, Lorg/columba/ristretto/config/RistrettoConfig;-><init>()V

    sput-object v0, Lorg/columba/ristretto/config/RistrettoConfig;->myInstance:Lorg/columba/ristretto/config/RistrettoConfig;

    .line 70
    :cond_b
    sget-object v0, Lorg/columba/ristretto/config/RistrettoConfig;->myInstance:Lorg/columba/ristretto/config/RistrettoConfig;

    return-object v0
.end method


# virtual methods
.method public getTimeout()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lorg/columba/ristretto/config/RistrettoConfig;->timeout:I

    return v0
.end method

.method public isCheckCommandLineLength()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/columba/ristretto/config/RistrettoConfig;->checkCommandLineLength:Z

    return v0
.end method

.method public setCheckCommandLineLength(Z)V
    .registers 2
    .parameter "checkCommandLineLength"

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/columba/ristretto/config/RistrettoConfig;->checkCommandLineLength:Z

    .line 108
    return-void
.end method

.method public setTimeout(I)V
    .registers 2
    .parameter "ms"

    .prologue
    .line 80
    iput p1, p0, Lorg/columba/ristretto/config/RistrettoConfig;->timeout:I

    .line 81
    return-void
.end method
