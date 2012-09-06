.class final Lcom/google/android/ytremote/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/b/h;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/ytremote/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/ytremote/model/PairingCode;
    .registers 3

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/ytremote/model/PairingCode;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/model/PairingCode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
