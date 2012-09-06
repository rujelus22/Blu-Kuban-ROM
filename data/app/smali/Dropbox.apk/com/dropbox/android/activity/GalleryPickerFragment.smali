.class public Lcom/dropbox/android/activity/GalleryPickerFragment;
.super Lcom/dropbox/android/activity/lock/SweetListFragment;
.source "panda.py"

# interfaces
.implements Landroid/support/v4/app/x;


# static fields
.field private static final af:Ljava/lang/String;


# instance fields
.field protected final V:I

.field protected W:Landroid/net/Uri;

.field protected final X:Ljava/util/HashSet;

.field Y:I

.field Z:I

.field private ag:Lcom/dropbox/android/activity/aV;

.field private ah:Landroid/widget/Button;

.field private ai:Landroid/widget/TextView;

.field private aj:Landroid/widget/Button;

.field private ak:Z

.field private al:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/dropbox/android/activity/GalleryPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/GalleryPickerFragment;->af:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/SweetListFragment;-><init>()V

    .line 47
    iput v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->V:I

    .line 52
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->W:Landroid/net/Uri;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->X:Ljava/util/HashSet;

    .line 226
    iput v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->Y:I

    .line 227
    iput v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->Z:I

    .line 246
    iput-boolean v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ak:Z

    .line 247
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->al:Landroid/os/Handler;

    return-void
.end method

.method private A()V
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ag:Lcom/dropbox/android/activity/aV;

    if-eqz v0, :cond_9

    .line 198
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ag:Lcom/dropbox/android/activity/aV;

    invoke-interface {v0}, Lcom/dropbox/android/activity/aV;->f()V

    .line 200
    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/GalleryPickerFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->A()V

    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/activity/GalleryPickerFragment;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->al:Landroid/os/Handler;

    return-object v0
.end method

.method private y()V
    .registers 3

    .prologue
    .line 65
    new-instance v0, Lcom/dropbox/android/util/Z;

    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->W:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dropbox/android/util/aX;->a(Lcom/dropbox/android/util/Z;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->aj:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->aj:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    return-void
.end method

.method private z()V
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->X:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 193
    :goto_9
    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ah:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    return-void

    .line 192
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-virtual {p0, p3}, Lcom/dropbox/android/activity/GalleryPickerFragment;->c(Landroid/os/Bundle;)V

    .line 160
    const v0, 0x7f030014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 161
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/SweetListView;

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    .line 162
    return-object v1
.end method

.method public final a(ILandroid/os/Bundle;)Ldbxyzptlk/a/d;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 207
    sget-object v2, Lcom/dropbox/android/provider/ZipperedMediaProvider;->b:Landroid/net/Uri;

    .line 209
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->j()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aW;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v5, v6

    .line 215
    :goto_f
    new-instance v0, Ldbxyzptlk/a/c;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_27

    const-string v5, "mini_thumb_path"

    :goto_1c
    aput-object v5, v3, v7

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Ldbxyzptlk/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 209
    :cond_24
    const/4 v0, 0x3

    move v5, v0

    goto :goto_f

    .line 215
    :cond_27
    const-string v5, "micro_thumb_path"

    goto :goto_1c
.end method

.method protected final a()V
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ag:Lcom/dropbox/android/activity/aV;

    if-eqz v0, :cond_d

    .line 168
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ag:Lcom/dropbox/android/activity/aV;

    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->W:Landroid/net/Uri;

    iget-object v2, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->X:Ljava/util/HashSet;

    invoke-interface {v0, v1, v2}, Lcom/dropbox/android/activity/aV;->a(Landroid/net/Uri;Ljava/util/Set;)V

    .line 170
    :cond_d
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    if-nez p1, :cond_19

    const/4 v0, -0x1

    if-ne p2, v0, :cond_19

    .line 73
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->W:Landroid/net/Uri;

    .line 74
    invoke-direct {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->y()V

    .line 78
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->X:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 79
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->a()V

    .line 82
    :cond_19
    return-void
.end method

.method protected final a(Landroid/database/Cursor;)V
    .registers 7
    .parameter

    .prologue
    .line 251
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 252
    :cond_5
    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 253
    const-string v1, "_cursor_type_tag"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_tag_video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 254
    const-string v1, "vid_duration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 255
    const-string v1, "_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 259
    :cond_3b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 261
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_67

    iget-boolean v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ak:Z

    if-nez v1, :cond_67

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ak:Z

    .line 263
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_67

    .line 268
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/dropbox/android/activity/ah;

    invoke-direct {v3, p0}, Lcom/dropbox/android/activity/ah;-><init>(Lcom/dropbox/android/activity/GalleryPickerFragment;)V

    invoke-static {v1, v0, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 285
    :cond_67
    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ab:Lcom/dropbox/android/widget/aq;

    check-cast v0, Lcom/dropbox/android/widget/ab;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/ab;->b()Landroid/database/Cursor;

    move-result-object v0

    .line 176
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 178
    const-string v1, "content_uri"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->X:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 182
    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->X:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 187
    :goto_22
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ab:Lcom/dropbox/android/widget/aq;

    check-cast v0, Lcom/dropbox/android/widget/ab;

    invoke-virtual {v0, p3, p2}, Lcom/dropbox/android/widget/ab;->a(ILandroid/view/View;)V

    .line 188
    invoke-direct {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->z()V

    .line 189
    return-void

    .line 184
    :cond_2d
    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->X:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method public final a(Lcom/dropbox/android/activity/aV;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ag:Lcom/dropbox/android/activity/aV;

    .line 62
    return-void
.end method

.method public final a(Ldbxyzptlk/a/d;)V
    .registers 4
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ab:Lcom/dropbox/android/widget/aq;

    check-cast v0, Lcom/dropbox/android/widget/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/ab;->a(Landroid/database/Cursor;)V

    .line 293
    return-void
.end method

.method public final a(Ldbxyzptlk/a/d;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-virtual {p0, p2}, Lcom/dropbox/android/activity/GalleryPickerFragment;->a(Landroid/database/Cursor;)V

    .line 235
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ab:Lcom/dropbox/android/widget/aq;

    check-cast v0, Lcom/dropbox/android/widget/ab;

    invoke-virtual {v0, p2}, Lcom/dropbox/android/widget/ab;->a(Landroid/database/Cursor;)V

    .line 239
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ac:Lcom/dropbox/android/util/aG;

    if-eqz v0, :cond_22

    .line 241
    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ac:Lcom/dropbox/android/util/aG;

    invoke-virtual {v0}, Lcom/dropbox/android/util/aG;->a()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dropbox/android/widget/SweetListView;->setDelayedPositionFromTop(I)V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ac:Lcom/dropbox/android/util/aG;

    .line 244
    :cond_22
    return-void
.end method

.method public final bridge synthetic a(Ldbxyzptlk/a/d;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/activity/GalleryPickerFragment;->a(Ldbxyzptlk/a/d;Landroid/database/Cursor;)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/SweetListFragment;->d(Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 89
    const-string v1, "_tag_video"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v1, "_tag_photo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/dropbox/android/widget/ab;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->X:Ljava/util/HashSet;

    invoke-direct {v1, v2, v5, v0, v3}, Lcom/dropbox/android/widget/ab;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ab:Lcom/dropbox/android/widget/aq;

    .line 99
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->d_()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0, v4, v5, p0}, Landroid/support/v4/app/w;->a(ILandroid/os/Bundle;Landroid/support/v4/app/x;)Ldbxyzptlk/a/d;

    .line 101
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ab:Lcom/dropbox/android/widget/aq;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/SweetListView;->setSweetAdapter(Lcom/dropbox/android/widget/aq;)V

    .line 102
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ad:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/SweetListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->n()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 105
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/GalleryPickerFragment;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v1, Lcom/dropbox/android/activity/ae;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/ae;-><init>(Lcom/dropbox/android/activity/GalleryPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->n()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ah:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ah:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->n()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->aj:Landroid/widget/Button;

    .line 119
    invoke-direct {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->y()V

    .line 120
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->aj:Landroid/widget/Button;

    new-instance v1, Lcom/dropbox/android/activity/af;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/af;-><init>(Lcom/dropbox/android/activity/GalleryPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->n()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ai:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ai:Landroid/widget/TextView;

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ai:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ah:Landroid/widget/Button;

    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 137
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ah:Landroid/widget/Button;

    new-instance v1, Lcom/dropbox/android/activity/ag;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/ag;-><init>(Lcom/dropbox/android/activity/GalleryPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-direct {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->z()V

    .line 145
    return-void
.end method

.method public final s()V
    .registers 3

    .prologue
    .line 149
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/SweetListFragment;->s()V

    .line 150
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ab:Lcom/dropbox/android/widget/aq;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 151
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryPickerFragment;->ab:Lcom/dropbox/android/widget/aq;

    check-cast v0, Lcom/dropbox/android/widget/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/ab;->a(Landroid/database/Cursor;)V

    .line 153
    :cond_19
    return-void
.end method
