.class Lcom/google/googlenav/ui/wizard/ii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/ih;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ih;Landroid/widget/Spinner;Landroid/widget/EditText;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ii;->c:Lcom/google/googlenav/ui/wizard/ih;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ii;->a:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/ii;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ii;->c:Lcom/google/googlenav/ui/wizard/ih;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ih;->a:Lcom/google/googlenav/ui/wizard/id;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/id;->o()Z

    move-result v0

    if-nez v0, :cond_11

    .line 122
    :goto_10
    return-void

    .line 103
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ii;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 104
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2a

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ii;->c:Lcom/google/googlenav/ui/wizard/ih;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please choose a log file."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 109
    :cond_2a
    const/high16 v0, -0x4080

    .line 111
    :try_start_2c
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ii;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_67
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_39} :catch_50

    move-result v0

    .line 115
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_7f

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ii;->c:Lcom/google/googlenav/ui/wizard/ih;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please enter a time ratio greater than 0."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 112
    :catch_50
    move-exception v2

    .line 115
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_7f

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ii;->c:Lcom/google/googlenav/ui/wizard/ih;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please enter a time ratio greater than 0."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 115
    :catchall_67
    move-exception v1

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_7e

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ii;->c:Lcom/google/googlenav/ui/wizard/ih;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please enter a time ratio greater than 0."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 117
    :cond_7e
    throw v1

    .line 120
    :cond_7f
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ii;->c:Lcom/google/googlenav/ui/wizard/ih;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/ih;->a:Lcom/google/googlenav/ui/wizard/id;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/id;->a(Lcom/google/googlenav/ui/wizard/id;)Lcom/google/googlenav/ui/wizard/ig;

    move-result-object v2

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/ig;->a:Lcom/google/googlenav/ui/wizard/if;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ii;->c:Lcom/google/googlenav/ui/wizard/ih;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/ih;->a:Lcom/google/googlenav/ui/wizard/id;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/id;->a(Lcom/google/googlenav/ui/wizard/id;)Lcom/google/googlenav/ui/wizard/ig;

    move-result-object v3

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/ig;->b:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/ui/wizard/if;->a(Ljava/lang/String;F)V

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ii;->c:Lcom/google/googlenav/ui/wizard/ih;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ih;->a:Lcom/google/googlenav/ui/wizard/id;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/id;->a()V

    goto/16 :goto_10
.end method
