.class public Lcom/samsung/swift/service/sound/RingtoneContentObserver;
.super Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;
.source "RingtoneContentObserver.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    const-class v0, Lcom/samsung/swift/service/sound/RingtoneContentObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/sound/RingtoneContentObserver;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 96
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;-><init>(Landroid/net/Uri;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 3

    .prologue
    .line 101
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->invalidateCache()V

    .line 102
    invoke-static {}, Lcom/samsung/swift/service/content/ContentPlugin;->invalidateCache()V

    .line 103
    sget-object v0, Lcom/samsung/swift/service/sound/RingtoneContentObserver;->LOGTAG:Ljava/lang/String;

    const-string v1, "Something changed in the Ringtone database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method
