.class Lcom/google/googlenav/ui/wizard/gw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/gv;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gv;Landroid/widget/Spinner;Landroid/widget/EditText;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gw;->c:Lcom/google/googlenav/ui/wizard/gv;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gw;->a:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gw;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gw;->c:Lcom/google/googlenav/ui/wizard/gv;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gr;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gr;->r()Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gw;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gw;->c:Lcom/google/googlenav/ui/wizard/gv;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gv;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please choose a log file."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    :cond_2a
    const/high16 v0, -0x4080

    :try_start_2c
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gw;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_86
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_39} :catch_72

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_51

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gw;->c:Lcom/google/googlenav/ui/wizard/gv;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gv;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please enter a time ratio greater than 0."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    :goto_4c
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    :cond_50
    throw v1

    :cond_51
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gw;->c:Lcom/google/googlenav/ui/wizard/gv;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gr;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/gr;->a(Lcom/google/googlenav/ui/wizard/gr;)Lcom/google/googlenav/ui/wizard/gu;

    move-result-object v2

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/gu;->a:Lcom/google/googlenav/ui/wizard/gt;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gw;->c:Lcom/google/googlenav/ui/wizard/gv;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gr;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/gr;->a(Lcom/google/googlenav/ui/wizard/gr;)Lcom/google/googlenav/ui/wizard/gu;

    move-result-object v3

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/gu;->b:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/ui/wizard/gt;->a(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gw;->c:Lcom/google/googlenav/ui/wizard/gv;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gr;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gr;->a()V

    goto :goto_10

    :catch_72
    move-exception v2

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_51

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gw;->c:Lcom/google/googlenav/ui/wizard/gv;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gv;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please enter a time ratio greater than 0."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_4c

    :catchall_86
    move-exception v1

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_50

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gw;->c:Lcom/google/googlenav/ui/wizard/gv;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gv;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please enter a time ratio greater than 0."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_4c
.end method
