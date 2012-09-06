.class Lcom/android/email/activity/setup/AccountServerBaseFragment$2;
.super Ljava/lang/Object;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountServerBaseFragment;->makeTextViewUneditable(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_10

    .line 279
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->val$errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 283
    :goto_f
    return-void

    .line 281
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->val$view:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method
