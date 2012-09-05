.class Lcom/vlingo/client/settings/SettingsScreen$7;
.super Ljava/lang/Object;
.source "SettingsScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/SettingsScreen;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/SettingsScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/SettingsScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/vlingo/client/settings/SettingsScreen$7;->this$0:Lcom/vlingo/client/settings/SettingsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 765
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->KEYWORD_SPOT_ON_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 766
    return-void
.end method
