.class Lcom/sec/android/socialhub/view/SocialHubSearchBar$3;
.super Ljava/lang/Object;
.source "SocialHubSearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$3;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$3;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    #getter for: Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mHandler:Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->access$100(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 165
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$3;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    #getter for: Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mHandler:Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->access$100(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;->invokeButtonClick()V

    .line 167
    :cond_11
    return-void
.end method
