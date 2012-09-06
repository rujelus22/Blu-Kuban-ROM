.class public Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;
.super Landroid/widget/GridView;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/GridView;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    return-void
.end method

.method private a(IIZ)V
    .registers 8

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-eqz p3, :cond_1f

    if-nez p1, :cond_1f

    :try_start_7
    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/clipboardview/d;

    iget-boolean v1, v0, Lcom/estrongs/android/pop/clipboardview/d;->e:Z

    if-nez v1, :cond_15

    iget-boolean v1, v0, Lcom/estrongs/android/pop/clipboardview/d;->f:Z

    if-nez v1, :cond_1e

    :cond_15
    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    check-cast v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(JLcom/estrongs/android/pop/clipboardview/d;)Z

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    if-nez p3, :cond_23

    if-eqz p1, :cond_27

    :cond_23
    if-eqz p3, :cond_38

    if-ne p1, v0, :cond_38

    :cond_27
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g()V

    goto :goto_1e

    :catch_36
    move-exception v0

    goto :goto_1e

    :cond_38
    if-nez p3, :cond_3c

    if-eq p1, v0, :cond_40

    :cond_3c
    if-eqz p3, :cond_48

    if-ne p1, v1, :cond_48

    :cond_40
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f()V

    goto :goto_1e

    :cond_48
    if-nez p3, :cond_4c

    if-eq p1, v1, :cond_50

    :cond_4c
    if-eqz p3, :cond_58

    if-ne p1, v2, :cond_58

    :cond_50
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q()Z

    goto :goto_1e

    :cond_58
    if-nez p3, :cond_5c

    if-eq p1, v2, :cond_61

    :cond_5c
    if-eqz p3, :cond_1e

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    :cond_61
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h()V
    :try_end_68
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_68} :catch_36

    goto :goto_1e
.end method

.method static synthetic a(Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a(IIZ)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1

    invoke-virtual {p0, p0}, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, p0}, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/clipboardview/d;

    iget-boolean v1, v0, Lcom/estrongs/android/pop/clipboardview/d;->e:Z

    if-nez v1, :cond_e

    iget-boolean v1, v0, Lcom/estrongs/android/pop/clipboardview/d;->f:Z

    if-nez v1, :cond_17

    :cond_e
    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    check-cast v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(JLcom/estrongs/android/pop/clipboardview/d;)Z

    :cond_17
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, p3}, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/clipboardview/d;

    const/4 v1, 0x0

    iget-boolean v2, v0, Lcom/estrongs/android/pop/clipboardview/d;->e:Z

    if-nez v2, :cond_17

    iget-boolean v0, v0, Lcom/estrongs/android/pop/clipboardview/d;->f:Z

    if-nez v0, :cond_90

    :cond_17
    const/4 v0, 0x1

    :goto_18
    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    const v2, 0x7f090065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    const v3, 0x7f090064

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    const v4, 0x7f090066

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    const v5, 0x7f0900a2

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    const v6, 0x7f09009a

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v0, :cond_80

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v2, v1, v7

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v6, v1, v2

    const/4 v2, 0x3

    aput-object v5, v1, v2

    const/4 v2, 0x4

    aput-object v4, v1, v2

    :goto_59
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->a:Landroid/content/Context;

    const v4, 0x7f090063

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/clipboardview/c;

    invoke-direct {v3, p0, p3, v0}, Lcom/estrongs/android/pop/clipboardview/c;-><init>(Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;IZ)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x1

    goto :goto_7

    :cond_80
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    goto :goto_59

    :cond_90
    move v0, v1

    goto :goto_18
.end method
