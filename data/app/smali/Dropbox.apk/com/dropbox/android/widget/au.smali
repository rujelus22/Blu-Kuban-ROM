.class public final Lcom/dropbox/android/widget/au;
.super Lcom/dropbox/android/widget/aq;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/filemanager/m;


# instance fields
.field private a:Lcom/dropbox/android/filemanager/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/aq;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0, p2, p3}, Lcom/dropbox/android/widget/au;->a(Landroid/database/Cursor;Ljava/util/Set;)V

    .line 23
    return-void
.end method

.method private a(Lcom/dropbox/android/widget/SweetListView;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/dropbox/android/widget/au;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/dropbox/android/widget/au;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 71
    invoke-virtual {p1}, Lcom/dropbox/android/widget/SweetListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 72
    invoke-virtual {p1}, Lcom/dropbox/android/widget/SweetListView;->getLastVisiblePosition()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 75
    invoke-virtual {p1}, Lcom/dropbox/android/widget/SweetListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 76
    iget-object v2, p0, Lcom/dropbox/android/widget/au;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 77
    iget-object v0, p0, Lcom/dropbox/android/widget/au;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/dropbox/android/widget/au;->j:I

    add-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Lcom/dropbox/android/widget/au;->a:Lcom/dropbox/android/filemanager/g;

    sub-int/2addr v0, v2

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/filemanager/g;->a(II)V

    .line 81
    :cond_44
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/android/widget/au;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 96
    invoke-virtual {p0}, Lcom/dropbox/android/widget/au;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not create any full views."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)Lcom/dropbox/android/filemanager/n;
    .registers 7
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/android/widget/au;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/dropbox/android/widget/au;->e:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 105
    iget-object v1, p0, Lcom/dropbox/android/widget/au;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/dropbox/android/widget/au;->c(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 108
    iget-object v0, p0, Lcom/dropbox/android/widget/au;->e:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    iget-object v0, p0, Lcom/dropbox/android/widget/au;->e:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    iget-object v0, p0, Lcom/dropbox/android/widget/au;->e:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_41

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    .line 112
    :goto_34
    new-instance v1, Lcom/dropbox/android/filemanager/n;

    iget-object v4, p0, Lcom/dropbox/android/widget/au;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/android/filemanager/n;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Z)V

    move-object v0, v1

    .line 116
    :goto_40
    return-object v0

    .line 111
    :cond_41
    const/4 v0, 0x0

    goto :goto_34

    .line 114
    :cond_43
    iget-object v1, p0, Lcom/dropbox/android/widget/au;->e:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 116
    const/4 v0, 0x0

    goto :goto_40
.end method

.method public final a(Landroid/database/Cursor;)V
    .registers 5
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dropbox/android/widget/au;->a:Lcom/dropbox/android/filemanager/g;

    if-eqz v0, :cond_9

    .line 28
    iget-object v0, p0, Lcom/dropbox/android/widget/au;->a:Lcom/dropbox/android/filemanager/g;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/g;->a()V

    .line 31
    :cond_9
    if-eqz p1, :cond_1e

    .line 32
    iget-object v0, p0, Lcom/dropbox/android/widget/au;->a:Lcom/dropbox/android/filemanager/g;

    if-nez v0, :cond_22

    .line 33
    new-instance v0, Lcom/dropbox/android/filemanager/g;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {}, Lcom/dropbox/android/util/aW;->d()Ldbxyzptlk/l/o;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/android/filemanager/g;-><init>(ILcom/dropbox/android/filemanager/m;Ldbxyzptlk/l/o;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/au;->a:Lcom/dropbox/android/filemanager/g;

    .line 39
    :cond_1e
    :goto_1e
    invoke-super {p0, p1}, Lcom/dropbox/android/widget/aq;->a(Landroid/database/Cursor;)V

    .line 40
    return-void

    .line 35
    :cond_22
    new-instance v0, Lcom/dropbox/android/filemanager/g;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/dropbox/android/widget/au;->a:Lcom/dropbox/android/filemanager/g;

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/android/filemanager/g;-><init>(ILcom/dropbox/android/filemanager/m;Lcom/dropbox/android/filemanager/g;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/au;->a:Lcom/dropbox/android/filemanager/g;

    goto :goto_1e
.end method

.method public final a(Landroid/database/Cursor;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not bind any full views."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 85
    new-instance v0, Lcom/dropbox/android/widget/ThumbGridItemView;

    iget-object v1, p0, Lcom/dropbox/android/widget/au;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/dropbox/android/widget/ThumbGridItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public final b(Landroid/database/Cursor;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    check-cast p2, Lcom/dropbox/android/widget/ThumbGridItemView;

    iget-object v0, p0, Lcom/dropbox/android/widget/au;->a:Lcom/dropbox/android/filemanager/g;

    invoke-virtual {p2, p1, v0}, Lcom/dropbox/android/widget/ThumbGridItemView;->a(Landroid/database/Cursor;Lcom/dropbox/android/filemanager/g;)V

    .line 91
    return-void
.end method

.method public final b(Landroid/database/Cursor;)Z
    .registers 3
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/dropbox/android/widget/au;->c(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    move-object v0, p3

    check-cast v0, Lcom/dropbox/android/widget/SweetListView;

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/au;->a(Lcom/dropbox/android/widget/SweetListView;)V

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/dropbox/android/widget/aq;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dropbox/android/widget/au;->e:Landroid/database/Cursor;

    if-nez v0, :cond_6

    .line 124
    const/4 v0, 0x0

    .line 127
    :goto_5
    return v0

    :cond_6
    invoke-super {p0}, Lcom/dropbox/android/widget/aq;->isEmpty()Z

    move-result v0

    goto :goto_5
.end method
