.class Lcom/google/android/apps/plus/fragments/PlusOneFragment$2;
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
    .line 220
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 223
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHOW_SHARE_FROM_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$100(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 225
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$200(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v1

    .line 226
    .local v1, sourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.apps.plus.SHARE_GOOGLE"

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$300(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .local v0, shareIntent:Landroid/content/Intent;
    const-string v3, "com.google.android.apps.plus.API_KEY"

    invoke-virtual {v1}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getApiKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v3, "com.google.android.apps.plus.CLIENT_ID"

    invoke-virtual {v1}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v3, "com.google.android.apps.plus.VERSION"

    invoke-virtual {v1}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$200(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/google/android/apps/plus/phone/Intents;->getTargetIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 233
    .local v2, targetIntent:Landroid/content/Intent;
    const-string v3, "from_signup"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    const-string v3, "start_editing"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v3, v2, v5}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    return-void
.end method
