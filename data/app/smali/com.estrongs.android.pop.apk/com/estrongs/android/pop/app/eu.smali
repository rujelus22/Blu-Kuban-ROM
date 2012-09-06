.class Lcom/estrongs/android/pop/app/eu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/et;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/et;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/et;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/et;->a(Lcom/estrongs/android/pop/app/et;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/ZipViewer;->getListView()Landroid/widget/ListView;

    move-result-object v1

    packed-switch p2, :pswitch_data_a6

    :goto_f
    return-void

    :pswitch_10
    iget-object v2, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/et;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/et;->a(Lcom/estrongs/android/pop/app/et;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/estrongs/android/pop/app/ZipViewer;->b(Lcom/estrongs/android/pop/app/ZipViewer;Z)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/et;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/et;->a(Lcom/estrongs/android/pop/app/et;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v2

    const v3, 0x7f090135

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/et;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/et;->a(Lcom/estrongs/android/pop/app/et;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ZipViewer;->c(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020104

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/et;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/et;->a(Lcom/estrongs/android/pop/app/et;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ZipViewer;->d(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4f

    array-length v3, v2

    if-lez v3, :cond_4f

    array-length v3, v2

    :goto_4d
    if-lt v0, v3, :cond_5c

    :cond_4f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/et;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/et;->a(Lcom/estrongs/android/pop/app/et;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v0

    invoke-static {v0, v1, v6}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Lcom/estrongs/android/pop/app/ZipViewer;Landroid/widget/ListView;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_f

    :cond_5c
    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/et;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/et;->a(Lcom/estrongs/android/pop/app/et;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/pop/app/ZipViewer;->e(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :pswitch_72
    iget-object v2, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/et;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/et;->a(Lcom/estrongs/android/pop/app/et;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ZipViewer;->e(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/et;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/et;->a(Lcom/estrongs/android/pop/app/et;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->b(Lcom/estrongs/android/pop/app/ZipViewer;Z)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/et;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/et;->a(Lcom/estrongs/android/pop/app/et;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ZipViewer;->c(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020103

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/et;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/et;->a(Lcom/estrongs/android/pop/app/et;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Lcom/estrongs/android/pop/app/ZipViewer;Landroid/widget/ListView;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_f

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_10
        :pswitch_72
    .end packed-switch
.end method
