.class public Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;
.super Lcom/sec/android/socialhub/parent/AbsBouncingLayout;
.source "ListBouncingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/ListBouncingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialHubBouncingLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/ListBouncingActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/parent/ListBouncingActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "ctx"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;->this$0:Lcom/sec/android/socialhub/parent/ListBouncingActivity;

    .line 152
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;-><init>(Landroid/content/Context;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected createListView()Landroid/widget/ListView;
    .registers 4

    .prologue
    .line 158
    new-instance v0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;->this$0:Lcom/sec/android/socialhub/parent/ListBouncingActivity;

    iget-object v2, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;->this$0:Lcom/sec/android/socialhub/parent/ListBouncingActivity;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;-><init>(Lcom/sec/android/socialhub/parent/ListBouncingActivity;Landroid/content/Context;)V

    return-object v0
.end method
