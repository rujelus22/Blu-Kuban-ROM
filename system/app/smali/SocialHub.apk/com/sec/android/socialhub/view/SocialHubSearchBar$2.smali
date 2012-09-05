.class Lcom/sec/android/socialhub/view/SocialHubSearchBar$2;
.super Ljava/lang/Object;
.source "SocialHubSearchBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 132
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$2;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 150
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 145
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$2;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    #getter for: Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mHandler:Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->access$100(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 137
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$2;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    #getter for: Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mHandler:Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->access$100(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;->invokeSearchText(Ljava/lang/String;)V

    .line 139
    :cond_15
    return-void
.end method
