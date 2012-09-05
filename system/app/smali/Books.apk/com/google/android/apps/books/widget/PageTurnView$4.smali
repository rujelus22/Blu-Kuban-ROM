.class Lcom/google/android/apps/books/widget/PageTurnView$4;
.super Ljava/lang/Object;
.source "PageTurnView.java"

# interfaces
.implements Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/widget/PageTurnView;->createOnHoverListener()Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 2
    .parameter

    .prologue
    .line 2109
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v6, 0x8

    .line 2111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2112
    .local v0, action:I
    sget v3, Lcom/google/android/apps/books/app/IcsApis;->ACTION_HOVER_ENTER:I

    if-ne v0, v3, :cond_f

    .line 2113
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->maybePauseTTS()V
    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4800(Lcom/google/android/apps/books/widget/PageTurnView;)V

    .line 2115
    :cond_f
    sget v3, Lcom/google/android/apps/books/app/IcsApis;->ACTION_HOVER_ENTER:I

    if-eq v0, v3, :cond_17

    sget v3, Lcom/google/android/apps/books/app/IcsApis;->ACTION_HOVER_MOVE:I

    if-ne v0, v3, :cond_8a

    .line 2117
    :cond_17
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/widget/PageTurnView;->getZone(F)Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    move-result-object v2

    .line 2118
    .local v2, zone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentZone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    move-result-object v3

    if-eq v2, v3, :cond_39

    .line 2119
    sget-object v3, Lcom/google/android/apps/books/widget/PageTurnView$6;->$SwitchMap$com$google$android$apps$books$widget$PageTurnView$TouchZone:[I

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_9a

    .line 2136
    :goto_34
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentZone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    invoke-static {v3, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4902(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;)Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    .line 2142
    .end local v2           #zone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    :cond_39
    :goto_39
    const/4 v3, 0x1

    return v3

    .line 2121
    .restart local v2       #zone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    :pswitch_3b
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->sendAccessibilityEventWithText(ILjava/lang/String;)V
    invoke-static {v3, v6, v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$5000(Lcom/google/android/apps/books/widget/PageTurnView;ILjava/lang/String;)V

    goto :goto_34

    .line 2125
    :pswitch_4e
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00bf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->sendAccessibilityEventWithText(ILjava/lang/String;)V
    invoke-static {v3, v6, v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$5000(Lcom/google/android/apps/books/widget/PageTurnView;ILjava/lang/String;)V

    goto :goto_34

    .line 2129
    :pswitch_61
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mIsChromeVisible:Z
    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$5100(Lcom/google/android/apps/books/widget/PageTurnView;)Z

    move-result v3

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2132
    .local v1, menuActionText:Ljava/lang/String;
    :goto_76
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->sendAccessibilityEventWithText(ILjava/lang/String;)V
    invoke-static {v3, v6, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$5000(Lcom/google/android/apps/books/widget/PageTurnView;ILjava/lang/String;)V

    goto :goto_34

    .line 2129
    .end local v1           #menuActionText:Ljava/lang/String;
    :cond_7c
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_76

    .line 2138
    .end local v2           #zone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    :cond_8a
    sget v3, Lcom/google/android/apps/books/app/IcsApis;->ACTION_HOVER_EXIT:I

    if-ne v0, v3, :cond_39

    .line 2139
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentZone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    invoke-static {v3, v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4902(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;)Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    .line 2140
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$4;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->maybeUnPauseTtsDelayed()V
    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$5200(Lcom/google/android/apps/books/widget/PageTurnView;)V

    goto :goto_39

    .line 2119
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_4e
        :pswitch_61
    .end packed-switch
.end method
