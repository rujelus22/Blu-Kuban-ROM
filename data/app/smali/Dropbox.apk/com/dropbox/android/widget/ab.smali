.class public final Lcom/dropbox/android/widget/ab;
.super Lcom/dropbox/android/widget/aq;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/filemanager/d;


# instance fields
.field a:Lcom/dropbox/android/filemanager/b;

.field protected final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/aq;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p4, p0, Lcom/dropbox/android/widget/ab;->b:Ljava/util/Set;

    .line 29
    invoke-virtual {p0, p2, p3}, Lcom/dropbox/android/widget/ab;->a(Landroid/database/Cursor;Ljava/util/Set;)V

    .line 30
    return-void
.end method

.method private a(Lcom/dropbox/android/widget/SweetListView;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 103
    invoke-virtual {p1}, Lcom/dropbox/android/widget/SweetListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 104
    invoke-virtual {p1}, Lcom/dropbox/android/widget/SweetListView;->getLastVisiblePosition()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 107
    invoke-virtual {p1}, Lcom/dropbox/android/widget/SweetListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 108
    iget-object v2, p0, Lcom/dropbox/android/widget/ab;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 109
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/dropbox/android/widget/ab;->j:I

    add-int/2addr v0, v1

    .line 110
    iget-object v1, p0, Lcom/dropbox/android/widget/ab;->a:Lcom/dropbox/android/filemanager/b;

    sub-int/2addr v0, v2

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/filemanager/b;->a(II)V

    .line 113
    :cond_44
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 132
    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->d:Landroid/content/Context;

    const v1, 0x7f03000e

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/dropbox/android/filemanager/e;
    .registers 8
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/dropbox/android/widget/ab;->e:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 141
    iget-object v1, p0, Lcom/dropbox/android/widget/ab;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/dropbox/android/widget/ab;->c(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 144
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->e:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/dropbox/android/widget/ab;->e:Landroid/database/Cursor;

    const-string v2, "thumb_path"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->e:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/dropbox/android/widget/ab;->e:Landroid/database/Cursor;

    const-string v3, "content_uri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    const-string v0, "_tag_video"

    iget-object v3, p0, Lcom/dropbox/android/widget/ab;->e:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/dropbox/android/widget/ab;->e:Landroid/database/Cursor;

    const-string v5, "_cursor_type_tag"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 147
    new-instance v0, Lcom/dropbox/android/filemanager/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/filemanager/e;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    :goto_48
    return-object v0

    .line 149
    :cond_49
    iget-object v1, p0, Lcom/dropbox/android/widget/ab;->e:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 151
    const/4 v0, 0x0

    goto :goto_48
.end method

.method public final a(Landroid/database/Cursor;)V
    .registers 5
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->a:Lcom/dropbox/android/filemanager/b;

    if-eqz v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->a:Lcom/dropbox/android/filemanager/b;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/b;->a()V

    .line 38
    :cond_9
    if-eqz p1, :cond_27

    .line 39
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aW;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    .line 42
    :goto_18
    iget-object v1, p0, Lcom/dropbox/android/widget/ab;->a:Lcom/dropbox/android/filemanager/b;

    if-nez v1, :cond_2d

    .line 43
    new-instance v1, Lcom/dropbox/android/filemanager/b;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2, p0, v0}, Lcom/dropbox/android/filemanager/b;-><init>(ILcom/dropbox/android/filemanager/d;I)V

    iput-object v1, p0, Lcom/dropbox/android/widget/ab;->a:Lcom/dropbox/android/filemanager/b;

    .line 49
    :cond_27
    :goto_27
    invoke-super {p0, p1}, Lcom/dropbox/android/widget/aq;->a(Landroid/database/Cursor;)V

    .line 50
    return-void

    .line 39
    :cond_2b
    const/4 v0, 0x3

    goto :goto_18

    .line 45
    :cond_2d
    new-instance v0, Lcom/dropbox/android/filemanager/b;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/dropbox/android/widget/ab;->a:Lcom/dropbox/android/filemanager/b;

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/android/filemanager/b;-><init>(ILcom/dropbox/android/filemanager/d;Lcom/dropbox/android/filemanager/b;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/ab;->a:Lcom/dropbox/android/filemanager/b;

    goto :goto_27
.end method

.method public final a(Landroid/database/Cursor;Landroid/view/View;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 75
    const/4 v0, 0x0

    .line 77
    const-string v1, "_cursor_type_tag"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "_separator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 79
    const-string v0, "_separator"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, "_sep_camera_roll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 81
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->d:Landroid/content/Context;

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 89
    :goto_30
    const v0, 0x7f0d003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->a:Lcom/dropbox/android/filemanager/b;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/filemanager/b;->a(I)V

    .line 95
    const v0, 0x7f0d003c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    const v0, 0x7f0d003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void

    .line 82
    :cond_5a
    const-string v1, "_sep_other_media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 83
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->d:Landroid/content/Context;

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_30

    .line 85
    :cond_6d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected seperator used in GalleryPickerListAdapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    move-object v1, v0

    goto :goto_30
.end method

.method public final b(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 117
    new-instance v0, Lcom/dropbox/android/widget/GalleryItemView;

    iget-object v1, p0, Lcom/dropbox/android/widget/ab;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/dropbox/android/widget/GalleryItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public final b(Landroid/database/Cursor;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 123
    const-string v0, "content_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/dropbox/android/widget/ab;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 126
    check-cast p2, Lcom/dropbox/android/widget/GalleryItemView;

    iget-object v1, p0, Lcom/dropbox/android/widget/ab;->a:Lcom/dropbox/android/filemanager/b;

    invoke-virtual {p2, p1, v0, v1}, Lcom/dropbox/android/widget/GalleryItemView;->a(Landroid/database/Cursor;ZLcom/dropbox/android/filemanager/b;)V

    .line 127
    return-void
.end method

.method public final b(Landroid/database/Cursor;)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/dropbox/android/widget/ab;->c(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    move-object v0, p3

    check-cast v0, Lcom/dropbox/android/widget/SweetListView;

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/ab;->a(Lcom/dropbox/android/widget/SweetListView;)V

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/dropbox/android/widget/aq;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dropbox/android/widget/ab;->e:Landroid/database/Cursor;

    if-nez v0, :cond_6

    .line 159
    const/4 v0, 0x0

    .line 162
    :goto_5
    return v0

    :cond_6
    invoke-super {p0}, Lcom/dropbox/android/widget/aq;->isEmpty()Z

    move-result v0

    goto :goto_5
.end method
