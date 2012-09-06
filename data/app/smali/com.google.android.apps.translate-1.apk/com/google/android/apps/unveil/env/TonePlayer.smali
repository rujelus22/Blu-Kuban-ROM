.class public Lcom/google/android/apps/unveil/env/TonePlayer;
.super Ljava/lang/Object;
.source "TonePlayer.java"


# static fields
.field private static final DEFAULT_VOLUME:I = 0x32

.field private static generators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/media/ToneGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/TonePlayer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static errorTone()V
    .registers 0

    .prologue
    .line 49
    return-void
.end method

.method private static getGenerator(II)Landroid/media/ToneGenerator;
    .registers 6
    .parameter "tone"
    .parameter "volume"

    .prologue
    .line 52
    sget-object v2, Lcom/google/android/apps/unveil/env/TonePlayer;->generators:Landroid/util/SparseArray;

    if-nez v2, :cond_b

    .line 53
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/google/android/apps/unveil/env/TonePlayer;->generators:Landroid/util/SparseArray;

    .line 57
    :cond_b
    mul-int/lit16 v2, p0, 0x2710

    add-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 58
    .local v1, key:Ljava/lang/Integer;
    sget-object v2, Lcom/google/android/apps/unveil/env/TonePlayer;->generators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ToneGenerator;

    .line 60
    .local v0, generator:Landroid/media/ToneGenerator;
    if-nez v0, :cond_30

    .line 61
    new-instance v0, Landroid/media/ToneGenerator;

    .end local v0           #generator:Landroid/media/ToneGenerator;
    const/16 v2, 0x8

    invoke-direct {v0, v2, p1}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 62
    .restart local v0       #generator:Landroid/media/ToneGenerator;
    sget-object v2, Lcom/google/android/apps/unveil/env/TonePlayer;->generators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    :cond_30
    return-object v0
.end method

.method public static logTone(II)V
    .registers 4
    .parameter "tone"
    .parameter "duration"

    .prologue
    .line 31
    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/unveil/env/TonePlayer;->logTone(IIIZ)V

    .line 32
    return-void
.end method

.method public static logTone(IIIZ)V
    .registers 4
    .parameter "tone"
    .parameter "duration"
    .parameter "volume"
    .parameter "force"

    .prologue
    .line 37
    if-nez p3, :cond_3

    .line 43
    :goto_2
    return-void

    .line 42
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/unveil/env/TonePlayer;->startTone(III)V

    goto :goto_2
.end method

.method private static startTone(III)V
    .registers 4
    .parameter "tone"
    .parameter "duration"
    .parameter "volume"

    .prologue
    .line 25
    invoke-static {p0, p2}, Lcom/google/android/apps/unveil/env/TonePlayer;->getGenerator(II)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 27
    .local v0, generator:Landroid/media/ToneGenerator;
    invoke-virtual {v0, p0, p1}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 28
    return-void
.end method
