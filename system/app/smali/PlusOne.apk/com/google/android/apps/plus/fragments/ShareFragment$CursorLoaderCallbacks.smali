.class Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/fragments/ShareFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 217
    packed-switch p1, :pswitch_data_4c

    move-object v0, v4

    .line 230
    :goto_5
    return-object v0

    .line 219
    :pswitch_6
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$300(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/fragments/ShareFragment$AccountStatusQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 224
    :pswitch_22
    new-instance v7, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 225
    .local v7, loader:Lcom/google/android/apps/plus/phone/EsCursorLoader;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiKey:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsApiProvider;->makePreviewUri(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setUri(Landroid/net/Uri;)V

    .line 226
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$500(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v7, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    move-object v0, v7

    .line 227
    goto :goto_5

    .line 217
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_22
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 14
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v10, 0x0

    .line 240
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v8

    packed-switch v8, :pswitch_data_9e

    .line 288
    :goto_8
    return-void

    .line 242
    :pswitch_9
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/AudienceView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/views/AudienceView;->isEdited()Z

    move-result v8

    if-nez v8, :cond_35

    if-eqz p2, :cond_35

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 243
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 245
    .local v2, audienceBytes:[B
    if-eqz v2, :cond_35

    .line 247
    :try_start_23
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    .line 249
    .local v1, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    invoke-static {v8, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$700(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 250
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/AudienceView;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/google/android/apps/plus/views/AudienceView;->setDefaultAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    :try_end_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_23 .. :try_end_35} :catch_53

    .line 256
    .end local v1           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v2           #audienceBytes:[B
    :cond_35
    :goto_35
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0d0054

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 257
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/AudienceView;

    move-result-object v8

    const v9, 0x7f07019a

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/views/AudienceView;->setEmptyAudienceHint(I)V

    goto :goto_8

    .line 251
    .restart local v2       #audienceBytes:[B
    :catch_53
    move-exception v5

    .line 252
    .local v5, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v5}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_35

    .line 262
    .end local v2           #audienceBytes:[B
    .end local v5           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :pswitch_58
    if-eqz p2, :cond_91

    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_91

    .line 263
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 264
    .local v6, extras:Landroid/os/Bundle;
    const-string v8, "com.google.circles.platform.result.extra.ERROR_CODE"

    const/16 v9, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 267
    .local v3, errorCode:I
    const-string v8, "com.google.circles.platform.result.extra.ERROR_MESSAGE"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, errorMessage:Ljava/lang/String;
    if-nez v4, :cond_76

    .line 270
    const-string v4, "Ok"

    .line 272
    :cond_76
    const/4 v0, 0x0

    .line 273
    .local v0, activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    const-string v8, "com.google.android.apps.content.EXTRA_ACTIVITY"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 275
    .local v7, result:[Landroid/os/Parcelable;
    if-eqz v7, :cond_86

    array-length v8, v7

    if-lez v8, :cond_86

    .line 276
    aget-object v0, v7, v10

    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    check-cast v0, Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 278
    .restart local v0       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    :cond_86
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    new-instance v9, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v10, 0x0

    invoke-direct {v9, v3, v4, v10}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v8, v9, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->onGetPreviewResult(Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    .line 281
    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    .end local v3           #errorCode:I
    .end local v4           #errorMessage:Ljava/lang/String;
    .end local v6           #extras:Landroid/os/Bundle;
    .end local v7           #result:[Landroid/os/Parcelable;
    :cond_91
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$800(Lcom/google/android/apps/plus/fragments/ShareFragment;)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 240
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_58
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 301
    :goto_7
    return-void

    .line 297
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$800(Lcom/google/android/apps/plus/fragments/ShareFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 295
    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch
.end method
