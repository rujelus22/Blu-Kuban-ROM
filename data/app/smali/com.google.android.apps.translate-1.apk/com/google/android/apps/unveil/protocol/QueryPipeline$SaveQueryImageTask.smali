.class Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;
.super Landroid/os/AsyncTask;
.source "QueryPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/QueryPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveQueryImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter "intent"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    .line 538
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 539
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;->intent:Landroid/content/Intent;

    .line 540
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([[B)Landroid/net/Uri;
    .registers 6
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v3, "SaveQueryImageTask"

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;->intent:Landroid/content/Intent;

    const-string v3, "is_shared_query"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$100(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/UnveilContext;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v3, Lcom/google/android/apps/unveil/R$string;->save_to_sd_card_key:I

    invoke-static {v1, v3}, Lcom/google/android/apps/unveil/Settings;->getBoolean(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v0, 0x1

    .line 548
    .local v0, shouldSave:Z
    :goto_25
    if-eqz v0, :cond_36

    .line 549
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->imageSaver:Lcom/google/android/apps/unveil/env/ImageSaver;
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$1200(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/env/ImageSaver;

    move-result-object v1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/ImageSaver;->saveToGallery([B)Landroid/net/Uri;

    move-result-object v1

    .line 551
    :goto_33
    return-object v1

    .end local v0           #shouldSave:Z
    :cond_34
    move v0, v2

    .line 546
    goto :goto_25

    .line 551
    .restart local v0       #shouldSave:Z
    :cond_36
    const/4 v1, 0x0

    goto :goto_33
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 534
    check-cast p1, [[B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;->doInBackground([[B)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
