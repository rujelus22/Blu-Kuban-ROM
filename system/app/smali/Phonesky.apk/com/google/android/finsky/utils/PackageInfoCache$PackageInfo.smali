.class final Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/PackageInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageInfo"
.end annotation


# instance fields
.field final canLaunch:Z

.field final isDisabledByUser:Z

.field final isSystemApp:Z

.field final isUpdatedSystemApp:Z

.field final versionCode:I

.field final versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;ZZZZ)V
    .registers 7
    .parameter "versionCode"
    .parameter "versionName"
    .parameter "isSystemApp"
    .parameter "isUpdatedSystemApp"
    .parameter "canLaunch"
    .parameter "isDisabledByUser"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->versionCode:I

    .line 170
    iput-object p2, p0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->versionName:Ljava/lang/String;

    .line 171
    iput-boolean p3, p0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->isSystemApp:Z

    .line 172
    iput-boolean p4, p0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->isUpdatedSystemApp:Z

    .line 173
    iput-boolean p5, p0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->canLaunch:Z

    .line 174
    iput-boolean p6, p0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->isDisabledByUser:Z

    .line 175
    return-void
.end method
