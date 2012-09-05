.class Lcom/sprint/dsa/PageActivity$ProgressRunnable;
.super Ljava/lang/Object;
.source "PageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressRunnable"
.end annotation


# instance fields
.field private final POST_DELAY:I

.field private continueProgress:Z

.field currentImg:I

.field img:Landroid/widget/ImageView;

.field listAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

.field final synthetic this$0:Lcom/sprint/dsa/PageActivity;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/PageActivity;Lcom/sprint/dsa/widget/TestConnectionView;Lcom/sprint/dsa/widget/ContentListAdapter;I)V
    .registers 7
    .parameter
    .parameter "testView"
    .parameter "listAdapter"
    .parameter "viewId"

    .prologue
    .line 911
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->this$0:Lcom/sprint/dsa/PageActivity;

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->uiHandler:Landroid/os/Handler;

    .line 897
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->POST_DELAY:I

    .line 898
    const v0, 0x7f02000e

    iput v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->currentImg:I

    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->continueProgress:Z

    .line 907
    iput-object p3, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->listAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    .line 908
    invoke-virtual {p2, p4}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->img:Landroid/widget/ImageView;

    .line 909
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->img:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 910
    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {p1}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/dsa/widget/ContentListAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 927
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->img:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->currentImg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 928
    iget v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->currentImg:I

    packed-switch v0, :pswitch_data_3a

    .line 940
    :goto_c
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v0}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/dsa/widget/ContentListAdapter;->notifyDataSetChanged()V

    .line 941
    iget-boolean v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->continueProgress:Z

    if-eqz v0, :cond_33

    .line 942
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->uiHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 946
    :goto_20
    return-void

    .line 930
    :pswitch_21
    const v0, 0x7f02000f

    iput v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->currentImg:I

    goto :goto_c

    .line 933
    :pswitch_27
    const v0, 0x7f020010

    iput v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->currentImg:I

    goto :goto_c

    .line 936
    :pswitch_2d
    const v0, 0x7f02000e

    iput v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->currentImg:I

    goto :goto_c

    .line 944
    :cond_33
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->img:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 928
    :pswitch_data_3a
    .packed-switch 0x7f02000e
        :pswitch_21
        :pswitch_27
        :pswitch_2d
    .end packed-switch
.end method

.method public stopProgress()V
    .registers 2

    .prologue
    .line 921
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->continueProgress:Z

    .line 922
    return-void
.end method

.method public switchView(Lcom/sprint/dsa/widget/TestConnectionView;I)V
    .registers 5
    .parameter "testView"
    .parameter "viewId"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->img:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 915
    invoke-virtual {p1, p2}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->img:Landroid/widget/ImageView;

    .line 916
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->img:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v0}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/dsa/widget/ContentListAdapter;->notifyDataSetChanged()V

    .line 918
    return-void
.end method
