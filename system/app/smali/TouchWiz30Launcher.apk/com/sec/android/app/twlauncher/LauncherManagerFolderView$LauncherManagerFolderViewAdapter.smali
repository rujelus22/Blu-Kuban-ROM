.class Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;
.super Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
.source "LauncherManagerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LauncherManagerFolderViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;->this$0:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    .line 31
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 5
    .parameter "position"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 42
    .local v0, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v1, 0x0

    .line 43
    .local v1, viewType:I
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_c

    .line 44
    const/4 v1, 0x1

    .line 46
    :cond_c
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x1

    .line 56
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 57
    .local v0, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v1, 0x0

    .line 58
    .local v1, resId:I
    if-nez p2, :cond_13

    .line 59
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;->getItemViewType(I)I

    move-result v3

    .line 60
    .local v3, viewType:I
    if-ne v3, v5, :cond_2b

    .line 61
    const v1, 0x7f030009

    .line 67
    .end local v3           #viewType:I
    :cond_13
    :goto_13
    invoke-super {p0, v0, p2, p3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, view:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 69
    invoke-virtual {v2, v5}, Landroid/view/View;->setLongClickable(Z)V

    move-object v4, v2

    .line 71
    check-cast v4, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/MenuItemView;->setIgnoreDrawableStateChanges(Z)V

    move-object v4, v2

    .line 72
    check-cast v4, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusableInTouchMode(Z)V

    .line 75
    return-object v2

    .line 63
    .end local v2           #view:Landroid/view/View;
    .restart local v3       #viewType:I
    :cond_2b
    const v1, 0x7f030002

    goto :goto_13
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x2

    return v0
.end method
