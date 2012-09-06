.class public interface abstract Lcom/google/android/apps/googlevoice/modules/Module;
.super Ljava/lang/Object;
.source "Module.java"


# virtual methods
.method public abstract addSettingsProvider(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/SettingsProvider;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onApplicationStarted()V
.end method

.method public abstract onVoiceModelCreated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
.end method
