.class Lcom/google/android/apps/plus/fragments/MessageListFragment$6;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/MessageListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 817
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 818
    .local v2, text:Ljava/lang/CharSequence;
    instance-of v3, p2, Lcom/google/android/apps/plus/views/MessageListItemView;

    if-eqz v3, :cond_3a

    move-object v1, p2

    .line 819
    check-cast v1, Lcom/google/android/apps/plus/views/MessageListItemView;

    .line 820
    .local v1, mliv:Lcom/google/android/apps/plus/views/MessageListItemView;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MessageListItemView;->getMessage()Ljava/lang/CharSequence;

    move-result-object v2

    .line 825
    .end local v1           #mliv:Lcom/google/android/apps/plus/views/MessageListItemView;
    :cond_c
    :goto_c
    if-eqz v2, :cond_38

    .line 826
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_38

    .line 827
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 829
    .local v0, clipboard:Landroid/content/ClipboardManager;
    if-eqz v0, :cond_38

    .line 830
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f08031f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 836
    .end local v0           #clipboard:Landroid/content/ClipboardManager;
    :cond_38
    const/4 v3, 0x1

    return v3

    .line 821
    :cond_3a
    instance-of v3, p2, Lcom/google/android/apps/plus/views/SystemMessageListItemView;

    if-eqz v3, :cond_c

    move-object v1, p2

    .line 822
    check-cast v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;

    .line 823
    .local v1, mliv:Lcom/google/android/apps/plus/views/SystemMessageListItemView;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_c
.end method
