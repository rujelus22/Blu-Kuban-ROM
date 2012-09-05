.class Lcom/android/contacts/group/GroupBrowseListFragment$5;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;->configureCustomActionBarAtBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$5;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1355
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$5;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    invoke-static {v1, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1000(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 1356
    .local v0, popup:Landroid/widget/PopupMenu;
    if-eqz v0, :cond_b

    .line 1357
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 1359
    :cond_b
    return-void
.end method
