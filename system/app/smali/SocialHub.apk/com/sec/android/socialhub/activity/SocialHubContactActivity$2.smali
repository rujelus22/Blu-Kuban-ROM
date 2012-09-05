.class Lcom/sec/android/socialhub/activity/SocialHubContactActivity$2;
.super Ljava/lang/Object;
.source "SocialHubContactActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->initializeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chnageSelectedCount(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->setCount(I)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLeftButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 191
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLeftButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Landroid/widget/Button;

    move-result-object v1

    if-lez p1, :cond_1a

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    :cond_19
    return-void

    .line 191
    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method
