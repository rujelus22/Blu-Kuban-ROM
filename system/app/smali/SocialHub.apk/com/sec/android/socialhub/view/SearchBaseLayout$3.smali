.class Lcom/sec/android/socialhub/view/SearchBaseLayout$3;
.super Ljava/lang/Object;
.source "SearchBaseLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/SearchBaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/SearchBaseLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$3;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 204
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$3;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1f

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, edit:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$3;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    if-eqz v1, :cond_15

    .line 210
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$3;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 213
    :cond_15
    if-eqz v0, :cond_1f

    .line 215
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$3;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 218
    .end local v0           #edit:Landroid/widget/EditText;
    :cond_1f
    return-void
.end method
