.class Lcom/estrongs/android/pop/view/lx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/lv;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Landroid/widget/EditText;

.field private final synthetic d:Landroid/widget/Spinner;

.field private final synthetic e:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/lv;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .registers 6

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lx;->a:Lcom/estrongs/android/pop/view/lv;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/lx;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/lx;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/estrongs/android/pop/view/lx;->d:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/estrongs/android/pop/view/lx;->e:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/pop/view/lx;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_35

    move-result v1

    move v3, v1

    :goto_10
    :try_start_10
    iget-object v1, p0, Lcom/estrongs/android/pop/view/lx;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_38

    move-result v0

    move v2, v0

    :goto_1f
    iget-object v4, p0, Lcom/estrongs/android/pop/view/lx;->a:Lcom/estrongs/android/pop/view/lv;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lx;->d:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lx;->e:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v3, v0, v2, v1}, Lcom/estrongs/android/pop/view/lv;->a(ILjava/lang/String;ILjava/lang/String;)V

    return-void

    :catch_35
    move-exception v1

    move v3, v0

    goto :goto_10

    :catch_38
    move-exception v1

    move v2, v0

    goto :goto_1f
.end method
