.class final Lcom/android/athome/picker/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/athome/picker/d;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/q;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/q;)V
    .registers 2
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 796
    if-nez p1, :cond_4

    .line 822
    :goto_3
    return-void

    .line 799
    :cond_4
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutputGroup;->getType()I

    move-result v1

    .line 800
    iget-object v0, p0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->d(Lcom/android/athome/picker/q;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 801
    const-string v0, "MediaOutputSelector"

    const-string v1, "AtHome receiver adapter already exists."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 804
    :cond_20
    iget-object v2, p0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    iget-object v0, p0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->l(Lcom/android/athome/picker/q;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/a;

    invoke-static {v2, v0}, Lcom/android/athome/picker/q;->a(Lcom/android/athome/picker/q;Lcom/android/athome/picker/a;)Ljava/util/ArrayList;

    move-result-object v0

    .line 806
    iget-object v2, p0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    invoke-static {v2}, Lcom/android/athome/picker/q;->c(Lcom/android/athome/picker/q;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    new-instance v2, Lcom/android/athome/picker/g;

    iget-object v3, p0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    invoke-static {v3}, Lcom/android/athome/picker/q;->m(Lcom/android/athome/picker/q;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/android/athome/picker/g;-><init>(Landroid/content/Context;II)V

    .line 809
    invoke-virtual {v2, v5}, Lcom/android/athome/picker/g;->a(I)V

    .line 810
    invoke-virtual {v2, p1}, Lcom/android/athome/picker/g;->a(Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 811
    iget-object v3, p0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    invoke-static {v3}, Lcom/android/athome/picker/q;->d(Lcom/android/athome/picker/q;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-object v1, p0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    invoke-static {v1, v2, v0}, Lcom/android/athome/picker/q;->a(Lcom/android/athome/picker/q;Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    .line 813
    iget-object v0, p0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->n(Lcom/android/athome/picker/q;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/athome/picker/g;->a(Landroid/widget/AdapterView;)V

    .line 814
    iget-object v0, p0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->n(Lcom/android/athome/picker/q;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 815
    iget-object v0, p0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->n(Lcom/android/athome/picker/q;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/athome/picker/ab;

    invoke-direct {v1, p0, v2}, Lcom/android/athome/picker/ab;-><init>(Lcom/android/athome/picker/aa;Lcom/android/athome/picker/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 821
    iget-object v0, p0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->e(Lcom/android/athome/picker/q;)V

    goto/16 :goto_3
.end method
