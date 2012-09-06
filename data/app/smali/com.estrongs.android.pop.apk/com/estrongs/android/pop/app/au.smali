.class Lcom/estrongs/android/pop/app/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ar;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/au;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/au;)Lcom/estrongs/android/pop/app/ar;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/au;->a:Lcom/estrongs/android/pop/app/ar;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/au;->a:Lcom/estrongs/android/pop/app/ar;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ar;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_c

    :goto_b
    return v6

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/au;->a:Lcom/estrongs/android/pop/app/ar;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ar;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/au;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ar;->c(Lcom/estrongs/android/pop/app/ar;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020094

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/au;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/ar;->c(Lcom/estrongs/android/pop/app/ar;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0901d8

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/estrongs/android/pop/app/av;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/app/av;-><init>(Lcom/estrongs/android/pop/app/au;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_b
.end method
