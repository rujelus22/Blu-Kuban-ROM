.class Lcom/google/android/apps/googlevoice/model/AndroidActionModel$1;
.super Ljava/lang/Object;
.source "AndroidActionModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->saveToDatabase(Lcom/google/android/apps/googlevoice/BackgroundThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/model/AndroidActionModel;

.field final synthetic val$actionFlagsByConversation:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidActionModel;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$1;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidActionModel;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$1;->val$actionFlagsByConversation:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$1;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidActionModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->access$000(Lcom/google/android/apps/googlevoice/model/AndroidActionModel;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$1;->val$actionFlagsByConversation:Ljava/util/Map;

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->writeToDatabase(Landroid/content/Context;Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->access$100(Landroid/content/Context;Ljava/util/Map;)V

    .line 112
    return-void
.end method
