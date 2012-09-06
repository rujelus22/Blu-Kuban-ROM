.class Lcom/google/android/apps/plus/fragments/PlusOneFragment$4;
.super Ljava/lang/Object;
.source "PlusOneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PlusOneFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$400(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 277
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_PLUSONE_CONFIRMED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$100(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 281
    :goto_f
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$400(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, -0x1

    :goto_1e
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 283
    return-void

    .line 279
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_UNDO_PLUSONE_CANCELED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$100(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_f

    .line 281
    :cond_33
    const/4 v0, 0x0

    goto :goto_1e
.end method
