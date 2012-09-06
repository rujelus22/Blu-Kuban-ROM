.class Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks$1;
.super Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;
.source "HostedEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks$1;->this$1:Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;

    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic esLoadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks$1;->esLoadInBackground()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public esLoadInBackground()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks$1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .registers 1

    .prologue
    .line 1245
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks$1;->forceLoad()V

    .line 1246
    return-void
.end method
