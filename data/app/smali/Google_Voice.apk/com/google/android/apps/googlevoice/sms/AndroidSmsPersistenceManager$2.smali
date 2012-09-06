.class Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$2;
.super Ljava/lang/Object;
.source "AndroidSmsPersistenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->updateOutboxState(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;

.field final synthetic val$conversationId:Ljava/lang/String;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$2;->this$0:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$2;->val$conversationId:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$2;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$2;->this$0:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$2;->val$conversationId:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$2;->val$state:I

    #calls: Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->writeUpdatedOutboxState(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->access$100(Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;Ljava/lang/String;I)V

    .line 90
    return-void
.end method
