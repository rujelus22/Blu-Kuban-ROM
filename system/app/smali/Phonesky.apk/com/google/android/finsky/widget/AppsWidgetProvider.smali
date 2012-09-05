.class public Lcom/google/android/finsky/widget/AppsWidgetProvider;
.super Lcom/google/android/finsky/widget/FinskyWidgetProvider;
.source "AppsWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDfeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/finsky/config/G;->appsWidgetUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getValidDocumentTypes()[I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 28
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    return-object v0
.end method

.method protected getWidgetClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 23
    const-class v0, Lcom/android/vending/MarketWidgetProvider;

    return-object v0
.end method
