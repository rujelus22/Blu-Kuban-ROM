.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;
.super Ljava/lang/Object;
.source "AxT9optionsMyWordsDel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->make_SelectAll_CheckButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 185
    invoke-virtual {p2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 187
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$000()Z

    move-result v3

    if-nez v3, :cond_46

    move v3, v4

    :goto_c
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$002(Z)Z

    .line 188
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->notifyDataSetChanged()V

    .line 189
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 191
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_50

    .line 192
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f070046

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 194
    .local v0, cb:Landroid/widget/CheckBox;
    if-nez v0, :cond_48

    .line 191
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v1           #i:I
    :cond_46
    move v3, v5

    .line 187
    goto :goto_c

    .line 198
    .restart local v0       #cb:Landroid/widget/CheckBox;
    .restart local v1       #i:I
    :cond_48
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$000()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_43

    .line 201
    .end local v0           #cb:Landroid/widget/CheckBox;
    :cond_50
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$000()Z

    move-result v3

    if-ne v3, v4, :cond_79

    .line 202
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_57
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_79

    .line 203
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 207
    .end local v2           #idx:I
    :cond_79
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8b

    :goto_87
    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setButtonEnabled(Z)V
    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Z)V

    .line 208
    return-void

    :cond_8b
    move v4, v5

    .line 207
    goto :goto_87
.end method