.class public Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;
.super Ljava/lang/Object;
.source "SocialHubSingleMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemCommentCache"
.end annotation


# instance fields
.field public tCheck:Landroid/widget/CheckBox;

.field public tContents:Landroid/widget/TextView;

.field public tName:Landroid/widget/TextView;

.field public tTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 612
    const v0, 0x7f0b0063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->tName:Landroid/widget/TextView;

    .line 613
    const v0, 0x7f0b0065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->tContents:Landroid/widget/TextView;

    .line 614
    const v0, 0x7f0b0064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->tTime:Landroid/widget/TextView;

    .line 616
    const v0, 0x7f0b0066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->tCheck:Landroid/widget/CheckBox;

    .line 617
    return-void
.end method
