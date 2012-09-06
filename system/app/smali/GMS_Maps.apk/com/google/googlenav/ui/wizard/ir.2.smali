.class Lcom/google/googlenav/ui/wizard/ir;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lay/b;


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lay/a;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/iq;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iq;Landroid/widget/CompoundButton;Lay/a;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ir;->c:Lcom/google/googlenav/ui/wizard/iq;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ir;->a:Landroid/widget/CompoundButton;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/ir;->b:Lay/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lay/c;)V
    .registers 4
    .parameter

    .prologue
    .line 241
    sget-object v0, Lay/c;->c:Lay/c;

    if-ne p1, v0, :cond_c

    .line 242
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ir;->c:Lcom/google/googlenav/ui/wizard/iq;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ir;->a:Landroid/widget/CompoundButton;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/iq;->a(Lcom/google/googlenav/ui/wizard/iq;Landroid/widget/CompoundButton;)V

    .line 249
    :goto_b
    return-void

    .line 244
    :cond_c
    sget-object v0, Lay/c;->b:Lay/c;

    if-ne p1, v0, :cond_15

    .line 245
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ir;->b:Lay/a;

    invoke-virtual {v0}, Lay/a;->m()V

    .line 247
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ir;->a:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_b
.end method
