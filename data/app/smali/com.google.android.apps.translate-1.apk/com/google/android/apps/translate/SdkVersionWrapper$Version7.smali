.class Lcom/google/android/apps/translate/SdkVersionWrapper$Version7;
.super Lcom/google/android/apps/translate/SdkVersionWrapper$Version5;
.source "SdkVersionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/SdkVersionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Version7"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version5;-><init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version7;-><init>()V

    return-void
.end method


# virtual methods
.method public hasFeatureTelephony(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 180
    .local v0, packMgr:Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
