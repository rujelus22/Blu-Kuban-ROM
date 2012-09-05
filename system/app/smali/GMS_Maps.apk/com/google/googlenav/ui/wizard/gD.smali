.class Lcom/google/googlenav/ui/wizard/gD;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:Lcom/google/googlenav/ui/wizard/gB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gB;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gD;->d:Lcom/google/googlenav/ui/wizard/gB;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gD;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gD;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/gD;->c:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/EnumSet;Ljava/util/EnumSet;)V
    .registers 6

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/wizard/gJ;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    sget-object v1, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    sget-object v1, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    const/16 v1, 0x61

    const-string v2, "f"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_6
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gD;->d:Lcom/google/googlenav/ui/wizard/gB;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gx;->r()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gD;->d:Lcom/google/googlenav/ui/wizard/gB;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gA;->b:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gD;->d:Lcom/google/googlenav/ui/wizard/gB;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gA;->b:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->clear()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gD;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gD;->d:Lcom/google/googlenav/ui/wizard/gB;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gA;->b:Ljava/util/EnumSet;

    sget-object v2, Lcom/google/googlenav/ui/wizard/gJ;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_41
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gD;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gD;->d:Lcom/google/googlenav/ui/wizard/gB;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gA;->b:Ljava/util/EnumSet;

    sget-object v2, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_58
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gD;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gD;->d:Lcom/google/googlenav/ui/wizard/gB;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gA;->b:Ljava/util/EnumSet;

    sget-object v2, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_6f
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gD;->d:Lcom/google/googlenav/ui/wizard/gB;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gA;->b:Ljava/util/EnumSet;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/wizard/gD;->a(Ljava/util/EnumSet;Ljava/util/EnumSet;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gD;->d:Lcom/google/googlenav/ui/wizard/gB;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gA;->a:Lcom/google/googlenav/ui/wizard/gz;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gD;->d:Lcom/google/googlenav/ui/wizard/gB;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gA;->b:Ljava/util/EnumSet;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/gz;->a(Ljava/util/EnumSet;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gD;->d:Lcom/google/googlenav/ui/wizard/gB;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gB;->c(Lcom/google/googlenav/ui/wizard/gB;)Lcom/google/googlenav/ui/wizard/gK;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gK;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gD;->d:Lcom/google/googlenav/ui/wizard/gB;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gx;->a()V

    goto/16 :goto_e
.end method
