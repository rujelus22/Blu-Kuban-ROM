.class Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$1;
.super Ljava/lang/Object;
.source "VoicemailPrefetchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$1;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 56
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$1;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->downloadVoicemailIds:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->access$000(Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 57
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$1;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$1;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->downloadVoicemailIds:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->access$000(Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->download(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->access$100(Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$1;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->stopSelf()V

    .line 60
    return-void
.end method
