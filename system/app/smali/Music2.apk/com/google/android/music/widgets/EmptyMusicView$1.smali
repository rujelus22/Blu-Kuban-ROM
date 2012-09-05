.class Lcom/google/android/music/widgets/EmptyMusicView$1;
.super Ljava/lang/Object;
.source "EmptyMusicView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/EmptyMusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/widgets/EmptyMusicView;


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/EmptyMusicView;)V
    .registers 2
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/16 v10, 0x40

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 218
    const/4 v3, 0x0

    .line 219
    .local v3, incomingView:Landroid/view/View;
    sget-object v5, Lcom/google/android/music/widgets/EmptyMusicView$2;->$SwitchMap$com$google$android$music$widgets$EmptyMusicView$EmptyState:[I

    iget-object v8, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mCurrentEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;
    invoke-static {v8}, Lcom/google/android/music/widgets/EmptyMusicView;->access$000(Lcom/google/android/music/widgets/EmptyMusicView;)Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_10a

    .line 240
    :goto_17
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    const/16 v8, 0xe

    invoke-virtual {v5, v8}, Lcom/google/android/music/widgets/EmptyMusicView;->isEmptyState(I)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 241
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicAddMusicTitle:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$700(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    iget-object v8, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;
    invoke-static {v8}, Lcom/google/android/music/widgets/EmptyMusicView;->access$800(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x2

    #calls: Lcom/google/android/music/widgets/EmptyMusicView;->setVisibilityFor(Landroid/view/View;I)V
    invoke-static {v5, v8, v9}, Lcom/google/android/music/widgets/EmptyMusicView;->access$900(Lcom/google/android/music/widgets/EmptyMusicView;Landroid/view/View;I)V

    .line 243
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    iget-object v8, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;
    invoke-static {v8}, Lcom/google/android/music/widgets/EmptyMusicView;->access$1000(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    #calls: Lcom/google/android/music/widgets/EmptyMusicView;->setVisibilityFor(Landroid/view/View;I)V
    invoke-static {v5, v8, v9}, Lcom/google/android/music/widgets/EmptyMusicView;->access$900(Lcom/google/android/music/widgets/EmptyMusicView;Landroid/view/View;I)V

    .line 244
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    iget-object v8, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;
    invoke-static {v8}, Lcom/google/android/music/widgets/EmptyMusicView;->access$1100(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v8

    #calls: Lcom/google/android/music/widgets/EmptyMusicView;->setVisibilityFor(Landroid/view/View;I)V
    invoke-static {v5, v8, v7}, Lcom/google/android/music/widgets/EmptyMusicView;->access$900(Lcom/google/android/music/widgets/EmptyMusicView;Landroid/view/View;I)V

    .line 252
    :goto_4d
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mAllLearnMoreButtons:Ljava/util/Collection;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$1200(Lcom/google/android/music/widgets/EmptyMusicView;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 253
    .local v1, emptyViewButton:Landroid/view/View;
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    invoke-virtual {v5, v10}, Lcom/google/android/music/widgets/EmptyMusicView;->isEmptyState(I)Z

    move-result v5

    if-nez v5, :cond_c0

    const/4 v5, 0x1

    :goto_6c
    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_57

    .line 221
    .end local v1           #emptyViewButton:Landroid/view/View;
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_70
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingDisabledView:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$100(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v3

    .line 222
    goto :goto_17

    .line 224
    :pswitch_77
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicSyncing:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$200(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v3

    .line 225
    goto :goto_17

    .line 227
    :pswitch_7e
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingEnabledView:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$300(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v3

    .line 228
    goto :goto_17

    .line 230
    :pswitch_85
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoLocalMusicView:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$400(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v3

    .line 231
    goto :goto_17

    .line 233
    :pswitch_8c
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicScanning:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$500(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v3

    .line 234
    goto :goto_17

    .line 236
    :pswitch_93
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoPlaylistsView:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$600(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_17

    .line 246
    :cond_9b
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicAddMusicTitle:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$700(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$800(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$1000(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$1100(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4d

    .restart local v1       #emptyViewButton:Landroid/view/View;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_c0
    move v5, v6

    .line 253
    goto :goto_6c

    .line 255
    .end local v1           #emptyViewButton:Landroid/view/View;
    :cond_c2
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mAllLearnMoreText:Ljava/util/Collection;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$1300(Lcom/google/android/music/widgets/EmptyMusicView;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_cc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 256
    .local v4, learnMoreText:Landroid/view/View;
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    invoke-virtual {v5, v10}, Lcom/google/android/music/widgets/EmptyMusicView;->isEmptyState(I)Z

    move-result v5

    if-eqz v5, :cond_e5

    move v5, v7

    :goto_e1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_cc

    :cond_e5
    move v5, v6

    goto :goto_e1

    .line 260
    .end local v4           #learnMoreText:Landroid/view/View;
    :cond_e7
    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView$1;->this$0:Lcom/google/android/music/widgets/EmptyMusicView;

    #getter for: Lcom/google/android/music/widgets/EmptyMusicView;->mAllEmptyViews:Ljava/util/Collection;
    invoke-static {v5}, Lcom/google/android/music/widgets/EmptyMusicView;->access$1400(Lcom/google/android/music/widgets/EmptyMusicView;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f1
    :goto_f1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_103

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 261
    .local v0, emptyView:Landroid/view/View;
    if-eq v0, v3, :cond_f1

    .line 262
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f1

    .line 266
    .end local v0           #emptyView:Landroid/view/View;
    :cond_103
    if-eqz v3, :cond_108

    .line 267
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :cond_108
    return-void

    .line 219
    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_70
        :pswitch_77
        :pswitch_7e
        :pswitch_85
        :pswitch_8c
        :pswitch_93
    .end packed-switch
.end method
