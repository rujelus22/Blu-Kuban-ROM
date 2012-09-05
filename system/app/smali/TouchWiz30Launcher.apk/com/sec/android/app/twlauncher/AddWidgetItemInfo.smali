.class Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "AddWidgetItemInfo.java"


# instance fields
.field private mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mSupportSize:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 5
    .parameter "providerInfo"

    .prologue
    .line 17
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;J[Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;J[Ljava/lang/String;)V
    .registers 6
    .parameter "providerInfo"
    .parameter "multipleSize"
    .parameter "supportSize"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    .line 22
    const/16 v0, 0xfa4

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 23
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 26
    iput-wide p2, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    .line 27
    iput-object p4, p0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->mSupportSize:[Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method public getSupportSize()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->mSupportSize:[Ljava/lang/String;

    return-object v0
.end method
