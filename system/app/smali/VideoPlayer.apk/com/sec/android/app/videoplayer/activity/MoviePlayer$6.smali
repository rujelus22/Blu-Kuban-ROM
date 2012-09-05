.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

.field final synthetic val$action1:I

.field final synthetic val$intent1:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2599
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    iput p2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->val$action1:I

    iput-object p3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->val$intent1:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/high16 v8, 0x1

    const/4 v7, 0x0

    .line 2602
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static {v4, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2603
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z
    invoke-static {v4, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2202(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2604
    const-string v4, "MoviePlayer"

    const-string v5, "onClick Dialog Pressed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_159

    .line 2607
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    .line 2608
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopBufferingChecker()V

    .line 2610
    iget v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->val$action1:I

    sparse-switch v4, :sswitch_data_1e8

    .line 2654
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isAutoPlayNext()Z

    move-result v4

    if-nez v4, :cond_f4

    .line 2655
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 2710
    :cond_34
    :goto_34
    return-void

    .line 2616
    :sswitch_35
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_83

    .line 2617
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2618
    .local v0, browserIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2619
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 2620
    const-string v4, "MoviePlayer"

    const-string v5, "In Service specific error, launch Browser with url"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :try_start_60
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V

    .line 2623
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 2624
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2626
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V
    :try_end_79
    .catch Landroid/content/ActivityNotFoundException; {:try_start_60 .. :try_end_79} :catch_7a

    goto :goto_34

    .line 2627
    :catch_7a
    move-exception v2

    .line 2628
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "MoviePlayer"

    const-string v5, "could not find a suitable activity for launching error url"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 2632
    .end local v0           #browserIntent:Landroid/content/Intent;
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    :cond_83
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isAutoPlayNext()Z

    move-result v4

    if-nez v4, :cond_8f

    .line 2633
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_34

    .line 2635
    :cond_8f
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isAutoPlayNext()Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 2636
    sget-object v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2637
    .local v3, total_list_count:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurIndex()I

    move-result v1

    .line 2639
    .local v1, curPos:I
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total File count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Current error File count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    if-lt v4, v3, :cond_da

    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_da

    .line 2642
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_34

    .line 2644
    :cond_da
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->next(Z)Z

    move-result v4

    if-nez v4, :cond_34

    .line 2645
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_34

    .line 2648
    .end local v1           #curPos:I
    .end local v3           #total_list_count:I
    :cond_e7
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->next(Z)Z

    move-result v4

    if-nez v4, :cond_34

    .line 2649
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_34

    .line 2657
    :cond_f4
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isAutoPlayNext()Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 2658
    sget-object v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2659
    .restart local v3       #total_list_count:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurIndex()I

    move-result v1

    .line 2661
    .restart local v1       #curPos:I
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total File count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Current error File count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    if-lt v4, v3, :cond_13f

    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_13f

    .line 2665
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_34

    .line 2667
    :cond_13f
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->next(Z)Z

    move-result v4

    if-nez v4, :cond_34

    .line 2668
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_34

    .line 2671
    .end local v1           #curPos:I
    .end local v3           #total_list_count:I
    :cond_14c
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->next(Z)Z

    move-result v4

    if-nez v4, :cond_34

    .line 2672
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_34

    .line 2677
    :cond_159
    const-string v4, "MoviePlayer"

    const-string v5, "OK clicked, ELSE part"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    iget v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->val$action1:I

    sparse-switch v4, :sswitch_data_1fa

    .line 2706
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_34

    .line 2683
    :sswitch_16c
    const-string v4, "MoviePlayer"

    const-string v5, "In Service specific error, VIDEO_DRM_LICENSE_ACQUISITION_FAILED OK clicked"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1e1

    .line 2685
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In Service specific error, VIDEO_DRM_LICENSE_ACQUISITION_FAILED ,intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2688
    .restart local v0       #browserIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2689
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 2691
    const-string v4, "MoviePlayer"

    const-string v5, "In Service specific error, launch Browser with url"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    :try_start_1bc
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V

    .line 2694
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 2695
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2697
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V
    :try_end_1d5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1bc .. :try_end_1d5} :catch_1d7

    goto/16 :goto_34

    .line 2698
    :catch_1d7
    move-exception v2

    .line 2699
    .restart local v2       #ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "MoviePlayer"

    const-string v5, "could not find a suitable activity for launching error url"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 2703
    .end local v0           #browserIntent:Landroid/content/Intent;
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    :cond_1e1
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_34

    .line 2610
    :sswitch_data_1e8
    .sparse-switch
        0x12 -> :sswitch_35
        0x16 -> :sswitch_35
        0x17 -> :sswitch_35
        0x1c -> :sswitch_35
    .end sparse-switch

    .line 2678
    :sswitch_data_1fa
    .sparse-switch
        0x12 -> :sswitch_16c
        0x16 -> :sswitch_16c
        0x17 -> :sswitch_16c
        0x1c -> :sswitch_16c
    .end sparse-switch
.end method
