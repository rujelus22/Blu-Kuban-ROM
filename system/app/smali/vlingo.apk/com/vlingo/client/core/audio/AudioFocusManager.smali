.class public abstract Lcom/vlingo/client/core/audio/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/audio/AudioFocusManager$1;,
        Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;,
        Lcom/vlingo/client/core/audio/AudioFocusManager$EclairAudioFocusManager;
    }
.end annotation


# static fields
.field public static final FOCUS_TYPE_FULL:I = 0x1

.field public static final FOCUS_TYPE_TRANSIENT:I = 0x2

.field public static final FOCUS_TYPE_TRANSIENT_MAY_DUCK:I = 0x3

.field public static instance:Lcom/vlingo/client/core/audio/AudioFocusManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/audio/AudioFocusManager;->instance:Lcom/vlingo/client/core/audio/AudioFocusManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 24
    const-class v1, Lcom/vlingo/client/core/audio/AudioFocusManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/core/audio/AudioFocusManager;->instance:Lcom/vlingo/client/core/audio/AudioFocusManager;

    if-nez v0, :cond_d

    .line 25
    invoke-static {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->newInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/audio/AudioFocusManager;->instance:Lcom/vlingo/client/core/audio/AudioFocusManager;

    .line 27
    :cond_d
    sget-object v0, Lcom/vlingo/client/core/audio/AudioFocusManager;->instance:Lcom/vlingo/client/core/audio/AudioFocusManager;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static newInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;
    .registers 4
    .parameter "context"

    .prologue
    .line 31
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 32
    .local v1, sdkVersion:I
    const/4 v0, 0x0

    .line 33
    .local v0, detector:Lcom/vlingo/client/core/audio/AudioFocusManager;
    const/16 v2, 0x8

    if-ge v1, v2, :cond_12

    .line 34
    new-instance v0, Lcom/vlingo/client/core/audio/AudioFocusManager$EclairAudioFocusManager;

    .end local v0           #detector:Lcom/vlingo/client/core/audio/AudioFocusManager;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/vlingo/client/core/audio/AudioFocusManager$EclairAudioFocusManager;-><init>(Lcom/vlingo/client/core/audio/AudioFocusManager$1;)V

    .line 39
    .restart local v0       #detector:Lcom/vlingo/client/core/audio/AudioFocusManager;
    :goto_11
    return-object v0

    .line 36
    :cond_12
    new-instance v0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;

    .end local v0           #detector:Lcom/vlingo/client/core/audio/AudioFocusManager;
    invoke-direct {v0, p0}, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;-><init>(Landroid/content/Context;)V

    .restart local v0       #detector:Lcom/vlingo/client/core/audio/AudioFocusManager;
    goto :goto_11
.end method


# virtual methods
.method public abstract abandonAudioFocus()V
.end method

.method public abstract release()V
.end method

.method public abstract requestAudioFocus(II)V
.end method
