.class public LAd;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 144
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/view/View;)V

    .line 172
    :cond_12
    :goto_12
    return-void

    .line 145
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lup;->toolbar_undo_button:I

    if-ne v0, v1, :cond_21

    .line 146
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    goto :goto_12

    .line 147
    :cond_21
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lup;->toolbar_redo_button:I

    if-ne v0, v1, :cond_2f

    .line 148
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    goto :goto_12

    .line 149
    :cond_2f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lup;->toolbar_indent_button:I

    if-ne v0, v1, :cond_44

    .line 150
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v0}, LyC;->i()V

    .line 151
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->q()V

    goto :goto_12

    .line 152
    :cond_44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lup;->toolbar_outdent_button:I

    if-ne v0, v1, :cond_59

    .line 153
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v0}, LyC;->j()V

    .line 154
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->q()V

    goto :goto_12

    .line 155
    :cond_59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lup;->toolbar_done_button:I

    if-ne v0, v1, :cond_67

    .line 156
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->p()V

    goto :goto_12

    .line 157
    :cond_67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lup;->toolbar_color_button:I

    if-ne v0, v1, :cond_9b

    .line 158
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuZ;

    move-result-object v0

    if-eqz v0, :cond_92

    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuZ;

    move-result-object v0

    invoke-interface {v0}, LuZ;->g()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 159
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuZ;

    move-result-object v0

    invoke-interface {v0}, LuZ;->p()V

    .line 160
    check-cast p1, Landroid/widget/ToggleButton;

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_12

    .line 162
    :cond_92
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    check-cast p1, Landroid/widget/ToggleButton;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V

    goto/16 :goto_12

    .line 164
    :cond_9b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lup;->toolbar_alignment_button:I

    if-ne v0, v1, :cond_12

    .line 165
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuZ;

    move-result-object v0

    if-eqz v0, :cond_c7

    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuZ;

    move-result-object v0

    invoke-interface {v0}, LuZ;->g()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 166
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuZ;

    move-result-object v0

    invoke-interface {v0}, LuZ;->p()V

    .line 167
    check-cast p1, Landroid/widget/ToggleButton;

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_12

    .line 169
    :cond_c7
    iget-object v0, p0, LAd;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    check-cast p1, Landroid/widget/ToggleButton;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V

    goto/16 :goto_12
.end method
