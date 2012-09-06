.class Lcom/google/googlenav/ui/wizard/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/google/googlenav/ui/wizard/ch;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ck;->e:Lcom/google/googlenav/ui/wizard/ch;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ck;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/ck;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/ck;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/ck;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ck;->e:Lcom/google/googlenav/ui/wizard/ch;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ck;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ch;->a(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ck;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ck;->e:Lcom/google/googlenav/ui/wizard/ch;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/ch;->a(Lcom/google/googlenav/ui/wizard/ch;)[Lcom/google/googlenav/aw;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ck;->e:Lcom/google/googlenav/ui/wizard/ch;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ch;->a(Lcom/google/googlenav/ui/wizard/ch;)[Lcom/google/googlenav/aw;

    move-result-object v0

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/google/googlenav/aw;->d:Ljava/lang/String;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ck;->e:Lcom/google/googlenav/ui/wizard/ch;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ch;->a(Lcom/google/googlenav/ui/wizard/ch;)[Lcom/google/googlenav/aw;

    move-result-object v0

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/google/googlenav/aw;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_70

    .line 225
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ck;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ck;->e:Lcom/google/googlenav/ui/wizard/ch;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ch;->a(Lcom/google/googlenav/ui/wizard/ch;)[Lcom/google/googlenav/aw;

    move-result-object v1

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/google/googlenav/aw;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ck;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ck;->e:Lcom/google/googlenav/ui/wizard/ch;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ch;->a(Lcom/google/googlenav/ui/wizard/ch;)[Lcom/google/googlenav/aw;

    move-result-object v1

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/google/googlenav/aw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :goto_66
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ck;->b:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 234
    return-void

    .line 228
    :cond_70
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ck;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ck;->e:Lcom/google/googlenav/ui/wizard/ch;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ch;->a(Lcom/google/googlenav/ui/wizard/ch;)[Lcom/google/googlenav/aw;

    move-result-object v1

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/google/googlenav/aw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ck;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ck;->e:Lcom/google/googlenav/ui/wizard/ch;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ch;->a(Lcom/google/googlenav/ui/wizard/ch;)[Lcom/google/googlenav/aw;

    move-result-object v1

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/google/googlenav/aw;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_66
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 4
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ck;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method
