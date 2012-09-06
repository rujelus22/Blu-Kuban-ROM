.class public Laaq;
.super Lnh;
.source "DocListView.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/DocListView;

.field final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/DocListView;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILsB;I)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Laaq;->a:Lcom/google/android/apps/docs/view/DocListView;

    iput p8, p0, Laaq;->b:I

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lnh;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILsB;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 591
    iget-object v0, p0, Laaq;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    .line 593
    :goto_e
    sget v2, LcS;->group_title_horizontal_rule:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 594
    if-eqz v3, :cond_1c

    .line 595
    if-eqz v0, :cond_2c

    move v2, v1

    :goto_19
    invoke-static {v3, v2}, LabE;->b(Landroid/view/View;I)V

    .line 598
    :cond_1c
    sget v2, LcS;->entry_horizontal_rule:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 599
    if-eqz v2, :cond_29

    .line 600
    if-eqz v0, :cond_2f

    :goto_26
    invoke-static {v2, v1}, LabE;->b(Landroid/view/View;I)V

    .line 602
    :cond_29
    return-void

    :cond_2a
    move v0, v1

    .line 591
    goto :goto_e

    .line 595
    :cond_2c
    iget v2, p0, Laaq;->b:I

    goto :goto_19

    .line 600
    :cond_2f
    iget v1, p0, Laaq;->b:I

    goto :goto_26
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 558
    invoke-super {p0, p1, p2, p3}, Lnh;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 560
    invoke-static {p3}, LMj;->c(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laaq;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v2}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 561
    sget v2, LcS;->doc_entry_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 562
    if-eqz v2, :cond_1d

    .line 565
    invoke-virtual {v2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 568
    :cond_1d
    invoke-direct {p0, p1}, Laaq;->a(Landroid/view/View;)V

    .line 570
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 571
    invoke-virtual {p0, v1}, Laaq;->getItemId(I)J

    move-result-wide v2

    .line 572
    const/4 v4, 0x2

    new-array v4, v4, [I

    sget v5, LcS;->preview_button:I

    aput v5, v4, v0

    const/4 v5, 0x1

    sget v6, LcS;->doc_entry_row_root:I

    aput v6, v4, v5

    .line 573
    new-instance v5, Laar;

    invoke-direct {v5, p0, v1, v2, v3}, Laar;-><init>(Laaq;IJ)V

    .line 582
    array-length v1, v4

    :goto_3a
    if-ge v0, v1, :cond_4a

    aget v2, v4, v0

    .line 583
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 584
    if-eqz v2, :cond_47

    .line 585
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 588
    :cond_4a
    return-void
.end method
