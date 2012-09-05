.class Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;
.super Landroid/os/AsyncTask;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateDeviceConnectedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mPage:Ljava/lang/Double;

.field private mResource:Ljava/lang/Double;

.field private mSection:Ljava/lang/Double;

.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 3621
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3621
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    return-void
.end method

.method private getDownloadedFraction(I)D
    .registers 5
    .parameter "mode"

    .prologue
    .line 3647
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->mSection:Ljava/lang/Double;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->mResource:Ljava/lang/Double;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->mPage:Ljava/lang/Double;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getDownloadedFraction(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method

.method private isModeAvailable(IZZ)Z
    .registers 5
    .parameter "mode"
    .parameter "textAvailable"
    .parameter "imageAvailable"

    .prologue
    .line 3651
    packed-switch p1, :pswitch_data_c

    .line 3657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_9
    move p3, p2

    .line 3655
    .end local p3
    :pswitch_a
    return p3

    .line 3651
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3621
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 3628
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getVolumeId()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2900(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/String;

    move-result-object v7

    .line 3630
    .local v7, volumeId:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getAccount()Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6700(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3631
    .local v1, volumeUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2400(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/books/app/ReaderFragment$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3634
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3635
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->mSection:Ljava/lang/Double;

    .line 3636
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->mResource:Ljava/lang/Double;

    .line 3637
    const/4 v0, 0x2

    invoke-static {v6, v0}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->mPage:Ljava/lang/Double;
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_3e

    .line 3640
    :cond_3a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3643
    return-object v3

    .line 3640
    :catchall_3e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3621
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 14
    .parameter "result"

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3663
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v9}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3664
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_c

    .line 3695
    :cond_b
    :goto_b
    return-void

    .line 3667
    :cond_c
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v9}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v9

    if-eqz v9, :cond_65

    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v9}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v9

    if-nez v9, :cond_65

    move v6, v7

    .line 3668
    .local v6, validMetadata:Z
    :goto_21
    invoke-static {v0}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v3

    .line 3669
    .local v3, deviceConnected:Z
    if-nez v3, :cond_b

    if-eqz v6, :cond_b

    .line 3671
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v9}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v9

    iget-boolean v9, v9, Lcom/google/android/apps/books/model/VolumeMetadata;->hasImageMode:Z

    if-eqz v9, :cond_67

    invoke-direct {p0, v7}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->getDownloadedFraction(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isFullyDownloaded(D)Z

    move-result v9

    if-eqz v9, :cond_67

    move v4, v7

    .line 3673
    .local v4, imageAvailable:Z
    :goto_3e
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v9}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v9

    iget-boolean v9, v9, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    if-eqz v9, :cond_69

    invoke-direct {p0, v11}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->getDownloadedFraction(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isFullyDownloaded(D)Z

    move-result v9

    if-eqz v9, :cond_69

    move v5, v7

    .line 3676
    .local v5, textAvailable:Z
    :goto_53
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getReadingMode()I
    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8000(Lcom/google/android/apps/books/app/ReaderFragment;)I

    move-result v2

    .line 3677
    .local v2, desiredMode:I
    invoke-direct {p0, v2, v5, v4}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->isModeAvailable(IZZ)Z

    move-result v1

    .line 3680
    .local v1, desiredAvailable:Z
    if-eqz v1, :cond_6b

    .line 3682
    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->dispatchModesAvailable(IZZ)V
    invoke-static {v7, v2, v5, v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8100(Lcom/google/android/apps/books/app/ReaderFragment;IZZ)V

    goto :goto_b

    .end local v1           #desiredAvailable:Z
    .end local v2           #desiredMode:I
    .end local v3           #deviceConnected:Z
    .end local v4           #imageAvailable:Z
    .end local v5           #textAvailable:Z
    .end local v6           #validMetadata:Z
    :cond_65
    move v6, v8

    .line 3667
    goto :goto_21

    .restart local v3       #deviceConnected:Z
    .restart local v6       #validMetadata:Z
    :cond_67
    move v4, v8

    .line 3671
    goto :goto_3e

    .restart local v4       #imageAvailable:Z
    :cond_69
    move v5, v8

    .line 3673
    goto :goto_53

    .line 3683
    .restart local v1       #desiredAvailable:Z
    .restart local v2       #desiredMode:I
    .restart local v5       #textAvailable:Z
    :cond_6b
    if-eqz v5, :cond_73

    .line 3685
    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->dispatchModesAvailable(IZZ)V
    invoke-static {v7, v11, v5, v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8100(Lcom/google/android/apps/books/app/ReaderFragment;IZZ)V

    goto :goto_b

    .line 3686
    :cond_73
    if-eqz v4, :cond_7b

    .line 3688
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->dispatchModesAvailable(IZZ)V
    invoke-static {v8, v7, v5, v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8100(Lcom/google/android/apps/books/app/ReaderFragment;IZZ)V

    goto :goto_b

    .line 3692
    :cond_7b
    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    new-instance v8, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;

    const-string v9, "unable to find available offline reading mode"

    invoke-direct {v8, v9}, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/apps/books/app/ReaderFragment;->onError(Ljava/lang/Exception;)V

    goto :goto_b
.end method
