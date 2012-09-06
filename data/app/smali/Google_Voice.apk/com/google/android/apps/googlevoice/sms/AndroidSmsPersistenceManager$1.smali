.class Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$1;
.super Ljava/lang/Object;
.source "AndroidSmsPersistenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->saveOutboxesToDatabase([Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;

.field final synthetic val$outboxes:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$1;->this$0:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$1;->val$outboxes:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$1;->this$0:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$1;->val$outboxes:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;

    #calls: Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->writeOutboxes([Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->access$000(Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;)V

    .line 78
    return-void
.end method
