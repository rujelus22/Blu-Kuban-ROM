.class public Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;
.super Lcom/coremobility/integration/app/CM_ListForm;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Lcom/coremobility/app/vnotes/hs;

.field private c:Ljava/util/Vector;

.field private d:Lcom/coremobility/app/vnotes/ht;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_ListForm;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->b:Lcom/coremobility/app/vnotes/hs;

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->e:I

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->f:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->finish()V

    :cond_7
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_7} :catch_12

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_40

    move v0, v1

    :goto_11
    return v0

    :catch_12
    move-exception v0

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad menuInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_11

    :pswitch_2e
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->b:Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/hs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    const/4 v0, 0x1

    goto :goto_11

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c011a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->setTitle(I)V

    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->setContentView(I)V

    if-nez p1, :cond_1a

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_1a
    if-eqz p1, :cond_70

    const-string v0, "vnote_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->e:I

    const-string v0, "vnote_dir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->f:I

    :goto_2c
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->c:Ljava/util/Vector;

    if-nez v0, :cond_47

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->c:Ljava/util/Vector;

    :cond_47
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->b:Lcom/coremobility/app/vnotes/hs;

    if-nez v0, :cond_5c

    new-instance v0, Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->c:Ljava/util/Vector;

    const v3, 0x7f030048

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/coremobility/app/vnotes/hs;-><init>(Landroid/content/Context;Ljava/util/Vector;IZZ)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->b:Lcom/coremobility/app/vnotes/hs;

    :cond_5c
    new-instance v0, Lcom/coremobility/app/vnotes/ht;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/ht;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->d:Lcom/coremobility/app/vnotes/ht;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->b:Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_70
    const/4 v0, 0x6

    const-string v1, "Could not get extras bundle"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->b:Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/hs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_1b
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_1f} :catch_2c

    move-result-object v0

    if-eqz v0, :cond_46

    move v0, v1

    :goto_23
    if-nez v0, :cond_2b

    const v0, 0x7f0c0032

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_2b
    return-void

    :catch_2c
    move-exception v0

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad menuInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_46
    move v0, v2

    goto :goto_23
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 6

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onResume()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const-string v2, ""

    const-string v1, ""

    const/4 v0, 0x0

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->f:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_22

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v0

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    :cond_22
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->g()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7f

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ", "

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->g(Ljava/lang/String;)Lcom/coremobility/app/vnotes/hr;

    move-result-object v0

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->c:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_4d
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->f:I

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->e:I

    invoke-static {p0, v0, v3}, Lcom/coremobility/app/vnotes/cq;->d(Landroid/content/Context;II)Lcom/coremobility/k/de;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/coremobility/k/de;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/coremobility/k/de;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_60
    const/4 v0, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Vnote Info was found for ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2c

    :cond_7f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a0

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ", "

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->g(Ljava/lang/String;)Lcom/coremobility/app/vnotes/hr;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->c:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    :cond_a0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->c:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->d:Lcom/coremobility/app/vnotes/ht;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->b:Lcom/coremobility/app/vnotes/hs;

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->b:Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hs;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->b:Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hs;->notifyDataSetInvalidated()V

    :cond_b5
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "vnote_id"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "vnote_dir"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .registers 2

    const/16 v0, 0x6b

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_ListForm;->b(I)V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->e()V

    return-void
.end method
