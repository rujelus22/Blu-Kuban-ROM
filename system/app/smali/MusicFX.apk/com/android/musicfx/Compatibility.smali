.class public Lcom/android/musicfx/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/musicfx/Compatibility$Service;,
        Lcom/android/musicfx/Compatibility$Receiver;,
        Lcom/android/musicfx/Compatibility$Redirector;
    }
.end annotation


# static fields
.field private static final LOG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    const-string v0, "MusicFXCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/musicfx/Compatibility;->LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/musicfx/Compatibility;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 240
    sget-boolean v0, Lcom/android/musicfx/Compatibility;->LOG:Z

    if-eqz v0, :cond_9

    .line 241
    const-string v0, "MusicFXCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_9
    return-void
.end method
