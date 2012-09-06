.class public Lcom/google/android/apps/plus/service/CameraMonitor;
.super Landroid/content/BroadcastReceiver;
.source "CameraMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/CameraMonitor$MediaObserver;
    }
.end annotation


# static fields
.field private static final MEDIA_STORE_URIS:[Landroid/net/Uri;

.field private static final sIntent:Landroid/content/Intent;

.field private static sMediaObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_IMAGES_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_VIDEO_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/service/CameraMonitor;->MEDIA_STORE_URIS:[Landroid/net/Uri;

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.NEW_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/service/CameraMonitor;->sIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 115
    return-void
.end method

.method static synthetic access$000()Landroid/content/Intent;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/apps/plus/service/CameraMonitor;->sIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static registerObservers(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 87
    sget-object v5, Lcom/google/android/apps/plus/service/CameraMonitor;->sMediaObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_c

    .line 88
    new-instance v5, Lcom/google/android/apps/plus/service/CameraMonitor$MediaObserver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/google/android/apps/plus/service/CameraMonitor$MediaObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v5, Lcom/google/android/apps/plus/service/CameraMonitor;->sMediaObserver:Landroid/database/ContentObserver;

    .line 91
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 92
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v0, Lcom/google/android/apps/plus/service/CameraMonitor;->MEDIA_STORE_URIS:[Landroid/net/Uri;

    .local v0, arr$:[Landroid/net/Uri;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_14
    if-ge v1, v2, :cond_21

    aget-object v3, v0, v1

    .line 93
    .local v3, mediaUri:Landroid/net/Uri;
    const/4 v5, 0x1

    sget-object v6, Lcom/google/android/apps/plus/service/CameraMonitor;->sMediaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 95
    .end local v3           #mediaUri:Landroid/net/Uri;
    :cond_21
    return-void
.end method

.method public static unregisterObservers(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 101
    sget-object v2, Lcom/google/android/apps/plus/service/CameraMonitor;->sMediaObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_5

    .line 110
    :goto_4
    return-void

    .line 105
    :cond_5
    sget-object v1, Lcom/google/android/apps/plus/service/CameraMonitor;->sMediaObserver:Landroid/database/ContentObserver;

    .line 106
    .local v1, unregisterObserver:Landroid/database/ContentObserver;
    const/4 v2, 0x0

    sput-object v2, Lcom/google/android/apps/plus/service/CameraMonitor;->sMediaObserver:Landroid/database/ContentObserver;

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_4
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 56
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "Camera Monitor"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 58
    .local v1, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 60
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/android/apps/plus/service/CameraMonitor$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/apps/plus/service/CameraMonitor$1;-><init>(Lcom/google/android/apps/plus/service/CameraMonitor;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 81
    return-void
.end method
