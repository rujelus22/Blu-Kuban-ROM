.class final Lcom/acquariusoft/UpdateMe/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/activity/c;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    const v6, 0x7f070016

    const v5, 0x7f070015

    const v2, 0x7f070014

    const v4, 0x7f07000d

    const/4 v3, 0x0

    if-nez p3, :cond_49

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/c;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->a:Z

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/c;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v0, v2}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/c;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v0, v5}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/c;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v0, v6}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/c;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v0, v4}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_48
    return-void

    :cond_49
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/c;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    iput-boolean v3, v0, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->a:Z

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/c;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    add-int/lit8 v1, p3, -0x1

    iput v1, v0, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->b:I

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/b/c;->b:Ljava/util/List;

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/b/b;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/c;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/c;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v1, v5}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/c;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v1, v6}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/c;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v0, v4}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_48
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
