.class Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;
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
    .line 243
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$400(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CANCEL_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$100(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 254
    :goto_10
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$500(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$300(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mToken:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$600(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$200(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/ApiaryService;->applyPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)I

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$400(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Z

    move-result v1

    if-eqz v1, :cond_54

    :goto_3f
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 258
    return-void

    .line 251
    :cond_4c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CONFIRM_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$100(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_10

    .line 256
    :cond_54
    const/4 v3, -0x1

    goto :goto_3f
.end method
