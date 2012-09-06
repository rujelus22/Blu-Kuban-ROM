.class public Lcom/google/android/apps/googlevoice/modules/CompositeModule;
.super Ljava/lang/Object;
.source "CompositeModule.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/modules/Module;


# instance fields
.field private final modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/modules/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/modules/Module;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, modules:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/modules/Module;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/modules/CompositeModule;->modules:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public addSettingsProvider(Ljava/util/List;)V
    .registers 5
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
    .line 26
    .local p1, settingsProviders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/SettingsProvider;>;"
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/modules/CompositeModule;->modules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/modules/Module;

    .line 27
    .local v1, module:Lcom/google/android/apps/googlevoice/modules/Module;
    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/modules/Module;->addSettingsProvider(Ljava/util/List;)V

    goto :goto_6

    .line 29
    .end local v1           #module:Lcom/google/android/apps/googlevoice/modules/Module;
    :cond_16
    return-void
.end method

.method public onApplicationStarted()V
    .registers 4

    .prologue
    .line 40
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/modules/CompositeModule;->modules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/modules/Module;

    .line 41
    .local v1, module:Lcom/google/android/apps/googlevoice/modules/Module;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/modules/Module;->onApplicationStarted()V

    goto :goto_6

    .line 43
    .end local v1           #module:Lcom/google/android/apps/googlevoice/modules/Module;
    :cond_16
    return-void
.end method

.method public onVoiceModelCreated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 5
    .parameter "voiceModel"

    .prologue
    .line 33
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/modules/CompositeModule;->modules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/modules/Module;

    .line 34
    .local v1, module:Lcom/google/android/apps/googlevoice/modules/Module;
    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/modules/Module;->onVoiceModelCreated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V

    goto :goto_6

    .line 36
    .end local v1           #module:Lcom/google/android/apps/googlevoice/modules/Module;
    :cond_16
    return-void
.end method
