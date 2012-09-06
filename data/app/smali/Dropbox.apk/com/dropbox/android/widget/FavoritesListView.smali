.class public Lcom/dropbox/android/widget/FavoritesListView;
.super Landroid/widget/ListView;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/a;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ListAdapter;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:I

.field private g:Landroid/widget/Button;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/dropbox/android/widget/FavoritesListView;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/widget/FavoritesListView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 33
    iput v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->e:I

    .line 34
    iput v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->f:I

    .line 156
    new-instance v0, Lcom/dropbox/android/widget/B;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/B;-><init>(Lcom/dropbox/android/widget/FavoritesListView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->h:Landroid/os/Handler;

    .line 39
    invoke-static {p0}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->a(Lcom/dropbox/android/taskqueue/a;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->e:I

    .line 34
    iput v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->f:I

    .line 156
    new-instance v0, Lcom/dropbox/android/widget/B;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/B;-><init>(Lcom/dropbox/android/widget/FavoritesListView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->h:Landroid/os/Handler;

    .line 44
    invoke-static {p0}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->a(Lcom/dropbox/android/taskqueue/a;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->e:I

    .line 34
    iput v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->f:I

    .line 156
    new-instance v0, Lcom/dropbox/android/widget/B;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/B;-><init>(Lcom/dropbox/android/widget/FavoritesListView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->h:Landroid/os/Handler;

    .line 49
    invoke-static {p0}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->a(Lcom/dropbox/android/taskqueue/a;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/FavoritesListView;)V
    .registers 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dropbox/android/widget/FavoritesListView;->c()V

    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->c:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 78
    iget-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 80
    iget-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1f

    .line 81
    :cond_16
    const/4 v0, 0x4

    .line 86
    :goto_17
    if-eq v1, v0, :cond_1e

    .line 87
    iget-object v1, p0, Lcom/dropbox/android/widget/FavoritesListView;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_1e
    return-void

    .line 83
    :cond_1f
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/dropbox/android/widget/FavoritesListView;->c()V

    goto :goto_17
.end method

.method private c()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 97
    instance-of v2, v0, Landroid/database/Cursor;

    if-eqz v2, :cond_3e

    .line 98
    check-cast v0, Landroid/database/Cursor;

    .line 99
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v2, v1

    .line 100
    :cond_12
    :goto_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 101
    invoke-static {v0}, Lcom/dropbox/android/provider/B;->a(Landroid/database/Cursor;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Lcom/dropbox/android/filemanager/LocalEntry;->a()Z

    move-result v4

    if-nez v4, :cond_12

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    new-instance v4, Lcom/dropbox/android/taskqueue/DownloadTask;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/FavoritesListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/dropbox/android/taskqueue/DownloadTask;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 105
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/filemanager/v;->i()Lcom/dropbox/android/taskqueue/p;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/dropbox/android/taskqueue/p;->c(Lcom/dropbox/android/taskqueue/k;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_3e
    move v2, v1

    .line 111
    :cond_3f
    iput v2, p0, Lcom/dropbox/android/widget/FavoritesListView;->e:I

    .line 112
    iput v1, p0, Lcom/dropbox/android/widget/FavoritesListView;->f:I

    .line 113
    invoke-direct {p0}, Lcom/dropbox/android/widget/FavoritesListView;->d()V

    .line 114
    return-void
.end method

.method private d()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 117
    iget-object v2, p0, Lcom/dropbox/android/widget/FavoritesListView;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/dropbox/android/widget/FavoritesListView;->g:Landroid/widget/Button;

    if-eqz v2, :cond_27

    .line 120
    invoke-virtual {p0}, Lcom/dropbox/android/widget/FavoritesListView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 121
    iget v3, p0, Lcom/dropbox/android/widget/FavoritesListView;->f:I

    if-eqz v3, :cond_3e

    .line 123
    iget v3, p0, Lcom/dropbox/android/widget/FavoritesListView;->f:I

    if-ne v3, v1, :cond_28

    .line 124
    const v1, 0x7f0900b2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    :goto_1d
    iget-object v2, p0, Lcom/dropbox/android/widget/FavoritesListView;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/dropbox/android/widget/FavoritesListView;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    :cond_27
    return-void

    .line 126
    :cond_28
    const v3, 0x7f0900b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/dropbox/android/widget/FavoritesListView;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 129
    :cond_3e
    invoke-static {}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->i_()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 133
    const v1, 0x7f0900ae

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 135
    :cond_4c
    iget v3, p0, Lcom/dropbox/android/widget/FavoritesListView;->e:I

    if-nez v3, :cond_6f

    .line 136
    invoke-static {}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->a()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/m;->b()Lcom/dropbox/android/taskqueue/n;

    move-result-object v0

    sget-object v3, Lcom/dropbox/android/taskqueue/n;->a:Lcom/dropbox/android/taskqueue/n;

    if-ne v0, v3, :cond_67

    .line 138
    const v0, 0x7f0900af

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_63
    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 142
    goto :goto_1d

    .line 140
    :cond_67
    const v0, 0x7f0900b4

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_63

    .line 142
    :cond_6f
    iget v3, p0, Lcom/dropbox/android/widget/FavoritesListView;->e:I

    if-ne v3, v1, :cond_7e

    .line 143
    const v0, 0x7f0900b0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_1d

    .line 145
    :cond_7e
    const v3, 0x7f0900b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/dropbox/android/widget/FavoritesListView;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_1d
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dropbox/android/widget/FavoritesListView;->c:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->c:Landroid/view/View;

    const v1, 0x7f0d0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->d:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->c:Landroid/view/View;

    const v1, 0x7f0d0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/widget/FavoritesListView;->g:Landroid/widget/Button;

    .line 69
    invoke-direct {p0}, Lcom/dropbox/android/widget/FavoritesListView;->b()V

    .line 70
    return-void
.end method

.method protected layoutChildren()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dropbox/android/widget/FavoritesListView;->b()V

    .line 55
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 56
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/widget/FavoritesListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dropbox/android/widget/FavoritesListView;->b:Landroid/widget/ListAdapter;

    .line 61
    invoke-direct {p0}, Lcom/dropbox/android/widget/FavoritesListView;->b()V

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    return-void
.end method
