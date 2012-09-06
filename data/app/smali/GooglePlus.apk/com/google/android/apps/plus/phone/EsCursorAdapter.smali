.class public Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "EsCursorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 79
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_13

    .line 38
    if-nez p2, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    .end local p2
    :cond_12
    :goto_12
    return-object p2

    .restart local p2
    :cond_13
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_12
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_8

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_7
    return v0

    :cond_8
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_7
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 60
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method
