.class Lcom/google/googlenav/ui/wizard/iq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/in;

.field private final b:Landroid/widget/CheckBox;

.field private final c:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/in;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iq;->a:Lcom/google/googlenav/ui/wizard/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/iq;->b:Landroid/widget/CheckBox;

    .line 222
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/iq;->c:Landroid/widget/CheckBox;

    .line 223
    return-void
.end method

.method private a(Landroid/widget/CompoundButton;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iq;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iq;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 272
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iq;->b:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_20

    .line 273
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iq;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 278
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iq;->a:Lcom/google/googlenav/ui/wizard/in;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/in;->a(Lcom/google/googlenav/ui/wizard/in;)V

    .line 279
    return-void

    .line 274
    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iq;->c:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_1a

    .line 275
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iq;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1a
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/iq;Landroid/widget/CompoundButton;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/iq;->a(Landroid/widget/CompoundButton;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iq;->b:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_b

    if-nez p2, :cond_f

    .line 229
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/iq;->a(Landroid/widget/CompoundButton;)V

    .line 268
    :goto_e
    return-void

    .line 232
    :cond_f
    invoke-virtual {v0}, Lay/a;->w()Lay/c;

    move-result-object v1

    .line 233
    sget-object v2, Lcom/google/googlenav/ui/wizard/ik;->a:[I

    invoke-virtual {v1}, Lay/c;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_52

    .line 265
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iq;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_e

    .line 238
    :pswitch_24
    new-instance v1, Lcom/google/googlenav/ui/wizard/ir;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/googlenav/ui/wizard/ir;-><init>(Lcom/google/googlenav/ui/wizard/iq;Landroid/widget/CompoundButton;Lay/a;)V

    invoke-virtual {v0, v1}, Lay/a;->a(Lay/b;)V

    goto :goto_e

    .line 253
    :pswitch_2d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iq;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 254
    invoke-static {}, Lcom/google/googlenav/ui/wizard/in;->l()Lcom/google/googlenav/android/BaseMapsActivity;

    move-result-object v0

    const/16 v1, 0x4b3

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    const/16 v0, 0x61

    const-string v1, "f"

    const-string v2, "l"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 262
    :pswitch_4d
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/iq;->a(Landroid/widget/CompoundButton;)V

    goto :goto_e

    .line 233
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_2d
        :pswitch_4d
    .end packed-switch
.end method
