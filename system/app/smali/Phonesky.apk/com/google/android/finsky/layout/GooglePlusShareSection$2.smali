.class Lcom/google/android/finsky/layout/GooglePlusShareSection$2;
.super Ljava/lang/Object;
.source "GooglePlusShareSection.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/GooglePlusShareSection;->createJsonListener(Lcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/google/android/finsky/api/model/Document;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    iput-object p2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 200
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .registers 9
    .parameter "response"

    .prologue
    .line 204
    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mIsFetching:Z
    invoke-static {v4, v5}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$002(Lcom/google/android/finsky/layout/GooglePlusShareSection;Z)Z

    .line 205
    iget-object v4, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #calls: Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateUi()V
    invoke-static {v4}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$100(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V

    .line 206
    const-string v4, "externalId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, externalId:Ljava/lang/String;
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    iget-object v5, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    #calls: Lcom/google/android/finsky/layout/GooglePlusShareSection;->buildBaseShareIntent(Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    invoke-static {v4, v5}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$600(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v2

    .line 210
    .local v2, shareIntent:Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 211
    const-string v4, "com.google.android.apps.plus.FOOTER"

    iget-object v5, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07016f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v4, "com.google.android.apps.plus.EXTERNAL_ID"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v4, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #getter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v4}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$700(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_47} :catch_48

    .line 222
    .end local v1           #externalId:Ljava/lang/String;
    .end local v2           #shareIntent:Landroid/content/Intent;
    .end local v3           #url:Ljava/lang/String;
    :goto_47
    return-void

    .line 219
    :catch_48
    move-exception v0

    .line 220
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_47
.end method
