.class Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 2
    .parameter

    .prologue
    .line 1728
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1728
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onUrlInMessageClicked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
