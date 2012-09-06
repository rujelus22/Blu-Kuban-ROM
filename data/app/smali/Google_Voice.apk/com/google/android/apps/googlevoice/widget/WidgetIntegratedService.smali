.class public Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService;
.super Landroid/widget/RemoteViewsService;
.source "WidgetIntegratedService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 11
    .parameter "intent"

    .prologue
    .line 38
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v8

    .line 39
    .local v8, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    new-instance v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getWidgetState()Lcom/google/android/apps/googlevoice/widget/WidgetState;

    move-result-object v4

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v5

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v6

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v7

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;-><init>(Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService;Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/apps/googlevoice/widget/WidgetState;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/system/VersionHelper;)V

    return-object v0
.end method
