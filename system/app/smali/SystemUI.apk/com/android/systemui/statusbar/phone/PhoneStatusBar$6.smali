.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .registers 2
    .parameter

    .prologue
    .line 2670
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final mini(II)I
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2672
    if-le p2, p1, :cond_3

    .end local p1
    :goto_2
    return p1

    .restart local p1
    :cond_3
    move p1, p2

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "v"

    .prologue
    .line 2675
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v10

    .line 2678
    :try_start_5
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v9, :cond_9e

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 2680
    .local v3, mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    :goto_d
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v4

    .line 2682
    .local v4, numChildren:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v9}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    .line 2683
    .local v7, scrollTop:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v9}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    add-int v6, v7, v9

    .line 2684
    .local v6, scrollBottom:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2687
    .local v8, snapshot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v5, 0x0

    .line 2688
    .local v5, plusNotificationArea:I
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v9, :cond_7e

    .line 2689
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_57

    .line 2690
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v11

    add-int/2addr v9, v11

    add-int/2addr v5, v9

    .line 2692
    :cond_57
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_7e

    .line 2693
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v9

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v5, v9

    .line 2703
    :cond_7e
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7f
    if-ge v2, v4, :cond_a4

    .line 2704
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2705
    .local v1, child:Landroid/view/View;
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_9b

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v5

    if-le v9, v7, :cond_9b

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-ge v9, v6, :cond_9b

    .line 2707
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2703
    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 2678
    .end local v1           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v3           #mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .end local v4           #numChildren:I
    .end local v5           #plusNotificationArea:I
    .end local v6           #scrollBottom:I
    .end local v7           #scrollTop:I
    .end local v8           #snapshot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_9e
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    goto/16 :goto_d

    .line 2710
    .restart local v2       #i:I
    .restart local v3       #mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .restart local v4       #numChildren:I
    .restart local v5       #plusNotificationArea:I
    .restart local v6       #scrollBottom:I
    .restart local v7       #scrollTop:I
    .restart local v8       #snapshot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_a4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2714
    .local v0, N:I
    if-gtz v0, :cond_ac

    .line 2715
    monitor-exit v10

    .line 2768
    :goto_ab
    return-void

    .line 2718
    :cond_ac
    new-instance v9, Ljava/lang/Thread;

    new-instance v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;

    invoke-direct {v11, p0, v3, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Ljava/util/ArrayList;)V

    invoke-direct {v9, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 2767
    monitor-exit v10

    goto :goto_ab

    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .end local v4           #numChildren:I
    .end local v5           #plusNotificationArea:I
    .end local v6           #scrollBottom:I
    .end local v7           #scrollTop:I
    .end local v8           #snapshot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :catchall_bb
    move-exception v9

    monitor-exit v10
    :try_end_bd
    .catchall {:try_start_5 .. :try_end_bd} :catchall_bb

    throw v9
.end method
