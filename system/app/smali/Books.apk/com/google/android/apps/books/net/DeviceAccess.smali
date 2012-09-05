.class public final Lcom/google/android/apps/books/net/DeviceAccess;
.super Ljava/lang/Object;
.source "DeviceAccess.java"


# static fields
.field static final DEFAULT_SECONDS:J = 0x78L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;


# instance fields
.field private final mAllowed:Z

.field private final mMaxDevices:J

.field private final mSeconds:J

.field private final mUnrestricted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/apps/books/net/DeviceAccess;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x78

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/net/DeviceAccess;-><init>(ZZJJ)V

    sput-object v0, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;

    return-void
.end method

.method private constructor <init>(ZZJJ)V
    .registers 7
    .parameter "unrestricted"
    .parameter "allowed"
    .parameter "maxDevices"
    .parameter "seconds"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mUnrestricted:Z

    .line 71
    iput-boolean p2, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mAllowed:Z

    .line 72
    iput-wide p3, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mMaxDevices:J

    .line 73
    iput-wide p5, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mSeconds:J

    .line 74
    return-void
.end method

.method public static newInstance(ZZJJ)Lcom/google/android/apps/books/net/DeviceAccess;
    .registers 13
    .parameter "unrestricted"
    .parameter "allowed"
    .parameter "maxDevices"
    .parameter "seconds"

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/apps/books/net/DeviceAccess;

    move v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/net/DeviceAccess;-><init>(ZZJJ)V

    return-object v0
.end method


# virtual methods
.method public getMaxDevices()J
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mMaxDevices:J

    return-wide v0
.end method

.method public getSeconds()J
    .registers 3

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mSeconds:J

    return-wide v0
.end method

.method public isAllowed()Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mAllowed:Z

    return v0
.end method

.method public isUnrestricted()Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mUnrestricted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAccess{unrestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mUnrestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mMaxDevices:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
