.class public Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ListBouncingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/ListBouncingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialHubBouncingLinearLayout"
.end annotation


# instance fields
.field private mBouncing:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;

.field final synthetic this$0:Lcom/sec/android/socialhub/parent/ListBouncingActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/parent/ListBouncingActivity;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->this$0:Lcom/sec/android/socialhub/parent/ListBouncingActivity;

    .line 121
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->mBouncing:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;

    .line 122
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->initLinearLaout(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method private initLinearLaout(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 133
    new-instance v0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->this$0:Lcom/sec/android/socialhub/parent/ListBouncingActivity;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;-><init>(Lcom/sec/android/socialhub/parent/ListBouncingActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->mBouncing:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;

    .line 134
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->mBouncing:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;

    invoke-virtual {p0, v0, v2, v2}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->addView(Landroid/view/View;II)V

    .line 135
    return-void
.end method


# virtual methods
.method public getAbsBouningLayout()Lcom/sec/android/socialhub/parent/AbsBouncingLayout;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->mBouncing:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->mBouncing:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
