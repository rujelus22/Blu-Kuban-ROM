.class public Lcom/google/android/apps/translate/history/FocusRequestingListView;
.super Landroid/widget/ListView;
.source "FocusRequestingListView.java"


# instance fields
.field private mFirstLayoutDone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/history/FocusRequestingListView;->mFirstLayoutDone:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/history/FocusRequestingListView;->mFirstLayoutDone:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/history/FocusRequestingListView;->mFirstLayoutDone:Z

    .line 44
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 49
    iget-boolean v0, p0, Lcom/google/android/apps/translate/history/FocusRequestingListView;->mFirstLayoutDone:Z

    if-nez v0, :cond_e

    .line 50
    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/history/FocusRequestingListView;->setFocusable(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/FocusRequestingListView;->requestFocus()Z

    .line 53
    :cond_e
    iput-boolean v1, p0, Lcom/google/android/apps/translate/history/FocusRequestingListView;->mFirstLayoutDone:Z

    .line 54
    return-void
.end method
