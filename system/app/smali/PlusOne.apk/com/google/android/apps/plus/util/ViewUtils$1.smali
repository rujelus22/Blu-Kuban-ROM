.class final Lcom/google/android/apps/plus/util/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/util/ViewUtils;->getListenerForSwitchToList(Landroid/widget/AbsListView;)Landroid/view/View$OnFocusChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listView:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/android/apps/plus/util/ViewUtils$1;->val$listView:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 29
    if-nez p2, :cond_19

    iget-object v1, p0, Lcom/google/android/apps/plus/util/ViewUtils$1;->val$listView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 30
    iget-object v1, p0, Lcom/google/android/apps/plus/util/ViewUtils$1;->val$listView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    .line 31
    .local v0, count:I
    if-lez v0, :cond_19

    .line 32
    iget-object v1, p0, Lcom/google/android/apps/plus/util/ViewUtils$1;->val$listView:Landroid/widget/AbsListView;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 35
    .end local v0           #count:I
    :cond_19
    return-void
.end method
