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
    .line 707
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/fragments/ShareFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    return-void
.end method

.method private enableAudienceView()V
    .registers 3

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 834
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/TypeableAudienceView;

    move-result-object v0

    const v1, 0x7f080248

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setEmptyAudienceHint(I)V

    .line 835
    return-void
.end method

.method private handlePreviewResult(Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 7
    .parameter "result"
    .parameter "activity"

    .prologue
    .line 838
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 839
    const-string v1, "ShareFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 840
    const-string v1, "ShareFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve preview: errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ServiceResult;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_2b
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x6e27

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    .line 845
    :cond_36
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-static {v1, p2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2302(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/network/ApiaryActivity;)Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 846
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 847
    .local v0, mainHandler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks$1;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 857
    return-void
.end method

.method private setAudienceView([B)Z
    .registers 6
    .parameter "audienceBytes"

    .prologue
    .line 817
    if-eqz p1, :cond_2c

    .line 819
    :try_start_2
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 820
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    invoke-static {v2, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2200(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 821
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/TypeableAudienceView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setDefaultAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 822
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/TypeableAudienceView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->initLoaders(Landroid/support/v4/app/LoaderManager;)V

    .line 823
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->enableAudienceView()V
    :try_end_26
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_26} :catch_28

    .line 824
    const/4 v2, 0x1

    .line 829
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :goto_27
    return v2

    .line 825
    :catch_28
    move-exception v1

    .line 826
    .local v1, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 829
    .end local v1           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_2c
    const/4 v2, 0x0

    goto :goto_27
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 16
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

    .line 714
    packed-switch p1, :pswitch_data_6e

    move-object v0, v4

    .line 733
    :goto_5
    return-object v0

    .line 716
    :pswitch_6
    const-string v0, "com.google.android.apps.plus"

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsProvider;->buildPlatformAudienceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 718
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/ShareFragment$PlatformAudienceQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 722
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_26
    new-instance v5, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/plus/fragments/ShareFragment$AccountStatusQuery;->PROJECTION:[Ljava/lang/String;

    move-object v9, v4

    move-object v10, v4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_5

    .line 727
    :pswitch_44
    new-instance v12, Lcom/google/android/apps/plus/fragments/ShareFragment$PreviewCursorLoader;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment$PreviewCursorLoader;-><init>(Landroid/content/Context;)V

    .line 728
    .local v12, loader:Lcom/google/android/apps/plus/phone/EsCursorLoader;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1800(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsApiProvider;->makePreviewUri(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setUri(Landroid/net/Uri;)V

    .line 729
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1900(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {v12, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    move-object v0, v12

    .line 730
    goto :goto_5

    .line 714
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_26
        :pswitch_44
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 19
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
    .line 743
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v11

    packed-switch v11, :pswitch_data_106

    .line 810
    :goto_7
    return-void

    .line 745
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    invoke-static {v11}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/TypeableAudienceView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->isEdited()Z

    move-result v11

    if-nez v11, :cond_31

    if-eqz p2, :cond_31

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_31

    .line 746
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 748
    .local v4, audienceBytes:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->setAudienceView([B)Z

    move-result v11

    if-eqz v11, :cond_31

    .line 749
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->enableAudienceView()V

    goto :goto_7

    .line 754
    .end local v4           #audienceBytes:[B
    :cond_31
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    new-instance v14, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {v14, v15}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_7

    .line 759
    :pswitch_48
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    invoke-static {v11}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/TypeableAudienceView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->isEdited()Z

    move-result v11

    if-nez v11, :cond_7d

    if-eqz p2, :cond_7d

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 760
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 762
    .restart local v4       #audienceBytes:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->setAudienceView([B)Z

    move-result v11

    if-nez v11, :cond_7d

    .line 763
    const-string v11, "ShareFragment"

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 764
    const-string v11, "ShareFragment"

    const-string v12, "Failed to set default audience"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .end local v4           #audienceBytes:[B
    :cond_7d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->enableAudienceView()V

    goto :goto_7

    :pswitch_81
    move-object/from16 v8, p1

    .line 772
    check-cast v8, Lcom/google/android/apps/plus/fragments/ShareFragment$PreviewCursorLoader;

    .line 773
    .local v8, previewCursorLoader:Lcom/google/android/apps/plus/fragments/ShareFragment$PreviewCursorLoader;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    const/4 v12, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingUrlPreview:Z
    invoke-static {v11, v12}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2002(Lcom/google/android/apps/plus/fragments/ShareFragment;Z)Z

    .line 774
    invoke-virtual {v8}, Lcom/google/android/apps/plus/fragments/ShareFragment$PreviewCursorLoader;->isCachedData()Z

    move-result v11

    if-nez v11, :cond_f4

    .line 775
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/google/android/apps/plus/fragments/ShareFragment$PreviewCursorLoader;->setCachedData(Z)V

    .line 776
    if-eqz p2, :cond_f4

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_f4

    .line 777
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 778
    .local v7, extras:Landroid/os/Bundle;
    const-string v11, "com.google.circles.platform.result.extra.ERROR_CODE"

    const/16 v12, 0xc8

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 781
    .local v5, errorCode:I
    const-string v11, "com.google.circles.platform.result.extra.ERROR_MESSAGE"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 783
    .local v6, errorMessage:Ljava/lang/String;
    if-nez v6, :cond_b5

    .line 784
    const-string v6, "Ok"

    .line 786
    :cond_b5
    const/4 v2, 0x0

    .line 787
    .local v2, activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    const-string v11, "com.google.android.apps.content.EXTRA_ACTIVITY"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 789
    .local v9, result:[Landroid/os/Parcelable;
    if-eqz v9, :cond_c6

    array-length v11, v9

    if-lez v11, :cond_c6

    .line 790
    const/4 v11, 0x0

    aget-object v2, v9, v11

    .end local v2           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    check-cast v2, Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 792
    .restart local v2       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    :cond_c6
    new-instance v10, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v11, 0x0

    invoke-direct {v10, v5, v6, v11}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 794
    .local v10, serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;
    invoke-virtual {v10}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v11

    if-nez v11, :cond_103

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_PREVIEW_SHOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    .line 797
    .local v1, action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;
    :goto_d4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    invoke-static {v11}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$500(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v3

    .line 798
    .local v3, analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v12}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v12

    invoke-static {v11, v12, v3, v1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 800
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->handlePreviewResult(Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    .line 803
    .end local v1           #action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;
    .end local v2           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    .end local v3           #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    .end local v5           #errorCode:I
    .end local v6           #errorMessage:Ljava/lang/String;
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #result:[Landroid/os/Parcelable;
    .end local v10           #serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_f4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;
    invoke-static {v11}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2100(Lcom/google/android/apps/plus/fragments/ShareFragment;)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 794
    .restart local v2       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    .restart local v5       #errorCode:I
    .restart local v6       #errorMessage:Ljava/lang/String;
    .restart local v7       #extras:Landroid/os/Bundle;
    .restart local v9       #result:[Landroid/os/Parcelable;
    .restart local v10       #serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_103
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_PREVIEW_ERROR:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_d4

    .line 743
    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_8
        :pswitch_48
        :pswitch_81
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 707
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
    .line 864
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 870
    :goto_7
    return-void

    .line 866
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2100(Lcom/google/android/apps/plus/fragments/ShareFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 864
    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_8
    .end packed-switch
.end method
