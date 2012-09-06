.class public final Lcom/twitter/android/fd;
.super Landroid/support/v4/widget/CursorAdapter;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field final b:Landroid/util/SparseArray;

.field final c:Landroid/util/SparseArray;

.field final d:Landroid/util/SparseArray;

.field final e:Ljava/lang/String;

.field final f:Lcom/twitter/android/client/b;

.field final g:Landroid/util/SparseArray;

.field private final h:Ljava/util/ArrayList;

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "identifier"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "social_proof"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/fd;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/b;Ljava/lang/String;I)V
    .registers 9

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/fd;->h:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/fd;->b:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/fd;->c:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/fd;->d:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/fd;->g:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/twitter/android/fd;->f:Lcom/twitter/android/client/b;

    iput-object v2, p0, Lcom/twitter/android/fd;->e:Ljava/lang/String;

    iput p5, p0, Lcom/twitter/android/fd;->i:I

    return-void
.end method


# virtual methods
.method final a()V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/fd;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/StoryView;

    iget-object v2, p0, Lcom/twitter/android/fd;->f:Lcom/twitter/android/client/b;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/StoryView;->b(Lcom/twitter/android/client/b;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method final a(Ljava/util/HashMap;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/fd;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/StoryView;

    iget-object v2, v0, Lcom/twitter/android/widget/StoryView;->l:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/twitter/android/fd;->f:Lcom/twitter/android/client/b;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/StoryView;->a(Lcom/twitter/android/client/b;)V

    goto :goto_6

    :cond_20
    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 11

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iget-object v0, p0, Lcom/twitter/android/fd;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory;

    :goto_1b
    if-nez v0, :cond_44

    new-instance v0, Lcom/twitter/android/api/TwitterStory;

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/android/util/x;->a([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/api/TwitterStory$Data;

    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/util/x;->a([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/TwitterStory$SocialProof;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/api/TwitterStory;-><init>(IDLcom/twitter/android/api/TwitterStory$Data;Lcom/twitter/android/api/TwitterStory$SocialProof;)V

    iget-object v2, p0, Lcom/twitter/android/fd;->g:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_44
    check-cast p1, Lcom/twitter/android/widget/StoryView;

    packed-switch v1, :pswitch_data_66

    :goto_49
    return-void

    :pswitch_4a
    iget-object v1, p0, Lcom/twitter/android/fd;->f:Lcom/twitter/android/client/b;

    invoke-virtual {p1, v1, v0}, Lcom/twitter/android/widget/StoryView;->a(Lcom/twitter/android/client/b;Lcom/twitter/android/api/TwitterStory;)V

    :goto_4f
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/widget/StoryView;->b(II)V

    goto :goto_49

    :pswitch_5b
    iget-object v1, p0, Lcom/twitter/android/fd;->f:Lcom/twitter/android/client/b;

    iget v2, p0, Lcom/twitter/android/fd;->i:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/twitter/android/widget/StoryView;->a(Lcom/twitter/android/client/b;Lcom/twitter/android/api/TwitterStory;I)V

    goto :goto_4f

    :cond_63
    move-object v0, v2

    goto :goto_1b

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_5b
    .end packed-switch
.end method

.method public final getItemViewType(I)I
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/twitter/android/fd;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_14

    const/4 v0, -0x1

    :goto_f
    return v0

    :pswitch_10
    const/4 v0, 0x0

    goto :goto_f

    :pswitch_12
    move v0, v1

    goto :goto_f

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_12
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_28

    const/4 v1, 0x0

    :goto_e
    return-object v1

    :pswitch_f
    const v1, 0x7f03004d

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_16
    iget-object v2, p0, Lcom/twitter/android/fd;->h:Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/StoryView;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :pswitch_1f
    const v1, 0x7f03004e

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_16

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1f
    .end packed-switch
.end method
