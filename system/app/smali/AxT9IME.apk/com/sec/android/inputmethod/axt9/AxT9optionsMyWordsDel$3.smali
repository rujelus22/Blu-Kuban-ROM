.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;
.super Ljava/lang/Object;
.source "AxT9optionsMyWordsDel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->make_MyWords_CheckList()V
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
    .line 230
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, headerViewCount:I
    invoke-virtual {p2, v4}, Landroid/view/View;->setPressed(Z)V

    .line 236
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v5, p3, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    .local v1, selectText:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 239
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 251
    :goto_29
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_68

    move v2, v3

    :goto_38
    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setButtonEnabled(Z)V
    invoke-static {v5, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Z)V

    .line 253
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_6a

    .line 254
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$002(Z)Z

    .line 259
    :goto_54
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->notifyDataSetChanged()V

    .line 260
    return-void

    .line 241
    :cond_5e
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_68
    move v2, v4

    .line 251
    goto :goto_38

    .line 256
    :cond_6a
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$002(Z)Z

    goto :goto_54
.end method
