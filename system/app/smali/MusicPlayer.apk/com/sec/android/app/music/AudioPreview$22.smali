.class Lcom/sec/android/app/music/AudioPreview$22;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 3547
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 18
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3552
    const/4 v4, 0x0

    .line 3553
    .local v4, query:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3554
    .local v6, mime:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3556
    .local v3, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;

    .line 3557
    .local v9, item:Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;
    iget v1, v9, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->type:I

    packed-switch v1, :pswitch_data_150

    .line 3588
    :goto_14
    iget-object v14, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    new-instance v1, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;-><init>(Lcom/sec/android/app/music/AudioPreview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #setter for: Lcom/sec/android/app/music/AudioPreview;->searchQueryItem:Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;
    invoke-static {v14, v1}, Lcom/sec/android/app/music/AudioPreview;->access$3602(Lcom/sec/android/app/music/AudioPreview;Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;)Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;

    .line 3590
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3595
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/music/AudioPreview;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 3596
    .local v10, pm:Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SEARCH"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3597
    .local v13, shareIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3599
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v2, 0x10060

    invoke-virtual {v10, v13, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mSearchList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/sec/android/app/music/AudioPreview;->access$3702(Lcom/sec/android/app/music/AudioPreview;Ljava/util/List;)Ljava/util/List;

    .line 3601
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3602
    .local v7, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/music/AudioPreview$ShareAppItem;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_51
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mSearchList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$3700(Lcom/sec/android/app/music/AudioPreview;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_112

    .line 3603
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mSearchList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$3700(Lcom/sec/android/app/music/AudioPreview;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 3604
    .local v11, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v2, Lcom/sec/android/app/music/AudioPreview$ShareAppItem;

    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v11, v10}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v11, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v5, v14, v1}, Lcom/sec/android/app/music/AudioPreview$ShareAppItem;-><init>(Lcom/sec/android/app/music/AudioPreview;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3602
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    .line 3559
    .end local v7           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/music/AudioPreview$ShareAppItem;>;"
    .end local v8           #i:I
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    .end local v11           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v13           #shareIntent:Landroid/content/Intent;
    :pswitch_80
    iget-object v3, v9, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->text:Ljava/lang/String;

    .line 3560
    move-object v4, v3

    .line 3562
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_c1

    .line 3563
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;

    iget v1, v1, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->type:I

    if-nez v1, :cond_c1

    .line 3564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->text:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3566
    :cond_c1
    const-string v6, "audio/*"

    .line 3567
    goto/16 :goto_14

    .line 3569
    :pswitch_c5
    iget-object v3, v9, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->text:Ljava/lang/String;

    .line 3570
    iget-object v4, v9, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->text:Ljava/lang/String;

    .line 3571
    const-string v6, "vnd.android.cursor.item/artist"

    .line 3572
    goto/16 :goto_14

    .line 3574
    :pswitch_cd
    iget-object v3, v9, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->text:Ljava/lang/String;

    .line 3575
    move-object v4, v3

    .line 3577
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_10e

    .line 3578
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;

    iget v1, v1, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->type:I

    if-nez v1, :cond_10e

    .line 3579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->text:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3581
    :cond_10e
    const-string v6, "vnd.android.cursor.item/album"

    goto/16 :goto_14

    .line 3608
    .restart local v7       #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/music/AudioPreview$ShareAppItem;>;"
    .restart local v8       #i:I
    .restart local v10       #pm:Landroid/content/pm/PackageManager;
    .restart local v13       #shareIntent:Landroid/content/Intent;
    :cond_112
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 3609
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3610
    new-instance v12, Lcom/sec/android/app/music/AudioPreview$ShareAppListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-direct {v12, v1, v2, v7}, Lcom/sec/android/app/music/AudioPreview$ShareAppListAdapter;-><init>(Lcom/sec/android/app/music/AudioPreview;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3611
    .local v12, shareAppListAdapter:Lcom/sec/android/app/music/AudioPreview$ShareAppListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mSearchListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v12, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3612
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemChooserMessageBox:Landroid/app/AlertDialog;

    .line 3613
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$22;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemChooserMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3615
    return-void

    .line 3557
    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_80
        :pswitch_cd
    .end packed-switch
.end method
