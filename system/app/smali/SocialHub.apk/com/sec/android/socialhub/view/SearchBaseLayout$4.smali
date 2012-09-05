.class Lcom/sec/android/socialhub/view/SearchBaseLayout$4;
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
    .line 222
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$4;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$4;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_23

    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, edit:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$4;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    if-eqz v2, :cond_15

    .line 233
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$4;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 236
    :cond_15
    if-eqz v1, :cond_23

    .line 238
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$4;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    .line 246
    .end local v1           #edit:Landroid/widget/EditText;
    :cond_23
    :goto_23
    return-void

    .line 242
    :catch_24
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method
