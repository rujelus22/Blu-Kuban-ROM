.class public Lcom/anddoes/launcher/Folder;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/anddoes/launcher/bw;
.implements Lcom/anddoes/launcher/cb;
.implements Lcom/anddoes/launcher/de;


# static fields
.field private static N:Ljava/lang/String;

.field private static O:Ljava/lang/String;


# instance fields
.field private A:[I

.field private B:[I

.field private C:[I

.field private D:Lcom/anddoes/launcher/g;

.field private E:Lcom/anddoes/launcher/g;

.field private F:I

.field private G:Landroid/graphics/Rect;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Landroid/view/inputmethod/InputMethodManager;

.field private P:I

.field private Q:Landroid/view/ActionMode$Callback;

.field protected a:Lcom/anddoes/launcher/bm;

.field protected b:Lcom/anddoes/launcher/Launcher;

.field protected c:Lcom/anddoes/launcher/dd;

.field protected d:Lcom/anddoes/launcher/CellLayout;

.field protected e:Landroid/widget/ScrollView;

.field f:Z

.field g:Z

.field h:Lcom/anddoes/launcher/FolderEditText;

.field i:Lcom/anddoes/launcher/io;

.field j:Lcom/anddoes/launcher/io;

.field private k:I

.field private final l:Landroid/view/LayoutInflater;

.field private final m:Lcom/anddoes/launcher/ds;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Lcom/anddoes/launcher/FolderIcon;

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/graphics/Rect;

.field private v:Landroid/graphics/Rect;

.field private w:Ljava/util/ArrayList;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Lcom/anddoes/launcher/kj;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/Folder;->n:I

    .line 84
    iput v3, p0, Lcom/anddoes/launcher/Folder;->o:I

    .line 85
    iput-boolean v1, p0, Lcom/anddoes/launcher/Folder;->p:Z

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->u:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->v:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->w:Ljava/util/ArrayList;

    .line 94
    iput-boolean v1, p0, Lcom/anddoes/launcher/Folder;->f:Z

    .line 97
    iput-boolean v1, p0, Lcom/anddoes/launcher/Folder;->g:Z

    .line 98
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->A:[I

    .line 99
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->B:[I

    .line 100
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->C:[I

    .line 101
    new-instance v0, Lcom/anddoes/launcher/g;

    invoke-direct {v0}, Lcom/anddoes/launcher/g;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->D:Lcom/anddoes/launcher/g;

    .line 102
    new-instance v0, Lcom/anddoes/launcher/g;

    invoke-direct {v0}, Lcom/anddoes/launcher/g;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->E:Lcom/anddoes/launcher/g;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->G:Landroid/graphics/Rect;

    .line 105
    iput-boolean v1, p0, Lcom/anddoes/launcher/Folder;->H:Z

    .line 106
    iput-boolean v1, p0, Lcom/anddoes/launcher/Folder;->I:Z

    .line 107
    iput-boolean v1, p0, Lcom/anddoes/launcher/Folder;->J:Z

    .line 108
    iput-boolean v1, p0, Lcom/anddoes/launcher/Folder;->K:Z

    .line 111
    iput-boolean v1, p0, Lcom/anddoes/launcher/Folder;->L:Z

    .line 202
    new-instance v0, Lcom/anddoes/launcher/cm;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/cm;-><init>(Lcom/anddoes/launcher/Folder;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->Q:Landroid/view/ActionMode$Callback;

    .line 650
    new-instance v0, Lcom/anddoes/launcher/cn;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/cn;-><init>(Lcom/anddoes/launcher/Folder;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->i:Lcom/anddoes/launcher/io;

    .line 760
    new-instance v0, Lcom/anddoes/launcher/co;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/co;-><init>(Lcom/anddoes/launcher/Folder;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->j:Lcom/anddoes/launcher/io;

    .line 129
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 130
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->l:Landroid/view/LayoutInflater;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherApplication;->a()Lcom/anddoes/launcher/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->m:Lcom/anddoes/launcher/ds;

    .line 133
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 134
    const v0, 0x7f0b0022

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Folder;->r:I

    .line 135
    const v0, 0x7f0b0023

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Folder;->s:I

    .line 136
    const v0, 0x7f0b0024

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Folder;->t:I

    .line 137
    iget v0, p0, Lcom/anddoes/launcher/Folder;->r:I

    if-ltz v0, :cond_a6

    iget v0, p0, Lcom/anddoes/launcher/Folder;->s:I

    if-ltz v0, :cond_a6

    iget v0, p0, Lcom/anddoes/launcher/Folder;->t:I

    if-gez v0, :cond_b9

    .line 138
    :cond_a6
    invoke-static {}, Lcom/anddoes/launcher/LauncherModel;->c()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Folder;->r:I

    .line 139
    invoke-static {}, Lcom/anddoes/launcher/LauncherModel;->d()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Folder;->s:I

    .line 140
    iget v0, p0, Lcom/anddoes/launcher/Folder;->r:I

    iget v2, p0, Lcom/anddoes/launcher/Folder;->s:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/anddoes/launcher/Folder;->t:I

    .line 143
    :cond_b9
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->mContext:Landroid/content/Context;

    .line 144
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 143
    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->M:Landroid/view/inputmethod/InputMethodManager;

    .line 146
    const v0, 0x7f0b001d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Folder;->k:I

    .line 148
    sget-object v0, Lcom/anddoes/launcher/Folder;->N:Ljava/lang/String;

    if-nez v0, :cond_db

    .line 149
    const v0, 0x7f06024e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anddoes/launcher/Folder;->N:Ljava/lang/String;

    .line 151
    :cond_db
    sget-object v0, Lcom/anddoes/launcher/Folder;->O:Ljava/lang/String;

    if-nez v0, :cond_e8

    .line 152
    const v0, 0x7f06028f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anddoes/launcher/Folder;->O:Ljava/lang/String;

    .line 154
    :cond_e8
    check-cast p1, Lcom/anddoes/launcher/Launcher;

    iput-object p1, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    .line 161
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/Folder;->setFocusableInTouchMode(Z)V

    .line 162
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Folder;->P:I

    .line 163
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/anddoes/launcher/Folder;
    .registers 4
    .parameter

    .prologue
    .line 402
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 403
    const v1, 0x7f03002e

    const/4 v2, 0x0

    .line 402
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/Folder;

    return-object v0
.end method

.method private a(I)V
    .registers 15
    .parameter

    .prologue
    .line 847
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Folder;->b(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 849
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->h()I

    move-result v1

    .line 850
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->i()I

    move-result v0

    .line 871
    :cond_11
    const/4 v3, 0x0

    move v4, v1

    move v12, v0

    move v0, v3

    move v3, v12

    .line 853
    :goto_16
    if-eqz v0, :cond_39

    .line 873
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v4, v3}, Lcom/anddoes/launcher/CellLayout;->a(II)V

    .line 874
    const/4 v0, 0x2

    new-array v11, v0, [I

    if-nez v2, :cond_d4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Folder;->b(Z)Ljava/util/ArrayList;

    move-result-object v0

    move-object v9, v0

    :goto_28
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v10, v0

    :goto_2f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v10, v0, :cond_7a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Folder;->f:Z

    .line 875
    return-void

    .line 856
    :cond_39
    mul-int v0, v4, v3

    if-ge v0, p1, :cond_5c

    .line 858
    if-le v4, v3, :cond_43

    iget v0, p0, Lcom/anddoes/launcher/Folder;->s:I

    if-lt v3, v0, :cond_58

    .line 859
    :cond_43
    iget v0, p0, Lcom/anddoes/launcher/Folder;->r:I

    if-ge v4, v0, :cond_58

    .line 860
    add-int/lit8 v1, v4, 0x1

    move v0, v3

    .line 864
    :goto_4a
    if-nez v0, :cond_4e

    .line 865
    add-int/lit8 v0, v0, 0x1

    .line 871
    :cond_4e
    :goto_4e
    if-ne v1, v4, :cond_11

    if-ne v0, v3, :cond_11

    const/4 v3, 0x1

    move v4, v1

    move v12, v0

    move v0, v3

    move v3, v12

    goto :goto_16

    .line 862
    :cond_58
    add-int/lit8 v0, v3, 0x1

    move v1, v4

    goto :goto_4a

    .line 866
    :cond_5c
    add-int/lit8 v0, v3, -0x1

    mul-int/2addr v0, v4

    if-lt v0, p1, :cond_6c

    if-lt v3, v4, :cond_6c

    .line 867
    const/4 v0, 0x0

    add-int/lit8 v1, v3, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v4

    goto :goto_4e

    .line 868
    :cond_6c
    add-int/lit8 v0, v4, -0x1

    mul-int/2addr v0, v3

    if-lt v0, p1, :cond_d7

    .line 869
    const/4 v0, 0x0

    add-int/lit8 v1, v4, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v3

    goto :goto_4e

    .line 874
    :cond_7a
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v11}, Lcom/anddoes/launcher/CellLayout;->a([I)Z

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    const/4 v0, 0x0

    aget v0, v11, v0

    iput v0, v8, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    const/4 v0, 0x1

    aget v0, v11, v0

    iput v0, v8, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/ec;

    iget v0, v1, Lcom/anddoes/launcher/ec;->l:I

    const/4 v2, 0x0

    aget v2, v11, v2

    if-ne v0, v2, :cond_ab

    iget v0, v1, Lcom/anddoes/launcher/ec;->m:I

    const/4 v2, 0x1

    aget v2, v11, v2

    if-eq v0, v2, :cond_c3

    :cond_ab
    const/4 v0, 0x0

    aget v0, v11, v0

    iput v0, v1, Lcom/anddoes/launcher/ec;->l:I

    const/4 v0, 0x1

    aget v0, v11, v0

    iput v0, v1, Lcom/anddoes/launcher/ec;->m:I

    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-wide v2, v2, Lcom/anddoes/launcher/dd;->h:J

    const/4 v4, 0x0

    iget v5, v1, Lcom/anddoes/launcher/ec;->l:I

    iget v6, v1, Lcom/anddoes/launcher/ec;->m:I

    invoke-static/range {v0 .. v6}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIII)V

    :cond_c3
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    const/4 v2, -0x1

    iget-wide v3, v1, Lcom/anddoes/launcher/ec;->h:J

    long-to-int v3, v3

    const/4 v5, 0x1

    move-object v1, v7

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;IILcom/anddoes/launcher/CellLayout$LayoutParams;Z)Z

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_2f

    :cond_d4
    move-object v9, v2

    goto/16 :goto_28

    :cond_d7
    move v0, v3

    move v1, v4

    goto/16 :goto_4e
.end method

.method static synthetic a(Lcom/anddoes/launcher/Folder;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/anddoes/launcher/Folder;->n:I

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/Folder;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Folder;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/Folder;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1043
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/DragLayer;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->a:Lcom/anddoes/launcher/bm;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/bm;->b(Lcom/anddoes/launcher/cb;)V

    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->clearFocus()V

    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->q:Lcom/anddoes/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/anddoes/launcher/FolderIcon;->requestFocus()Z

    iget-boolean v0, p0, Lcom/anddoes/launcher/Folder;->p:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Folder;->b(I)V

    iput-boolean v1, p0, Lcom/anddoes/launcher/Folder;->p:Z

    :cond_25
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->j()I

    move-result v0

    if-gt v0, v2, :cond_36

    iget-boolean v0, p0, Lcom/anddoes/launcher/Folder;->H:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/anddoes/launcher/Folder;->J:Z

    if-nez v0, :cond_39

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Folder;->c(Z)V

    :cond_36
    :goto_36
    iput-boolean v1, p0, Lcom/anddoes/launcher/Folder;->J:Z

    return-void

    :cond_39
    iget-boolean v0, p0, Lcom/anddoes/launcher/Folder;->H:Z

    if-eqz v0, :cond_36

    iput-boolean v2, p0, Lcom/anddoes/launcher/Folder;->I:Z

    goto :goto_36
.end method

.method static synthetic a(Lcom/anddoes/launcher/Folder;[I[I)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 664
    const/4 v2, 0x0

    const/high16 v1, 0x41f0

    const/4 v0, 0x1

    aget v0, p2, v0

    const/4 v3, 0x1

    aget v3, p1, v3

    if-gt v0, v3, :cond_1b

    const/4 v0, 0x1

    aget v0, p2, v0

    const/4 v3, 0x1

    aget v3, p1, v3

    if-ne v0, v3, :cond_3d

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v3, 0x0

    aget v3, p1, v3

    if-le v0, v3, :cond_3d

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    if-eqz v0, :cond_8f

    const/4 v0, 0x0

    aget v0, p1, v0

    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/anddoes/launcher/CellLayout;->h()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3f

    const/4 v0, 0x1

    :goto_2c
    if-eqz v0, :cond_41

    const/4 v0, 0x1

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    :goto_33
    move v9, v0

    move v0, v1

    move v1, v2

    move v2, v9

    :goto_37
    const/4 v3, 0x1

    aget v3, p2, v3

    if-le v2, v3, :cond_45

    :cond_3c
    return-void

    :cond_3d
    const/4 v0, 0x0

    goto :goto_1c

    :cond_3f
    const/4 v0, 0x0

    goto :goto_2c

    :cond_41
    const/4 v0, 0x1

    aget v0, p1, v0

    goto :goto_33

    :cond_45
    const/4 v3, 0x1

    aget v3, p1, v3

    if-ne v2, v3, :cond_61

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    :goto_4f
    const/4 v4, 0x1

    aget v4, p2, v4

    if-ge v2, v4, :cond_63

    iget-object v4, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v4}, Lcom/anddoes/launcher/CellLayout;->h()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_5c
    if-le v3, v4, :cond_67

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_61
    const/4 v3, 0x0

    goto :goto_4f

    :cond_63
    const/4 v4, 0x0

    aget v4, p2, v4

    goto :goto_5c

    :cond_67
    iget-object v5, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v5, v3, v2}, Lcom/anddoes/launcher/CellLayout;->c(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    const/4 v7, 0x0

    aget v7, p1, v7

    const/4 v8, 0x1

    aget v8, p1, v8

    invoke-virtual {v6, v5, v7, v8, v1}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;III)Z

    move-result v5

    if-eqz v5, :cond_8c

    const/4 v5, 0x0

    aput v3, p1, v5

    const/4 v5, 0x1

    aput v2, p1, v5

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    float-to-double v5, v0

    const-wide v7, 0x3feccccccccccccdL

    mul-double/2addr v5, v7

    double-to-float v0, v5

    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_8f
    const/4 v0, 0x0

    aget v0, p1, v0

    if-nez v0, :cond_bf

    const/4 v0, 0x1

    :goto_95
    if-eqz v0, :cond_c1

    const/4 v0, 0x1

    aget v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    :goto_9c
    move v9, v0

    move v0, v2

    move v2, v9

    :goto_9f
    const/4 v3, 0x1

    aget v3, p2, v3

    if-lt v2, v3, :cond_3c

    const/4 v3, 0x1

    aget v3, p1, v3

    if-ne v2, v3, :cond_c5

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    :goto_ae
    const/4 v4, 0x1

    aget v4, p2, v4

    if-le v2, v4, :cond_ce

    const/4 v4, 0x0

    :goto_b4
    move v9, v1

    move v1, v0

    move v0, v9

    :goto_b7
    if-ge v3, v4, :cond_d2

    add-int/lit8 v2, v2, -0x1

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_9f

    :cond_bf
    const/4 v0, 0x0

    goto :goto_95

    :cond_c1
    const/4 v0, 0x1

    aget v0, p1, v0

    goto :goto_9c

    :cond_c5
    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/anddoes/launcher/CellLayout;->h()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_ae

    :cond_ce
    const/4 v4, 0x0

    aget v4, p2, v4

    goto :goto_b4

    :cond_d2
    iget-object v5, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v5, v3, v2}, Lcom/anddoes/launcher/CellLayout;->c(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    const/4 v7, 0x0

    aget v7, p1, v7

    const/4 v8, 0x1

    aget v8, p1, v8

    invoke-virtual {v6, v5, v7, v8, v1}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;III)Z

    move-result v5

    if-eqz v5, :cond_f7

    const/4 v5, 0x0

    aput v3, p1, v5

    const/4 v5, 0x1

    aput v2, p1, v5

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    float-to-double v5, v0

    const-wide v7, 0x3feccccccccccccdL

    mul-double/2addr v5, v7

    double-to-float v0, v5

    :cond_f7
    add-int/lit8 v3, v3, -0x1

    goto :goto_b7
.end method

.method static synthetic a(Lcom/anddoes/launcher/Folder;)[I
    .registers 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->C:[I

    return-object v0
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 943
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Folder;->a(I)V

    .line 945
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;

    .line 946
    if-nez v0, :cond_17

    .line 947
    new-instance v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/anddoes/launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 948
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->c:Z

    .line 949
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    :cond_17
    invoke-direct {p0}, Lcom/anddoes/launcher/Folder;->l()V

    .line 952
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 500
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 501
    const/16 v0, 0x20

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 502
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Folder;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 503
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 507
    :cond_25
    return-void
.end method

.method static synthetic b(Lcom/anddoes/launcher/Folder;)[I
    .registers 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->A:[I

    return-object v0
.end method

.method static synthetic c(Lcom/anddoes/launcher/Folder;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private c(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private c(Z)V
    .registers 11
    .parameter

    .prologue
    .line 1069
    const/4 v1, 0x0

    .line 1071
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->j()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 1072
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-object v0, v0, Lcom/anddoes/launcher/dd;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ec;

    move-object v1, v0

    .line 1076
    :cond_14
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-wide v2, v2, Lcom/anddoes/launcher/dd;->j:J

    .line 1077
    iget-object v4, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget v4, v4, Lcom/anddoes/launcher/dd;->k:I

    .line 1076
    invoke-virtual {v0, v2, v3, v4}, Lcom/anddoes/launcher/Launcher;->a(JI)Lcom/anddoes/launcher/CellLayout;

    move-result-object v7

    .line 1078
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->q:Lcom/anddoes/launcher/FolderIcon;

    invoke-virtual {v7, v0}, Lcom/anddoes/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1079
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->q:Lcom/anddoes/launcher/FolderIcon;

    instance-of v0, v0, Lcom/anddoes/launcher/cb;

    if-eqz v0, :cond_36

    .line 1080
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->a:Lcom/anddoes/launcher/bm;

    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->q:Lcom/anddoes/launcher/FolderIcon;

    check-cast v0, Lcom/anddoes/launcher/cb;

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/bm;->b(Lcom/anddoes/launcher/cb;)V

    .line 1082
    :cond_36
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/dd;)V

    .line 1083
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    invoke-static {v0, v2}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    .line 1085
    if-eqz v1, :cond_5b

    .line 1086
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    .line 1087
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-wide v2, v2, Lcom/anddoes/launcher/dd;->j:J

    iget-object v4, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget v4, v4, Lcom/anddoes/launcher/dd;->k:I

    iget-object v5, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget v5, v5, Lcom/anddoes/launcher/dd;->l:I

    iget-object v6, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget v6, v6, Lcom/anddoes/launcher/dd;->m:I

    .line 1086
    invoke-static/range {v0 .. v6}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIII)V

    .line 1091
    :cond_5b
    if-eqz v1, :cond_88

    if-eqz p1, :cond_88

    .line 1092
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    .line 1093
    check-cast v1, Lcom/anddoes/launcher/kj;

    .line 1092
    invoke-virtual {v0, v7, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/ViewGroup;Lcom/anddoes/launcher/kj;)Landroid/view/View;

    move-result-object v1

    .line 1095
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-wide v2, v2, Lcom/anddoes/launcher/dd;->j:J

    .line 1096
    iget-object v4, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget v4, v4, Lcom/anddoes/launcher/dd;->k:I

    iget-object v5, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget v5, v5, Lcom/anddoes/launcher/dd;->l:I

    iget-object v6, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget v6, v6, Lcom/anddoes/launcher/dd;->m:I

    iget-object v7, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget v7, v7, Lcom/anddoes/launcher/dd;->n:I

    .line 1097
    iget-object v8, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget v8, v8, Lcom/anddoes/launcher/dd;->o:I

    .line 1095
    invoke-virtual/range {v0 .. v8}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIII)V

    .line 1099
    :cond_88
    return-void
.end method

.method private c(Lcom/anddoes/launcher/ec;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 596
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 597
    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    iget v4, p1, Lcom/anddoes/launcher/ec;->n:I

    iget v5, p1, Lcom/anddoes/launcher/ec;->o:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/anddoes/launcher/CellLayout;->a([III)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 598
    aget v1, v2, v1

    iput v1, p1, Lcom/anddoes/launcher/ec;->l:I

    .line 599
    aget v1, v2, v0

    iput v1, p1, Lcom/anddoes/launcher/ec;->m:I

    .line 602
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method static synthetic d(Lcom/anddoes/launcher/Folder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 509
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1, v1}, Lcom/anddoes/launcher/CellLayout;->c(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_c
    return-void
.end method

.method private d(Lcom/anddoes/launcher/ec;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 607
    check-cast p1, Lcom/anddoes/launcher/kj;

    .line 608
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->l:Landroid/view/LayoutInflater;

    .line 609
    const v2, 0x7f030007

    .line 608
    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 611
    new-instance v2, Lcom/anddoes/launcher/cj;

    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->m:Lcom/anddoes/launcher/ds;

    invoke-virtual {p1, v3}, Lcom/anddoes/launcher/kj;->a(Lcom/anddoes/launcher/ds;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/anddoes/launcher/cj;-><init>(Landroid/graphics/Bitmap;)V

    .line 610
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 612
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v2, v2, Lcom/anddoes/launcher/preference/f;->ag:Z

    if-nez v2, :cond_2b

    .line 613
    iget-object v2, p1, Lcom/anddoes/launcher/kj;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    :cond_2b
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    invoke-virtual {v2, v1}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;)V

    .line 616
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const-string v3, "folder_item_text_color"

    invoke-virtual {v2, v1, v3}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 619
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 626
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    iget v3, p1, Lcom/anddoes/launcher/kj;->l:I

    iget v4, p1, Lcom/anddoes/launcher/kj;->m:I

    invoke-virtual {v2, v3, v4}, Lcom/anddoes/launcher/CellLayout;->c(II)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_6c

    .line 627
    iget v2, p1, Lcom/anddoes/launcher/kj;->l:I

    if-ltz v2, :cond_6c

    iget v2, p1, Lcom/anddoes/launcher/kj;->m:I

    if-ltz v2, :cond_6c

    .line 628
    iget v2, p1, Lcom/anddoes/launcher/kj;->l:I

    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/anddoes/launcher/CellLayout;->h()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 629
    iget v2, p1, Lcom/anddoes/launcher/kj;->m:I

    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/anddoes/launcher/CellLayout;->i()I

    move-result v3

    if-lt v2, v3, :cond_74

    .line 630
    :cond_6c
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Folder;->c(Lcom/anddoes/launcher/ec;)Z

    move-result v2

    if-nez v2, :cond_74

    move v5, v0

    .line 641
    :goto_73
    return v5

    .line 635
    :cond_74
    new-instance v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    iget v0, p1, Lcom/anddoes/launcher/kj;->l:I

    .line 636
    iget v2, p1, Lcom/anddoes/launcher/kj;->m:I

    iget v3, p1, Lcom/anddoes/launcher/kj;->n:I

    iget v6, p1, Lcom/anddoes/launcher/kj;->o:I

    .line 635
    invoke-direct {v4, v0, v2, v3, v6}, Lcom/anddoes/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 637
    new-instance v0, Lcom/anddoes/launcher/df;

    invoke-direct {v0}, Lcom/anddoes/launcher/df;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 639
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    const/4 v2, -0x1

    iget-wide v6, p1, Lcom/anddoes/launcher/kj;->h:J

    long-to-int v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;IILcom/anddoes/launcher/CellLayout$LayoutParams;Z)Z

    goto :goto_73
.end method

.method public static i()Z
    .registers 1

    .prologue
    .line 878
    const/4 v0, 0x0

    return v0
.end method

.method private l()V
    .registers 12

    .prologue
    const/high16 v10, 0x3f80

    .line 882
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;

    .line 884
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->t()I

    move-result v2

    add-int v3, v1, v2

    .line 885
    invoke-direct {p0}, Lcom/anddoes/launcher/Folder;->m()I

    move-result v4

    .line 887
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    const v2, 0x7f080032

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/DragLayer;

    .line 889
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->q:Lcom/anddoes/launcher/FolderIcon;

    iget-object v5, p0, Lcom/anddoes/launcher/Folder;->G:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 891
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->G:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 892
    iget-object v5, p0, Lcom/anddoes/launcher/Folder;->G:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 893
    div-int/lit8 v6, v3, 0x2

    sub-int v6, v2, v6

    .line 894
    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v5, v2

    .line 898
    :try_start_42
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v2

    if-nez v2, :cond_4f

    .line 940
    :cond_4e
    :goto_4e
    return-void

    .line 901
    :cond_4f
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anddoes/launcher/Workspace;->N()Lcom/anddoes/launcher/CellLayout;

    move-result-object v2

    .line 902
    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v2

    .line 903
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 904
    invoke-virtual {v1, v2, v7}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 908
    iget v1, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 909
    iget v2, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v2, v8

    sub-int/2addr v2, v3

    .line 908
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 910
    iget v1, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 911
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    .line 910
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 914
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-lt v3, v8, :cond_99

    .line 915
    iget v2, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v8, v3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v8

    .line 917
    :cond_99
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-lt v4, v8, :cond_a9

    .line 918
    iget v1, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    .line 921
    :cond_a9
    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v2

    add-int/2addr v6, v7

    .line 922
    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v5, v1

    add-int/2addr v5, v7

    .line 923
    int-to-float v7, v6

    invoke-virtual {p0, v7}, Lcom/anddoes/launcher/Folder;->setPivotX(F)V

    .line 924
    int-to-float v7, v5

    invoke-virtual {p0, v7}, Lcom/anddoes/launcher/Folder;->setPivotY(F)V

    .line 925
    iget-object v7, p0, Lcom/anddoes/launcher/Folder;->q:Lcom/anddoes/launcher/FolderIcon;

    invoke-virtual {v7}, Lcom/anddoes/launcher/FolderIcon;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    int-to-float v6, v6

    mul-float/2addr v6, v10

    int-to-float v8, v3

    div-float/2addr v6, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 926
    iget-object v7, p0, Lcom/anddoes/launcher/Folder;->q:Lcom/anddoes/launcher/FolderIcon;

    invoke-virtual {v7}, Lcom/anddoes/launcher/FolderIcon;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v5, v5

    mul-float/2addr v5, v10

    int-to-float v8, v4

    div-float/2addr v5, v8

    mul-float/2addr v5, v7

    float-to-int v5, v5

    .line 927
    iget-object v7, p0, Lcom/anddoes/launcher/Folder;->q:Lcom/anddoes/launcher/FolderIcon;

    int-to-float v6, v6

    invoke-virtual {v7, v6}, Lcom/anddoes/launcher/FolderIcon;->setPivotX(F)V

    .line 928
    iget-object v6, p0, Lcom/anddoes/launcher/Folder;->q:Lcom/anddoes/launcher/FolderIcon;

    int-to-float v5, v5

    invoke-virtual {v6, v5}, Lcom/anddoes/launcher/FolderIcon;->setPivotY(F)V

    .line 930
    iget v5, p0, Lcom/anddoes/launcher/Folder;->o:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f1

    .line 931
    iput v3, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->width:I

    .line 932
    iput v4, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->height:I

    .line 933
    iput v2, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->a:I

    .line 934
    iput v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->b:I

    goto/16 :goto_4e

    .line 940
    :catch_ee
    move-exception v0

    goto/16 :goto_4e

    .line 936
    :cond_f1
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->u:Landroid/graphics/Rect;

    add-int/2addr v3, v2

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_f8} :catch_ee

    goto/16 :goto_4e
.end method

.method private m()I
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 955
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->u()I

    move-result v2

    .line 956
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getHeight()I

    move-result v0

    .line 957
    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v3}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anddoes/launcher/Workspace;->getPaddingTop()I

    move-result v3

    .line 956
    sub-int/2addr v0, v3

    .line 958
    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v3}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anddoes/launcher/Workspace;->getPaddingBottom()I

    move-result v3

    .line 956
    sub-int v3, v0, v3

    .line 959
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getPaddingBottom()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    .line 962
    iget v4, p0, Lcom/anddoes/launcher/Folder;->F:I

    .line 961
    add-int/2addr v0, v4

    .line 964
    iget v4, p0, Lcom/anddoes/launcher/Folder;->F:I

    add-int/2addr v2, v4

    if-lt v2, v3, :cond_5a

    .line 965
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->a(I)I

    move-result v0

    :goto_40
    iget v2, p0, Lcom/anddoes/launcher/Folder;->F:I

    add-int/2addr v0, v2

    if-lt v0, v3, :cond_5b

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/CellLayout;->a(I)I

    move-result v0

    .line 966
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 967
    iget v1, p0, Lcom/anddoes/launcher/Folder;->F:I

    .line 966
    add-int/2addr v0, v1

    .line 970
    :cond_5a
    return v0

    .line 965
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->a(I)I

    move-result v0

    goto :goto_40
.end method

.method private n()V
    .registers 4

    .prologue
    .line 1104
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->j()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Folder;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1105
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->j()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/Folder;->c(I)Landroid/view/View;

    .line 1106
    if-eqz v0, :cond_39

    .line 1107
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/FolderEditText;->setNextFocusDownId(I)V

    .line 1108
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/FolderEditText;->setNextFocusRightId(I)V

    .line 1109
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/FolderEditText;->setNextFocusLeftId(I)V

    .line 1110
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/FolderEditText;->setNextFocusUpId(I)V

    .line 1112
    :cond_39
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/anddoes/launcher/cc;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 786
    if-eqz p3, :cond_3a

    .line 787
    iget-boolean v0, p0, Lcom/anddoes/launcher/Folder;->I:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/anddoes/launcher/Folder;->K:Z

    if-nez v0, :cond_10

    .line 788
    invoke-direct {p0, v1}, Lcom/anddoes/launcher/Folder;->c(Z)V

    .line 803
    :cond_10
    :goto_10
    if-eq p1, p0, :cond_22

    .line 804
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->E:Lcom/anddoes/launcher/g;

    invoke-virtual {v0}, Lcom/anddoes/launcher/g;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 805
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->E:Lcom/anddoes/launcher/g;

    invoke-virtual {v0}, Lcom/anddoes/launcher/g;->a()V

    .line 806
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->g()V

    .line 809
    :cond_22
    iput-boolean v4, p0, Lcom/anddoes/launcher/Folder;->I:Z

    .line 810
    iput-boolean v4, p0, Lcom/anddoes/launcher/Folder;->H:Z

    .line 811
    iput-boolean v4, p0, Lcom/anddoes/launcher/Folder;->K:Z

    .line 812
    iput-object v2, p0, Lcom/anddoes/launcher/Folder;->y:Lcom/anddoes/launcher/kj;

    .line 813
    iput-object v2, p0, Lcom/anddoes/launcher/Folder;->z:Landroid/view/View;

    .line 814
    iput-boolean v4, p0, Lcom/anddoes/launcher/Folder;->g:Z

    .line 819
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Folder;->b(Z)Ljava/util/ArrayList;

    move-result-object v8

    move v7, v4

    :goto_33
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v7, v0, :cond_4a

    .line 820
    return-void

    .line 792
    :cond_3a
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->q:Lcom/anddoes/launcher/FolderIcon;

    invoke-virtual {v0, p2}, Lcom/anddoes/launcher/FolderIcon;->a(Lcom/anddoes/launcher/cc;)V

    .line 798
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->E:Lcom/anddoes/launcher/g;

    invoke-virtual {v0}, Lcom/anddoes/launcher/g;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 799
    iput-boolean v1, p0, Lcom/anddoes/launcher/Folder;->J:Z

    goto :goto_10

    .line 819
    :cond_4a
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/ec;

    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-wide v2, v2, Lcom/anddoes/launcher/dd;->h:J

    iget v5, v1, Lcom/anddoes/launcher/ec;->l:I

    iget v6, v1, Lcom/anddoes/launcher/ec;->m:I

    invoke-static/range {v0 .. v6}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIII)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_33
.end method

.method final a(Lcom/anddoes/launcher/FolderIcon;)V
    .registers 2
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/anddoes/launcher/Folder;->q:Lcom/anddoes/launcher/FolderIcon;

    .line 334
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/bm;)V
    .registers 2
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/anddoes/launcher/Folder;->a:Lcom/anddoes/launcher/bm;

    .line 330
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/cc;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 1116
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/anddoes/launcher/y;

    if-eqz v0, :cond_6a

    .line 1118
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/y;

    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->a()Lcom/anddoes/launcher/kj;

    move-result-object v0

    .line 1119
    iput v5, v0, Lcom/anddoes/launcher/kj;->n:I

    .line 1120
    iput v5, v0, Lcom/anddoes/launcher/kj;->o:I

    move-object v6, v0

    .line 1128
    :goto_15
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->y:Lcom/anddoes/launcher/kj;

    if-ne v6, v0, :cond_64

    .line 1129
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/kj;

    .line 1130
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->z:Landroid/view/View;

    .line 1131
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1130
    check-cast v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 1132
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->C:[I

    aget v1, v1, v9

    iput v1, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iput v1, v0, Lcom/anddoes/launcher/kj;->l:I

    .line 1133
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->C:[I

    aget v1, v1, v5

    iput v1, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    iput v1, v0, Lcom/anddoes/launcher/kj;->l:I

    .line 1134
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->z:Landroid/view/View;

    const/4 v2, -0x1

    iget-wide v7, v6, Lcom/anddoes/launcher/kj;->h:J

    long-to-int v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;IILcom/anddoes/launcher/CellLayout$LayoutParams;Z)Z

    .line 1136
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v0}, Lcom/anddoes/launcher/bx;->c()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1137
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v0

    iget-object v1, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    .line 1138
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->z:Landroid/view/View;

    .line 1137
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/bx;Landroid/view/View;)V

    .line 1142
    :goto_59
    iput-boolean v5, p0, Lcom/anddoes/launcher/Folder;->f:Z

    .line 1143
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Folder;->a(I)V

    .line 1144
    iput-boolean v5, p0, Lcom/anddoes/launcher/Folder;->g:Z

    .line 1146
    :cond_64
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    invoke-virtual {v0, v6}, Lcom/anddoes/launcher/dd;->a(Lcom/anddoes/launcher/ec;)V

    .line 1147
    return-void

    .line 1122
    :cond_6a
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/kj;

    move-object v6, v0

    goto :goto_15

    .line 1140
    :cond_70
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->z:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_59
.end method

.method final a(Lcom/anddoes/launcher/dd;)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 351
    iput-object p1, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    .line 352
    iget-object v3, p1, Lcom/anddoes/launcher/dd;->c:Ljava/util/ArrayList;

    .line 353
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/Folder;->b(I)V

    move v1, v0

    move v2, v0

    .line 356
    :goto_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_47

    .line 366
    invoke-direct {p0, v2}, Lcom/anddoes/launcher/Folder;->b(I)V

    .line 373
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Folder;->f:Z

    .line 379
    invoke-direct {p0}, Lcom/anddoes/launcher/Folder;->n()V

    .line 380
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/dd;->a(Lcom/anddoes/launcher/de;)V

    .line 382
    sget-object v0, Lcom/anddoes/launcher/Folder;->N:Ljava/lang/String;

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-object v1, v1, Lcom/anddoes/launcher/dd;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 383
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-object v1, v1, Lcom/anddoes/launcher/dd;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :goto_46
    return-void

    .line 357
    :cond_47
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/kj;

    .line 358
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Folder;->d(Lcom/anddoes/launcher/ec;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 359
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :goto_56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 361
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 373
    :cond_5d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ec;

    .line 374
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/dd;->b(Lcom/anddoes/launcher/ec;)V

    .line 375
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {v2, v0}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    goto :goto_20

    .line 385
    :cond_6e
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46
.end method

.method public final a(Lcom/anddoes/launcher/ec;)V
    .registers 9
    .parameter

    .prologue
    .line 1150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Folder;->f:Z

    .line 1155
    iget-boolean v0, p0, Lcom/anddoes/launcher/Folder;->g:Z

    if-eqz v0, :cond_8

    .line 1165
    :goto_7
    return-void

    .line 1157
    :cond_8
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Folder;->c(Lcom/anddoes/launcher/ec;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1159
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->j()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Folder;->b(I)V

    .line 1160
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Folder;->c(Lcom/anddoes/launcher/ec;)Z

    .line 1162
    :cond_1a
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Folder;->d(Lcom/anddoes/launcher/ec;)Z

    .line 1163
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-wide v2, v1, Lcom/anddoes/launcher/dd;->h:J

    const/4 v4, 0x0

    .line 1164
    iget v5, p1, Lcom/anddoes/launcher/ec;->l:I

    iget v6, p1, Lcom/anddoes/launcher/ec;->m:I

    move-object v1, p1

    .line 1163
    invoke-static/range {v0 .. v6}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIII)V

    goto :goto_7
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter

    .prologue
    .line 1204
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 391
    return-void
.end method

.method public final a(Z)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x2

    const v4, 0x3f666666

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 521
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/anddoes/launcher/DragLayer;

    if-nez v0, :cond_10

    .line 578
    :goto_f
    return-void

    .line 525
    :cond_10
    iget v0, p0, Lcom/anddoes/launcher/Folder;->o:I

    if-ne v0, v7, :cond_51

    .line 526
    const-string v0, "alpha"

    new-array v1, v7, [F

    .line 527
    aput v9, v1, v8

    .line 526
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 529
    const-string v1, "scaleX"

    new-array v2, v7, [F

    aput v4, v2, v8

    .line 528
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 531
    const-string v2, "scaleY"

    new-array v3, v7, [F

    aput v4, v3, v8

    .line 530
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 532
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v8

    aput-object v1, v3, v7

    .line 533
    aput-object v2, v3, v10

    .line 532
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 561
    :goto_3f
    new-instance v1, Lcom/anddoes/launcher/cs;

    invoke-direct {v1, p0, p1}, Lcom/anddoes/launcher/cs;-><init>(Lcom/anddoes/launcher/Folder;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 576
    iget v1, p0, Lcom/anddoes/launcher/Folder;->k:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 577
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_f

    .line 535
    :cond_51
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;

    .line 537
    const-string v1, "width"

    new-array v2, v7, [I

    .line 538
    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->v:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    aput v3, v2, v8

    .line 537
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 539
    const-string v2, "height"

    new-array v3, v7, [I

    .line 540
    iget-object v4, p0, Lcom/anddoes/launcher/Folder;->v:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    aput v4, v3, v8

    .line 539
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 541
    const-string v3, "x"

    new-array v4, v7, [I

    .line 542
    iget-object v5, p0, Lcom/anddoes/launcher/Folder;->v:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aput v5, v4, v8

    .line 541
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 543
    const-string v4, "y"

    new-array v5, v7, [I

    .line 544
    iget-object v6, p0, Lcom/anddoes/launcher/Folder;->v:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    aput v6, v5, v8

    .line 543
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 545
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v8

    aput-object v2, v5, v7

    aput-object v3, v5, v10

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-static {v0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 546
    new-instance v1, Lcom/anddoes/launcher/cr;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/cr;-><init>(Lcom/anddoes/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 552
    const-string v1, "alpha"

    new-array v2, v7, [F

    .line 553
    aput v9, v2, v8

    .line 552
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 555
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v8

    .line 554
    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 556
    iget v2, p0, Lcom/anddoes/launcher/Folder;->k:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 557
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_3f
.end method

.method public final a([I)V
    .registers 3
    .parameter

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;[I)V

    .line 1231
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/anddoes/launcher/Folder;->L:Z

    return v0
.end method

.method public final b(Z)Ljava/util/ArrayList;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1211
    iget-boolean v0, p0, Lcom/anddoes/launcher/Folder;->f:Z

    if-eqz v0, :cond_15

    .line 1212
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 1213
    :goto_b
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->i()I

    move-result v0

    if-lt v1, v0, :cond_18

    .line 1224
    iput-boolean v2, p0, Lcom/anddoes/launcher/Folder;->f:Z

    .line 1226
    :cond_15
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->w:Ljava/util/ArrayList;

    return-object v0

    :cond_18
    move v3, v2

    .line 1214
    :goto_19
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->h()I

    move-result v0

    if-lt v3, v0, :cond_25

    .line 1213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 1215
    :cond_25
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v3, v1}, Lcom/anddoes/launcher/CellLayout;->c(II)Landroid/view/View;

    move-result-object v4

    .line 1216
    if-eqz v4, :cond_3e

    .line 1217
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/kj;

    .line 1218
    iget-object v5, p0, Lcom/anddoes/launcher/Folder;->y:Lcom/anddoes/launcher/kj;

    if-ne v0, v5, :cond_39

    if-eqz p1, :cond_3e

    .line 1219
    :cond_39
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    :cond_3e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_19
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->M:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 275
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->c()V

    .line 276
    return-void
.end method

.method public final b(Lcom/anddoes/launcher/cc;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 645
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->B:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 646
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->B:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 647
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->E:Lcom/anddoes/launcher/g;

    invoke-virtual {v0}, Lcom/anddoes/launcher/g;->a()V

    .line 648
    return-void
.end method

.method public final b(Lcom/anddoes/launcher/ec;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1168
    iput-boolean v5, p0, Lcom/anddoes/launcher/Folder;->f:Z

    .line 1173
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->y:Lcom/anddoes/launcher/kj;

    if-ne p1, v0, :cond_9

    .line 1185
    :cond_8
    :goto_8
    return-void

    :cond_9
    move v0, v1

    .line 1175
    :goto_a
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->i()I

    move-result v2

    if-lt v0, v2, :cond_28

    const/4 v0, 0x0

    .line 1176
    :goto_13
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1177
    iget v0, p0, Lcom/anddoes/launcher/Folder;->n:I

    if-ne v0, v5, :cond_45

    .line 1178
    iput-boolean v5, p0, Lcom/anddoes/launcher/Folder;->p:Z

    .line 1182
    :goto_1e
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->j()I

    move-result v0

    if-gt v0, v5, :cond_8

    .line 1183
    invoke-direct {p0, v5}, Lcom/anddoes/launcher/Folder;->c(Z)V

    goto :goto_8

    :cond_28
    move v2, v1

    .line 1175
    :goto_29
    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/anddoes/launcher/CellLayout;->h()I

    move-result v3

    if-lt v2, v3, :cond_34

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_34
    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v3, v2, v0}, Lcom/anddoes/launcher/CellLayout;->c(II)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_42

    move-object v0, v3

    goto :goto_13

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1180
    :cond_45
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Folder;->b(I)V

    goto :goto_1e
.end method

.method public final c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    sget-object v1, Lcom/anddoes/launcher/Folder;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v0}, Lcom/anddoes/launcher/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/dd;->a(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    invoke-static {v1, v2}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    .line 289
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->mContext:Landroid/content/Context;

    const v2, 0x7f060298

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 291
    aput-object v0, v2, v3

    .line 290
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Folder;->b(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->requestFocus()Z

    .line 299
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v0}, Lcom/anddoes/launcher/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v3, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 300
    iput-boolean v3, p0, Lcom/anddoes/launcher/Folder;->L:Z

    .line 301
    return-void
.end method

.method public final c(Lcom/anddoes/launcher/cc;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 710
    iget v0, p1, Lcom/anddoes/launcher/cc;->a:I

    iget v1, p1, Lcom/anddoes/launcher/cc;->b:I

    iget v2, p1, Lcom/anddoes/launcher/cc;->c:I

    iget v4, p1, Lcom/anddoes/launcher/cc;->d:I

    .line 711
    iget-object v5, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    .line 710
    const/4 v6, 0x2

    new-array v6, v6, [F

    sub-int/2addr v0, v2

    sub-int/2addr v1, v4

    invoke-virtual {v5}, Lcom/anddoes/launcher/bx;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v6, v7

    invoke-virtual {v5}, Lcom/anddoes/launcher/bx;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, v6, v3

    .line 712
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    aget v1, v6, v7

    float-to-int v1, v1

    aget v2, v6, v3

    float-to-int v2, v2

    .line 713
    iget-object v4, p0, Lcom/anddoes/launcher/Folder;->e:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v5, p0, Lcom/anddoes/launcher/Folder;->A:[I

    move v4, v3

    .line 712
    invoke-virtual/range {v0 .. v5}, Lcom/anddoes/launcher/CellLayout;->b(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->A:[I

    .line 715
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->A:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->B:[I

    aget v1, v1, v7

    if-ne v0, v1, :cond_59

    .line 716
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->A:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->B:[I

    aget v1, v1, v3

    if-eq v0, v1, :cond_7c

    .line 717
    :cond_59
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->D:Lcom/anddoes/launcher/g;

    invoke-virtual {v0}, Lcom/anddoes/launcher/g;->a()V

    .line 718
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->D:Lcom/anddoes/launcher/g;

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->i:Lcom/anddoes/launcher/io;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/g;->a(Lcom/anddoes/launcher/io;)V

    .line 719
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->D:Lcom/anddoes/launcher/g;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/g;->a(J)V

    .line 720
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->B:[I

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->A:[I

    aget v1, v1, v7

    aput v1, v0, v7

    .line 721
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->B:[I

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->A:[I

    aget v1, v1, v3

    aput v1, v0, v3

    .line 723
    :cond_7c
    aget v0, v6, v3

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->e:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/anddoes/launcher/Folder;->P:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_96

    .line 724
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->e:Landroid/widget/ScrollView;

    iget v1, p0, Lcom/anddoes/launcher/Folder;->P:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v7, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 728
    :cond_95
    :goto_95
    return-void

    .line 725
    :cond_96
    aget v0, v6, v3

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->e:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getTop()I

    move-result v1

    iget v2, p0, Lcom/anddoes/launcher/Folder;->P:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_95

    .line 726
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->e:Landroid/widget/ScrollView;

    iget v1, p0, Lcom/anddoes/launcher/Folder;->P:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v7, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_95
.end method

.method public final d()Landroid/view/View;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    return-object v0
.end method

.method public final d(Lcom/anddoes/launcher/cc;)V
    .registers 5
    .parameter

    .prologue
    .line 778
    iget-boolean v0, p1, Lcom/anddoes/launcher/cc;->e:Z

    if-nez v0, :cond_12

    .line 779
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->E:Lcom/anddoes/launcher/g;

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->j:Lcom/anddoes/launcher/io;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/g;->a(Lcom/anddoes/launcher/io;)V

    .line 780
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->E:Lcom/anddoes/launcher/g;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/g;->a(J)V

    .line 782
    :cond_12
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->D:Lcom/anddoes/launcher/g;

    invoke-virtual {v0}, Lcom/anddoes/launcher/g;->a()V

    .line 783
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method final e()Lcom/anddoes/launcher/dd;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    return-object v0
.end method

.method public final e(Lcom/anddoes/launcher/cc;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 590
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/ec;

    .line 591
    iget v0, v0, Lcom/anddoes/launcher/ec;->i:I

    .line 592
    if-eqz v0, :cond_b

    if-ne v0, v1, :cond_d

    :cond_b
    move v0, v1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final f()V
    .registers 11

    .prologue
    const v2, 0x3f4ccccd

    const/4 v4, 0x0

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 434
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/anddoes/launcher/DragLayer;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;

    iget v1, p0, Lcom/anddoes/launcher/Folder;->o:I

    if-ne v1, v7, :cond_2e

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Folder;->setScaleX(F)V

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Folder;->setScaleY(F)V

    invoke-virtual {p0, v4}, Lcom/anddoes/launcher/Folder;->setAlpha(F)V

    :goto_23
    iput v8, p0, Lcom/anddoes/launcher/Folder;->n:I

    .line 436
    :cond_25
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/anddoes/launcher/DragLayer;

    if-nez v0, :cond_5d

    .line 497
    :goto_2d
    return-void

    .line 434
    :cond_2e
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->q:Lcom/anddoes/launcher/FolderIcon;

    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->v:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->v:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->width:I

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->v:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->height:I

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->a:I

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->b:I

    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v4}, Lcom/anddoes/launcher/CellLayout;->setAlpha(F)V

    goto :goto_23

    .line 440
    :cond_5d
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;

    .line 442
    invoke-direct {p0}, Lcom/anddoes/launcher/Folder;->l()V

    .line 443
    iget v1, p0, Lcom/anddoes/launcher/Folder;->o:I

    if-ne v1, v7, :cond_a8

    .line 444
    const-string v0, "alpha"

    new-array v1, v7, [F

    .line 445
    aput v9, v1, v8

    .line 444
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 447
    const-string v1, "scaleX"

    new-array v2, v7, [F

    aput v9, v2, v8

    .line 446
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 449
    const-string v2, "scaleY"

    new-array v3, v7, [F

    aput v9, v3, v8

    .line 448
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 450
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v8

    aput-object v1, v3, v7

    const/4 v0, 0x2

    .line 451
    aput-object v2, v3, v0

    .line 450
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 477
    :goto_96
    new-instance v1, Lcom/anddoes/launcher/cq;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/cq;-><init>(Lcom/anddoes/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 495
    iget v1, p0, Lcom/anddoes/launcher/Folder;->k:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 496
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2d

    .line 453
    :cond_a8
    const-string v1, "width"

    new-array v2, v7, [I

    .line 454
    iget-object v3, p0, Lcom/anddoes/launcher/Folder;->u:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    aput v3, v2, v8

    .line 453
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 455
    const-string v2, "height"

    new-array v3, v7, [I

    .line 456
    iget-object v4, p0, Lcom/anddoes/launcher/Folder;->u:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    aput v4, v3, v8

    .line 455
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 457
    const-string v3, "x"

    new-array v4, v7, [I

    .line 458
    iget-object v5, p0, Lcom/anddoes/launcher/Folder;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aput v5, v4, v8

    .line 457
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 459
    const-string v4, "y"

    new-array v5, v7, [I

    .line 460
    iget-object v6, p0, Lcom/anddoes/launcher/Folder;->u:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    aput v6, v5, v8

    .line 459
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 461
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v8

    aput-object v2, v5, v7

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-static {v0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 462
    new-instance v1, Lcom/anddoes/launcher/cp;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/cp;-><init>(Lcom/anddoes/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    const-string v1, "alpha"

    new-array v2, v7, [F

    .line 469
    aput v9, v2, v8

    .line 468
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 471
    iget-object v2, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v8

    .line 470
    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 472
    iget v2, p0, Lcom/anddoes/launcher/Folder;->k:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 473
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 474
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_96
.end method

.method public final g()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 767
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 768
    iput-object v1, p0, Lcom/anddoes/launcher/Folder;->y:Lcom/anddoes/launcher/kj;

    .line 769
    iput-object v1, p0, Lcom/anddoes/launcher/Folder;->z:Landroid/view/View;

    .line 770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Folder;->g:Z

    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Folder;->p:Z

    .line 772
    return-void
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/anddoes/launcher/Folder;->H:Z

    if-eqz v0, :cond_7

    .line 834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Folder;->K:Z

    .line 836
    :cond_7
    return-void
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final k()V
    .registers 1

    .prologue
    .line 1200
    invoke-direct {p0}, Lcom/anddoes/launcher/Folder;->n()V

    .line 1201
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 221
    instance-of v1, v0, Lcom/anddoes/launcher/kj;

    if-eqz v1, :cond_3f

    .line 223
    check-cast v0, Lcom/anddoes/launcher/kj;

    .line 224
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 225
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 226
    iget-object v2, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    aget v4, v1, v6

    aget v5, v1, v8

    aget v6, v1, v6

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v1, v1, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v1, v7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 226
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 228
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 229
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;)V

    .line 232
    :cond_3f
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    const/4 v0, 0x6

    if-ne p2, v0, :cond_8

    .line 305
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->b()V

    .line 306
    const/4 v0, 0x1

    .line 308
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 168
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const-string v1, "folder_background_holo"

    invoke-virtual {v0, p0, v2, v1}, Lcom/anddoes/launcher/c/l;->b(Landroid/view/View;ILjava/lang/String;)V

    .line 169
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->e:Landroid/widget/ScrollView;

    .line 170
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->e:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 171
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    .line 172
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v2, v2}, Lcom/anddoes/launcher/CellLayout;->a(II)V

    .line 173
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/ba;->setMotionEventSplittingEnabled(Z)V

    .line 174
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/FolderEditText;

    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    .line 175
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;)V

    .line 176
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    const-string v2, "folder_title_color"

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->af:Z

    if-eqz v0, :cond_74

    .line 179
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderEditText;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Folder;->F:I

    .line 200
    :goto_73
    return-void

    .line 182
    :cond_74
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/FolderEditText;->a(Lcom/anddoes/launcher/Folder;)V

    .line 183
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/FolderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    sget v0, Landroid/view/View$MeasureSpec;->UNSPECIFIED:I

    .line 189
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v1, v0, v0}, Lcom/anddoes/launcher/FolderEditText;->measure(II)V

    .line 190
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v0}, Lcom/anddoes/launcher/FolderEditText;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Folder;->F:I

    .line 193
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->Q:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 194
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 195
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 196
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    invoke-virtual {v1}, Lcom/anddoes/launcher/FolderEditText;->getInputType()I

    move-result v1

    .line 197
    const/high16 v2, 0x8

    or-int/2addr v1, v2

    .line 198
    or-int/lit16 v1, v1, 0x2000

    .line 196
    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderEditText;->setInputType(I)V

    goto :goto_73
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    if-ne p1, v0, :cond_18

    if-eqz p2, :cond_18

    .line 1235
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->b:Z

    if-nez v0, :cond_19

    .line 1236
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Folder;->L:Z

    .line 1241
    :cond_18
    :goto_18
    return-void

    .line 1238
    :cond_19
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->b()V

    goto :goto_18
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 236
    instance-of v1, v0, Lcom/anddoes/launcher/kj;

    if-eqz v1, :cond_6e

    .line 237
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->b:Z

    if-nez v1, :cond_6e

    .line 238
    check-cast v0, Lcom/anddoes/launcher/kj;

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1c

    move v0, v2

    .line 261
    :goto_1b
    return v0

    .line 242
    :cond_1c
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->ak:Z

    if-eqz v1, :cond_2f

    .line 243
    iget-object v4, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/ec;

    invoke-virtual {v4, v1, p1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/ec;Landroid/view/View;)V

    .line 246
    :cond_2f
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;)V

    .line 247
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;Lcom/anddoes/launcher/bw;)V

    move-object v1, p1

    .line 248
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/anddoes/launcher/Folder;->x:Landroid/graphics/drawable/Drawable;

    .line 250
    iput-object v0, p0, Lcom/anddoes/launcher/Folder;->y:Lcom/anddoes/launcher/kj;

    .line 251
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->C:[I

    iget v4, v0, Lcom/anddoes/launcher/kj;->l:I

    aput v4, v1, v2

    .line 252
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->C:[I

    iget v0, v0, Lcom/anddoes/launcher/kj;->m:I

    aput v0, v1, v3

    .line 253
    iput-object p1, p0, Lcom/anddoes/launcher/Folder;->z:Landroid/view/View;

    .line 255
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->y:Lcom/anddoes/launcher/kj;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/dd;->b(Lcom/anddoes/launcher/ec;)V

    .line 257
    iput-boolean v3, p0, Lcom/anddoes/launcher/Folder;->H:Z

    .line 258
    iput-boolean v2, p0, Lcom/anddoes/launcher/Folder;->K:Z

    :cond_6e
    move v0, v3

    .line 261
    goto :goto_1b
.end method

.method protected onMeasure(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 985
    iget-object v0, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->t()I

    move-result v0

    .line 986
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/anddoes/launcher/CellLayout;->u()I

    move-result v1

    .line 988
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 989
    invoke-direct {p0}, Lcom/anddoes/launcher/Folder;->m()I

    move-result v3

    .line 991
    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getPaddingTop()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0}, Lcom/anddoes/launcher/Folder;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 992
    iget v5, p0, Lcom/anddoes/launcher/Folder;->F:I

    .line 991
    sub-int/2addr v4, v5

    .line 994
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 996
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 998
    iget-object v5, p0, Lcom/anddoes/launcher/Folder;->e:Landroid/widget/ScrollView;

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v5, v0, v4}, Landroid/widget/ScrollView;->measure(II)V

    .line 1000
    iget-object v4, p0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v4, v0, v1}, Lcom/anddoes/launcher/CellLayout;->measure(II)V

    .line 1002
    iget-object v1, p0, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    .line 1003
    iget v4, p0, Lcom/anddoes/launcher/Folder;->F:I

    .line 1002
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lcom/anddoes/launcher/FolderEditText;->measure(II)V

    .line 1004
    invoke-virtual {p0, v2, v3}, Lcom/anddoes/launcher/Folder;->setMeasuredDimension(II)V

    .line 1005
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public final s()Z
    .registers 2

    .prologue
    .line 839
    const/4 v0, 0x1

    return v0
.end method
