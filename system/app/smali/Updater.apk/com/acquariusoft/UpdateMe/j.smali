.class final Lcom/acquariusoft/UpdateMe/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/f;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/f;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/j;->a:Lcom/acquariusoft/UpdateMe/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/j;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/f;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_34

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/j;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/f;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/j;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/f;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_1f
    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_35

    :try_start_27
    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/j;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/f;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v3, v0, v1}, Lcom/acquariusoft/UpdateMe/ao;->a([Ljava/lang/String;Landroid/content/Context;Z)Z
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_34} :catch_4b

    :cond_34
    :goto_34
    return-void

    :cond_35
    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_34
.end method
