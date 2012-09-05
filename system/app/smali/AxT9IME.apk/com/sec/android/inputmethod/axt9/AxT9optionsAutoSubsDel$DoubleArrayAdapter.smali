.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AxT9optionsAutoSubsDel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;",
        ">;"
    }
.end annotation


# instance fields
.field private cb:Landroid/widget/CheckBox;

.field private ctv:Landroid/widget/TextView;

.field private item:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceId:I

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 632
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;>;"
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    .line 633
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 635
    iput-object p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    .line 636
    iput p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->mResourceId:I

    .line 637
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 643
    move-object v1, p2

    .line 644
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_14

    .line 645
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 646
    .local v2, vi:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 650
    .end local v2           #vi:Landroid/view/LayoutInflater;
    :cond_14
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 660
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;

    .line 661
    .local v0, p:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;
    if-eqz v0, :cond_79

    .line 662
    const v3, 0x7f07003b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    .line 663
    const v3, 0x7f07003c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->ctv:Landroid/widget/TextView;

    .line 664
    const v3, 0x7f07003d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    .line 665
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->ctv:Landroid/widget/TextView;

    if-eqz v3, :cond_79

    .line 666
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;->getS1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->ctv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;->getS2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 669
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 675
    :cond_79
    :goto_79
    return-object v1

    .line 671
    :cond_7a
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_79
.end method
