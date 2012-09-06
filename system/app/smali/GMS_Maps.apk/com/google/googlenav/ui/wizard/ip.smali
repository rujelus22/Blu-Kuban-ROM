.class Lcom/google/googlenav/ui/wizard/ip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:Lcom/google/googlenav/ui/wizard/in;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/in;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ip;->d:Lcom/google/googlenav/ui/wizard/in;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ip;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/ip;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/ip;->c:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/EnumSet;Ljava/util/EnumSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 460
    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 479
    :goto_6
    return-void

    .line 463
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->a:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 465
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_19
    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 468
    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_26
    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 471
    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 474
    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_42
    const/16 v1, 0x61

    const-string v2, "f"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 437
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ip;->d:Lcom/google/googlenav/ui/wizard/in;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ij;->o()Z

    move-result v0

    if-nez v0, :cond_f

    .line 456
    :goto_e
    return-void

    .line 441
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ip;->d:Lcom/google/googlenav/ui/wizard/in;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/im;->b:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ip;->d:Lcom/google/googlenav/ui/wizard/in;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/im;->b:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->clear()V

    .line 443
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ip;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 444
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ip;->d:Lcom/google/googlenav/ui/wizard/in;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/im;->b:Ljava/util/EnumSet;

    sget-object v2, Lcom/google/googlenav/ui/wizard/iv;->a:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_41
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ip;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 447
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ip;->d:Lcom/google/googlenav/ui/wizard/in;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/im;->b:Ljava/util/EnumSet;

    sget-object v2, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_58
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ip;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 450
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ip;->d:Lcom/google/googlenav/ui/wizard/in;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/im;->b:Ljava/util/EnumSet;

    sget-object v2, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_6f
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ip;->d:Lcom/google/googlenav/ui/wizard/in;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/im;->b:Ljava/util/EnumSet;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/wizard/ip;->a(Ljava/util/EnumSet;Ljava/util/EnumSet;)V

    .line 453
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ip;->d:Lcom/google/googlenav/ui/wizard/in;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/im;->a:Lcom/google/googlenav/ui/wizard/il;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ip;->d:Lcom/google/googlenav/ui/wizard/in;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/im;->b:Ljava/util/EnumSet;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/il;->a(Ljava/util/EnumSet;)V

    .line 454
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ip;->d:Lcom/google/googlenav/ui/wizard/in;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/in;->b(Lcom/google/googlenav/ui/wizard/in;)Lcom/google/googlenav/ui/wizard/iw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/iw;->b()V

    .line 455
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ip;->d:Lcom/google/googlenav/ui/wizard/in;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ij;->a()V

    goto/16 :goto_e
.end method
