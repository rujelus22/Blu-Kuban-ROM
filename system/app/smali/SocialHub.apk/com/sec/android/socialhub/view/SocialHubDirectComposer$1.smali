.class Lcom/sec/android/socialhub/view/SocialHubDirectComposer$1;
.super Ljava/lang/Object;
.source "SocialHubDirectComposer.java"

# interfaces
.implements Lcom/sec/android/socialhub/view/EditTextEx$OnEditTextLineChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/SocialHubDirectComposer;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer$1;->this$0:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLineChanged(II)V
    .registers 5
    .parameter "before"
    .parameter "after"

    .prologue
    .line 99
    const/4 v0, 0x3

    if-lt p2, v0, :cond_16

    .line 101
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer$1;->this$0:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    #getter for: Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->access$000(Lcom/sec/android/socialhub/view/SocialHubDirectComposer;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 103
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer$1;->this$0:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    #getter for: Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->access$000(Lcom/sec/android/socialhub/view/SocialHubDirectComposer;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :cond_15
    :goto_15
    return-void

    .line 108
    :cond_16
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer$1;->this$0:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    #getter for: Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->access$000(Lcom/sec/android/socialhub/view/SocialHubDirectComposer;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 110
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer$1;->this$0:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    #getter for: Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->access$000(Lcom/sec/android/socialhub/view/SocialHubDirectComposer;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15
.end method
