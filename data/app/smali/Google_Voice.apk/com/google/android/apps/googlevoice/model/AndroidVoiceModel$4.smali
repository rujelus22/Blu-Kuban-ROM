.class Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;
.super Ljava/lang/Object;
.source "AndroidVoiceModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->saveConversationToDatabase(Lcom/google/android/apps/googlevoice/core/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

.field final synthetic val$apiConversation:Lcom/google/grandcentral/api2/Api2$ApiConversation;

.field final synthetic val$conversationId:Ljava/lang/String;

.field final synthetic val$labelBufs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;->val$conversationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;->val$apiConversation:Lcom/google/grandcentral/api2/Api2$ApiConversation;

    iput-object p4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;->val$labelBufs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$200(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->databaseLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$000(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;->val$conversationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;->val$apiConversation:Lcom/google/grandcentral/api2/Api2$ApiConversation;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;->val$labelBufs:Ljava/util/ArrayList;

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->writeConversationToDatabase(Landroid/content/Context;Ljava/lang/Object;Lcom/google/android/apps/common/time/ClockUtils;Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;Ljava/util/List;)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$400(Landroid/content/Context;Ljava/lang/Object;Lcom/google/android/apps/common/time/ClockUtils;Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;Ljava/util/List;)V

    .line 756
    return-void
.end method
