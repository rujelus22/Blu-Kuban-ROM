.class Lcom/google/android/finsky/activities/FlagItemFragment$2;
.super Ljava/lang/Object;
.source "FlagItemFragment.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FlagItemFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FlagItemFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FlagItemFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$2;->this$0:Lcom/google/android/finsky/activities/FlagItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment$2;->this$0:Lcom/google/android/finsky/activities/FlagItemFragment;

    #getter for: Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v0}, Lcom/google/android/finsky/activities/FlagItemFragment;->access$000(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-nez v0, :cond_18

    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment$2;->this$0:Lcom/google/android/finsky/activities/FlagItemFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$2;->this$0:Lcom/google/android/finsky/activities/FlagItemFragment;

    #getter for: Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v1}, Lcom/google/android/finsky/activities/FlagItemFragment;->access$100(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/FlagItemFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    .line 178
    :goto_17
    return-void

    .line 176
    :cond_18
    const-string v0, "Ignoring soft TTL refresh."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17
.end method
