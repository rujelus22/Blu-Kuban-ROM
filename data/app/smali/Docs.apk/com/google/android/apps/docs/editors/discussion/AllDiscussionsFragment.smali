.class public Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "AllDiscussionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Landroid/widget/ListView;

.field private final a:Ljava/lang/Runnable;

.field private a:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lna;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lmz;

.field private a:LuI;

.field private a:Lut;

.field private a:Lux;

.field private a:LzF;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    .line 55
    sget-object v0, Lux;->a:Lux;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lux;

    .line 71
    new-instance v0, Luu;

    invoke-direct {v0, p0}, Luu;-><init>(Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;)Lmz;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lmz;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Ljava/util/SortedSet;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->d()Z

    move-result v0

    if-nez v0, :cond_f

    .line 138
    :cond_e
    :goto_e
    return-void

    .line 119
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lut;

    invoke-virtual {v0}, Lut;->clear()V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0}, Lna;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lut;

    invoke-virtual {v0, v2}, Lut;->add(Ljava/lang/Object;)V

    goto :goto_1a

    .line 126
    :cond_3b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_4a

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lut;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lut;

    invoke-virtual {v0}, Lut;->a()Z

    move-result v0

    if-nez v0, :cond_59

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lut;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:LzF;

    invoke-virtual {v0, v1}, Lut;->a(LzF;)V

    .line 132
    :cond_59
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lut;

    invoke-virtual {v0}, Lut;->notifyDataSetChanged()V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-lez v0, :cond_6c

    .line 134
    sget-object v0, Lux;->d:Lux;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a(Lux;)V

    goto :goto_e

    .line 136
    :cond_6c
    sget-object v0, Lux;->c:Lux;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a(Lux;)V

    goto :goto_e
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->p()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;Ljava/util/SortedSet;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a(Ljava/util/SortedSet;)V

    return-void
.end method

.method private a(Ljava/util/SortedSet;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lna;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    const-string v0, "AllDiscussionsFragment"

    const-string v1, "Updating discussions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Ljava/util/SortedSet;

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Landroid/os/Handler;

    new-instance v1, Luv;

    invoke-direct {v1, p0}, Luv;-><init>(Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method private a(Lux;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lux;

    if-ne v0, p1, :cond_8

    .line 170
    :goto_7
    return-void

    .line 152
    :cond_8
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lux;

    .line 153
    sget-object v0, Luw;->a:[I

    invoke-virtual {p1}, Lux;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 155
    :pswitch_25
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 160
    :pswitch_35
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 153
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_25
        :pswitch_35
    .end packed-switch
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a()V

    return-void
.end method

.method private p()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 142
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lus;->discussion_error:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 143
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 144
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    :cond_19
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    sget v0, Luq;->discussion_fragment_all_discussions:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 197
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Landroid/widget/ListView;

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    sget v0, Lup;->discussion_loading_spinner:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->d:Landroid/view/View;

    .line 201
    sget v0, Lup;->discussion_no_comments:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->e:Landroid/view/View;

    .line 203
    sget v0, Lup;->action_new_comment:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    sget v0, Lup;->action_all_close:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-object v1
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 174
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/os/Bundle;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lut;

    if-nez v0, :cond_13

    .line 176
    new-instance v0, Lut;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lut;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lut;

    .line 178
    :cond_13
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->d(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lkg;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 180
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->e(Z)V

    .line 184
    :goto_23
    return-void

    .line 182
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->e(Z)V

    goto :goto_23
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 188
    sget v0, Lup;->menu_discussion:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 189
    sget v1, Lus;->discussion_close_comments:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 190
    return-void
.end method

.method public a(Lmw;LzF;Ljava/lang/String;Ljava/lang/String;LuI;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p2}, LzF;->a()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Landroid/os/Handler;

    .line 97
    invoke-virtual {p1, p3, p4}, Lmw;->a(Ljava/lang/String;Ljava/lang/String;)Lmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lmz;

    .line 98
    iput-object p2, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:LzF;

    .line 99
    iput-object p5, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:LuI;

    .line 100
    return-void
.end method

.method public f()V
    .registers 4

    .prologue
    .line 214
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->f()V

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lmz;

    if-nez v0, :cond_15

    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, LuI;

    invoke-interface {v0}, LuI;->b()V

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->f(Z)V

    .line 229
    :goto_14
    return-void

    .line 223
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lmz;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lmz;->a(Ljava/lang/Runnable;)Z

    .line 224
    sget-object v0, Lux;->b:Lux;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a(Lux;)V

    .line 227
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lup;->discussion_all_discussions_container:I

    invoke-static {v0, v1, v2}, LuG;->a(Landroid/view/View;Landroid/content/res/Resources;I)V

    goto :goto_14
.end method

.method public g()V
    .registers 3

    .prologue
    .line 233
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->g()V

    .line 235
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lmz;

    if-nez v0, :cond_15

    .line 237
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, LuI;

    invoke-interface {v0}, LuI;->b()V

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->f(Z)V

    .line 244
    :goto_14
    return-void

    .line 242
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lmz;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lmz;->b(Ljava/lang/Runnable;)Z

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:LzF;

    invoke-virtual {v0}, LzF;->a()V

    goto :goto_14
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lup;->action_new_comment:I

    if-ne v0, v1, :cond_e

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:LuI;

    invoke-interface {v0}, LuI;->a()V

    .line 262
    :cond_d
    :goto_d
    return-void

    .line 259
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lup;->action_all_close:I

    if-ne v0, v1, :cond_d

    .line 260
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:LuI;

    invoke-interface {v0}, LuI;->b()V

    goto :goto_d
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
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
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:Lut;

    invoke-virtual {v0, p3}, Lut;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    .line 249
    invoke-interface {v0}, Lna;->b()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-interface {v0}, Lna;->a()Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-static {v0}, LmO;->a(Lna;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    .line 252
    :goto_1e
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a:LuI;

    invoke-interface {v1, v2, v3, v0}, LuI;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 253
    return-void

    :cond_24
    move v0, v1

    .line 251
    goto :goto_1e
.end method
