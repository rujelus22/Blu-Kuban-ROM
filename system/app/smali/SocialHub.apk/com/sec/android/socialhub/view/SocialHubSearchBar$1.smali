.class Lcom/sec/android/socialhub/view/SocialHubSearchBar$1;
.super Ljava/lang/Object;
.source "SocialHubSearchBar.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/SocialHubSearchBar;->initialize(Landroid/content/Context;)V
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
    .line 94
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$1;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "view"
    .parameter "action"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 96
    const/4 v0, 0x6

    if-ne p2, v0, :cond_15

    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$1;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    #getter for: Lcom/sec/android/socialhub/view/SocialHubSearchBar;->InputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->access$000(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar$1;->this$0:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 98
    :cond_15
    return v2
.end method
