.class Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$3;
.super Ljava/lang/Object;
.source "AndroidSmsPersistenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->saveConversationMappingsToDatabase(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;

.field final synthetic val$localConversationIdsByVoiceModelConversationId:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$3;->this$0:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$3;->val$localConversationIdsByVoiceModelConversationId:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$3;->this$0:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$3;->val$localConversationIdsByVoiceModelConversationId:Ljava/util/Map;

    #calls: Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->writeConversationMappings(Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->access$200(Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;Ljava/util/Map;)V

    .line 103
    return-void
.end method
