.class public Lcom/google/android/apps/googlevoice/modules/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/modules/Module;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSettingsProvider(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/SettingsProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, settingsProviders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/SettingsProvider;>;"
    return-void
.end method

.method public onApplicationStarted()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method

.method public onVoiceModelCreated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "voiceModel"

    .prologue
    .line 23
    return-void
.end method
