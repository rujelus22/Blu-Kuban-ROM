.class Lcom/google/googlenav/ui/wizard/gE;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gB;

.field private final b:Landroid/widget/CheckBox;

.field private final c:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/gB;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gE;->a:Lcom/google/googlenav/ui/wizard/gB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gE;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gE;->c:Landroid/widget/CheckBox;

    return-void
.end method

.method private a(Landroid/widget/CompoundButton;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gE;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gE;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gE;->b:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gE;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gE;->a:Lcom/google/googlenav/ui/wizard/gB;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gB;->b(Lcom/google/googlenav/ui/wizard/gB;)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gE;->c:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gE;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1a
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gE;Landroid/widget/CompoundButton;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gE;->a(Landroid/widget/CompoundButton;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gE;->b:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_b

    if-nez p2, :cond_f

    :cond_b
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gE;->a(Landroid/widget/CompoundButton;)V

    :goto_e
    return-void

    :cond_f
    invoke-virtual {v0}, LaN/b;->w()LaN/d;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/wizard/gy;->a:[I

    invoke-virtual {v1}, LaN/d;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_52

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gE;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_e

    :pswitch_24
    new-instance v1, Lcom/google/googlenav/ui/wizard/gF;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/googlenav/ui/wizard/gF;-><init>(Lcom/google/googlenav/ui/wizard/gE;Landroid/widget/CompoundButton;LaN/b;)V

    invoke-virtual {v0, v1}, LaN/b;->a(LaN/c;)V

    goto :goto_e

    :pswitch_2d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gE;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lcom/google/googlenav/ui/wizard/gB;->i()Lcom/google/googlenav/android/BaseMapsActivity;

    move-result-object v0

    const/16 v1, 0x3d1

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x61

    const-string v1, "f"

    const-string v2, "l"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_e

    :pswitch_4d
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gE;->a(Landroid/widget/CompoundButton;)V

    goto :goto_e

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_2d
        :pswitch_4d
    .end packed-switch
.end method
