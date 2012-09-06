.class public interface abstract Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;
.super Ljava/lang/Object;
.source "SmsPersistenceManager.java"


# virtual methods
.method public abstract loadConversationMappingsFromDatabase()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadOutboxesFromDatabase()[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
.end method

.method public abstract saveConversationMappingsToDatabase(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveOutboxesToDatabase([Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;)V
.end method

.method public abstract updateOutboxState(Ljava/lang/String;I)V
.end method
