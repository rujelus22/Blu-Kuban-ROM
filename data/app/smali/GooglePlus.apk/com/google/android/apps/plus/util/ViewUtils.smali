.class public Lcom/google/android/apps/plus/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public static getListenerForSwitchToList(Landroid/widget/AbsListView;)Landroid/view/View$OnFocusChangeListener;
    .registers 2
    .parameter "listView"

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/apps/plus/util/ViewUtils$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/util/ViewUtils$1;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method
