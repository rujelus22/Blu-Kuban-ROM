.class public Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;
.super Lcom/coremobility/integration/app/CM_ListForm;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static n:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Ljava/util/ArrayList;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/CheckBox;

.field private f:Z

.field private g:I

.field private h:Lcom/coremobility/app/vnotes/fx;

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:Lcom/coremobility/app/vnotes/be;

.field private o:Lcom/coremobility/app/vnotes/bi;

.field private p:Landroid/os/Handler;

.field private q:Landroid/widget/CursorAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->n:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_ListForm;-><init>()V

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->i:I

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j:I

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->k:Z

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/coremobility/app/vnotes/fz;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/fz;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->p:Landroid/os/Handler;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I
    .registers 2

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;I)I
    .registers 2

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->i:I

    return p1
.end method

.method public static a()Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;
    .registers 1

    sget-object v0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->n:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    return-object v0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;I)I
    .registers 2

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->l:I

    return p1
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->p:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .registers 10

    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->f:Z

    if-eqz v0, :cond_4f

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b()Ljava/lang/String;

    move-result-object v3

    :goto_f
    const-string v5, "out_timestamp DESC,_id DESC"

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a:[Ljava/lang/String;

    sget-object v1, Lcom/coremobility/integration/app/k;->r:Landroid/net/Uri;

    const-string v0, "onResume query started"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "onResume query ended"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    if-nez v1, :cond_5d

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g:I

    if-ne v1, v6, :cond_52

    new-instance v1, Lcom/coremobility/app/vnotes/gj;

    const v2, 0x7f030042

    invoke-direct {v1, p0, v2, v0, v6}, Lcom/coremobility/app/vnotes/gj;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    :goto_3b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_40
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->o:Lcom/coremobility/app/vnotes/bi;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d()V

    return-void

    :cond_4f
    const-string v3, "dir_id=3 AND _id=record_id AND file_type!=2 AND is_deleted=0"

    goto :goto_f

    :cond_52
    new-instance v1, Lcom/coremobility/app/vnotes/fy;

    const v2, 0x7f03002e

    invoke-direct {v1, p0, v2, v0, v6}, Lcom/coremobility/app/vnotes/fy;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    goto :goto_3b

    :cond_5d
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_40
.end method

.method static synthetic d(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I
    .registers 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j:I

    return v0
.end method

.method private d()V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_34

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    move v0, v1

    :goto_1c
    if-ge v0, v2, :cond_2d

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_29
    return-void

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2d
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->e:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_29

    :cond_34
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->e:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->e:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_29
.end method

.method static synthetic e(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->removeDialog(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->m()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->l()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->f()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->k()V

    :cond_1f
    return-void
.end method

.method private f()V
    .registers 12

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v6

    move v3, v2

    :goto_1d
    if-ge v3, v5, :cond_45

    move v1, v2

    :goto_20
    if-ge v1, v6, :cond_41

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    :cond_41
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1d

    :cond_45
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d()V

    return-void
.end method

.method static synthetic f(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V
    .registers 4

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j:I

    if-lez v0, :cond_24

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d000a

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j:I

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00be

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private g()I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    move v1, v0

    :goto_a
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1d

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    add-int/lit8 v1, v1, 0x1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1d
    return v1
.end method

.method static synthetic g(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I
    .registers 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->i:I

    return v0
.end method

.method static synthetic h(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)Landroid/widget/CursorAdapter;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method private h()V
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->k:Z

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j:I

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->showDialog(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->p:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic i(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I
    .registers 3

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j:I

    return v0
.end method

.method private i()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->k()V

    return-void
.end method

.method private j()V
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_14

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->k()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d()V

    return-void
.end method

.method static synthetic j(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V
    .registers 1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j()V

    return-void
.end method

.method private k()V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    move v0, v1

    :goto_a
    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_20

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1c
    return-void

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_20
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1c
.end method

.method static synthetic k(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V
    .registers 1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->l()V

    return-void
.end method

.method private l()V
    .registers 5

    const/4 v3, 0x6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string v0, "onCancel query started"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    const-string v0, "onCancel query ended"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->o:Lcom/coremobility/app/vnotes/bi;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d()V

    return-void
.end method

.method static synthetic l(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V
    .registers 1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h()V

    return-void
.end method

.method private m()V
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_13

    iput-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b:Ljava/util/ArrayList;

    :goto_12
    return-void

    :cond_13
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move v1, v0

    :goto_1e
    if-ge v1, v4, :cond_3c

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_39

    new-instance v6, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v7, v1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v5, :cond_3c

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_3c
    iput-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b:Ljava/util/ArrayList;

    goto :goto_12
.end method

.method private n()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->p:Landroid/os/Handler;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->removeDialog(I)V

    :cond_15
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onBackPressed()V

    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->overridePendingTransition(II)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    const/4 v0, 0x6

    const-string v1, "dialog got canceled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->l()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_86

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    const-string v0, ""

    move v1, v2

    :goto_10
    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_43

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_43
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_58
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6e

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->k()Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->l:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->showDialog(I)V

    :cond_6e
    :goto_6e
    return-void

    :cond_6f
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->n()Z

    move-result v0

    if-nez v0, :cond_80

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->l:I

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->showDialog(I)V

    goto :goto_6e

    :cond_80
    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->i:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h()V

    goto :goto_6e

    :cond_86
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_8e

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->onBackPressed()V

    goto :goto_6e

    :cond_8e
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->e:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_6e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->i()V

    goto :goto_6e

    :cond_9e
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j()V

    goto :goto_6e
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->o:Lcom/coremobility/app/vnotes/bi;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->o:Lcom/coremobility/app/vnotes/bi;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->b(I)V

    :cond_e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->n:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    new-instance v0, Lcom/coremobility/app/vnotes/be;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/be;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->m:Lcom/coremobility/app/vnotes/be;

    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->setContentView(I)V

    if-nez p1, :cond_1c

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_1c
    if-eqz p1, :cond_8c

    const-string v0, "vnotedir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g:I

    const-string v0, "usefilter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->f:Z

    :goto_2e
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->c:Landroid/widget/Button;

    const v1, 0x7f0c0216

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->k()V

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/bi;

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g:I

    invoke-direct {v1, p0, v0, v2}, Lcom/coremobility/app/vnotes/bi;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->o:Lcom/coremobility/app/vnotes/bi;

    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->e:Landroid/widget/CheckBox;

    return-void

    :cond_8c
    const/4 v0, 0x6

    const-string v1, "Could not get extras bundle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g:I

    goto :goto_2e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8

    const v5, 0x7f0c0146

    const v4, 0x7f0c005d

    const v3, 0x7f0c00f2

    const/4 v2, 0x0

    const v1, 0x1080027

    packed-switch p1, :pswitch_data_112

    :pswitch_10
    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->m:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, p0, p1, v1}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILcom/coremobility/app/vnotes/be;)Landroid/app/AlertDialog;

    move-result-object v0

    :goto_1a
    return-object v0

    :pswitch_1b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0143

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1a

    :pswitch_3a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1a

    :pswitch_56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0148

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1a

    :pswitch_73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c021a

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/ga;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/ga;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1a

    :pswitch_a3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c021d

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/gd;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/gd;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005e

    new-instance v2, Lcom/coremobility/app/vnotes/gc;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/gc;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/gb;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/gb;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1a

    :pswitch_e1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0219

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/coremobility/app/vnotes/ge;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/ge;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/coremobility/app/vnotes/gf;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/gf;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a:Landroid/app/ProgressDialog;

    goto/16 :goto_1a

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_73
        :pswitch_10
        :pswitch_10
        :pswitch_a3
        :pswitch_1b
        :pswitch_3a
        :pswitch_56
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->isFinishing()Z

    move-result v0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onDestroy()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->n()V

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_21
    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->n:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    :cond_24
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h:Lcom/coremobility/app/vnotes/fx;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h:Lcom/coremobility/app/vnotes/fx;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h:Lcom/coremobility/app/vnotes/fx;

    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/fx;

    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_31
    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h:Lcom/coremobility/app/vnotes/fx;

    return-void

    :cond_34
    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_31
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->k()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h:Lcom/coremobility/app/vnotes/fx;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h:Lcom/coremobility/app/vnotes/fx;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h:Lcom/coremobility/app/vnotes/fx;

    :cond_10
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 9

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onPause()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->n()V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    new-instance v3, Lcom/coremobility/integration/h/c;

    invoke-direct {v3, v1}, Lcom/coremobility/integration/h/c;-><init>(B)V

    move v0, v1

    :goto_22
    if-ge v0, v2, :cond_6a

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g:I

    invoke-static {v4, v5}, Lcom/coremobility/integration/app/j;->b(II)V

    iget v5, v3, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v5, :cond_5c

    const/4 v5, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VnoteResumeSend "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "failed with error:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/coremobility/integration/h/c;->a:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_5f
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->m()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    :cond_6a
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 8

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->c()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->f()V

    :cond_a
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->m:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, p1, p2}, Lcom/coremobility/app/vnotes/be;->a(ILandroid/app/Dialog;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g()I

    move-result v0

    packed-switch p1, :pswitch_data_82

    :goto_16
    :pswitch_16
    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILandroid/app/Dialog;)V

    :goto_1c
    return-void

    :pswitch_1d
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f0d000f

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->l:I

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cf;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :pswitch_2c
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f0d0010

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->l:I

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cf;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :pswitch_3b
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0d0020

    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :pswitch_48
    check-cast p2, Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g()I

    move-result v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j:I

    if-lez v1, :cond_63

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0021

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j:I

    invoke-static {v1, v2, v0, v3, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v0

    :goto_5f
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_63
    const v0, 0x7f0c021e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5f

    :pswitch_6b
    move-object v0, p2

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d001f

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_16

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_3b
        :pswitch_16
        :pswitch_16
        :pswitch_48
        :pswitch_1d
        :pswitch_2c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "vnotedir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g:I

    const-string v0, "usefilter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->f:Z

    const-string v0, "checkedlist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b:Ljava/util/ArrayList;

    return-void
.end method

.method protected onResume()V
    .registers 9

    const/4 v7, 0x6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onResume()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v0, p0, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    const-string v0, "populating list"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->c()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->f()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_6c

    new-instance v2, Lcom/coremobility/integration/h/c;

    invoke-direct {v2, v1}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    move v0, v1

    :goto_30
    if-ge v0, v3, :cond_6c

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->q:Landroid/widget/CursorAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g:I

    invoke-static {v4, v5}, Lcom/coremobility/integration/app/j;->a(II)V

    iget v5, v2, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v5, :cond_69

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VnoteSuspendSend "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "failed with error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/coremobility/integration/h/c;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_6c
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->m()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "vnotedir"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "usefilter"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->m()V

    const-string v0, "checkedlist"

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onStart()V
    .registers 2

    const/16 v0, 0x70

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_ListForm;->b(I)V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->e()V

    return-void
.end method
