.class final Lcom/twitter/android/co;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/co;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/co;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/g;

    iget-object v1, p0, Lcom/twitter/android/co;->a:Lcom/twitter/android/PostActivity;

    iget-object v1, v1, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    iget-object v2, v1, Lcom/twitter/android/cz;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/widget/g;->a(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/twitter/android/co;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v4, v1}, Lcom/twitter/android/PostActivity;->c(I)V

    goto :goto_16

    :cond_31
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_34
    return-void
.end method
