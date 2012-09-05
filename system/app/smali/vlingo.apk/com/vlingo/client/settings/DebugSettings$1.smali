.class Lcom/vlingo/client/settings/DebugSettings$1;
.super Ljava/lang/Object;
.source "DebugSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/DebugSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/DebugSettings;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/DebugSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/vlingo/client/settings/DebugSettings$1;->this$0:Lcom/vlingo/client/settings/DebugSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 122
    new-instance v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    invoke-direct {v0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;-><init>()V

    .line 123
    .local v0, cr:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;
    new-instance v1, Lcom/vlingo/client/settings/DebugSettings$1$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/settings/DebugSettings$1$1;-><init>(Lcom/vlingo/client/settings/DebugSettings$1;)V

    .line 142
    .local v1, l:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;
    iget-object v2, p0, Lcom/vlingo/client/settings/DebugSettings$1;->this$0:Lcom/vlingo/client/settings/DebugSettings;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cacheRequests(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;Landroid/content/Context;Z)V

    .line 143
    return v3
.end method
