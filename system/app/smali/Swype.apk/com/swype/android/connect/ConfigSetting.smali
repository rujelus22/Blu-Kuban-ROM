.class public Lcom/swype/android/connect/ConfigSetting;
.super Ljava/lang/Object;
.source "ConfigSetting.java"


# static fields
.field public static final CONNECT_BACKUP_NAMESPACE:Ljava/lang/String; = "SwypeConnect"

.field public static final CONNECT_PREFERENCES:Ljava/lang/String; = "ConnectPrefs"

.field public static final CONNECT_VERSION:Ljava/lang/String; = "3.0"

.field public static final LOGTAG:Ljava/lang/String; = "SwypeConnect"

.field public static final LOGTAG_COMMUNICATION:Ljava/lang/String; = "SwypeConnect"

.field public static final LOGTAG_REPORTING:Ljava/lang/String; = "SwypeConnect"

.field private static g_android_version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, -0x1

    sput v0, Lcom/swype/android/connect/ConfigSetting;->g_android_version:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAndroidVersion()I
    .registers 2

    .prologue
    .line 33
    sget v0, Lcom/swype/android/connect/ConfigSetting;->g_android_version:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 34
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/swype/android/connect/ConfigSetting;->g_android_version:I

    .line 36
    :cond_d
    sget v0, Lcom/swype/android/connect/ConfigSetting;->g_android_version:I

    return v0
.end method
