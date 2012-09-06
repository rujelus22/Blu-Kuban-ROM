.class final Lcom/acquariusoft/UpdateMe/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/activity/a;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const v4, 0x7f070016

    const v3, 0x7f070015

    const v2, 0x7f070014

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/a;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    iget-boolean v0, v0, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->a:Z

    if-eqz v0, :cond_57

    new-instance v1, Lcom/acquariusoft/UpdateMe/b/b/b;

    invoke-direct {v1}, Lcom/acquariusoft/UpdateMe/b/b/b;-><init>()V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/a;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v0, v2}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/acquariusoft/UpdateMe/b/b/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/a;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v0, v3}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/acquariusoft/UpdateMe/b/b/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/a;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v0, v4}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/acquariusoft/UpdateMe/b/b/b;->g:Ljava/lang/String;

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/b/c;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_51
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/a;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->finish()V

    return-void

    :cond_57
    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/b/c;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/a;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/b/b;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/a;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/a;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v1, v3}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/a;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v1, v4}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->g:Ljava/lang/String;

    goto :goto_51
.end method
