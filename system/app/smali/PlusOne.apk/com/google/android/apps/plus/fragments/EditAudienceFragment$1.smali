.class Lcom/google/android/apps/plus/fragments/EditAudienceFragment$1;
.super Landroid/database/DataSetObserver;
.source "EditAudienceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EditAudienceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateView(Landroid/view/View;)V

    .line 290
    return-void
.end method
