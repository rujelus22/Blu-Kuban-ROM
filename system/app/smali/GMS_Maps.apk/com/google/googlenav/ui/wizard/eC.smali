.class public Lcom/google/googlenav/ui/wizard/ec;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/eg;

.field private b:Landroid/widget/ViewSwitcher;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/google/googlenav/ui/view/android/L;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/eg;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ec;->a:Lcom/google/googlenav/ui/wizard/eg;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ec;)Lcom/google/googlenav/ui/view/android/L;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->d:Lcom/google/googlenav/ui/view/android/L;

    return-object v0
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 214
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 216
    if-nez v0, :cond_9

    const-string v0, "HOME"

    :cond_9
    return-object v0
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 207
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 208
    return-void
.end method

.method private a(Ljava/util/List;Lcom/google/googlenav/friend/i;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/ec;->c(Lcom/google/googlenav/friend/i;)Ljava/util/Hashtable;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_36

    .line 143
    new-instance v1, LaQ/bv;

    const/4 v2, 0x1

    const v3, 0x7f0400de

    const/16 v4, 0x235

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 147
    :goto_20
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 148
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 149
    new-instance v2, Lcom/google/googlenav/ui/wizard/ee;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/googlenav/ui/wizard/ee;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 152
    :cond_36
    new-instance v0, LaQ/bv;

    const/4 v1, 0x2

    const v2, 0x7f0400df

    const/16 v3, 0x234

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_48
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/ec;)Lcom/google/googlenav/ui/wizard/eg;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->a:Lcom/google/googlenav/ui/wizard/eg;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/friend/i;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 130
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/ui/wizard/ec;->a(Ljava/util/List;Lcom/google/googlenav/friend/i;)V

    .line 132
    return-object v0
.end method

.method private c(Lcom/google/googlenav/friend/i;)Ljava/util/Hashtable;
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 159
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 160
    invoke-virtual {p1}, Lcom/google/googlenav/friend/i;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 161
    invoke-virtual {v4, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    move v0, v2

    .line 162
    :goto_12
    if-ge v0, v1, :cond_25

    .line 163
    invoke-virtual {v4, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 171
    invoke-static {v5, v8, v8}, Lcom/google/googlenav/ui/wizard/ec;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ZZ)V

    .line 172
    invoke-static {v5}, Lcom/google/googlenav/ui/wizard/ec;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 175
    :cond_25
    invoke-virtual {v4, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    move v1, v2

    .line 176
    :goto_2a
    if-ge v1, v5, :cond_4a

    .line 177
    invoke-virtual {v4, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 179
    invoke-static {v6}, Lcom/google/googlenav/ui/wizard/ec;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v7

    .line 180
    invoke-virtual {v3, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 181
    if-eqz v0, :cond_43

    .line 186
    invoke-static {v0, v8, v2}, Lcom/google/googlenav/ui/wizard/ec;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ZZ)V

    .line 176
    :goto_3f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    .line 193
    :cond_43
    invoke-static {v6, v2, v2}, Lcom/google/googlenav/ui/wizard/ec;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ZZ)V

    .line 194
    invoke-virtual {v3, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 197
    :cond_4a
    return-object v3
.end method


# virtual methods
.method protected N_()V
    .registers 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ec;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 97
    return-void
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 91
    const/16 v0, 0x232

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/ec;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public a(Lcom/google/googlenav/friend/i;)V
    .registers 4
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ec;->b(Lcom/google/googlenav/friend/i;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 323
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ec;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fd

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->b:Landroid/widget/ViewSwitcher;

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->b:Landroid/widget/ViewSwitcher;

    const v1, 0x7f1001e8

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->b:Landroid/widget/ViewSwitcher;

    const v1, 0x7f100026

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->c:Landroid/widget/ListView;

    .line 110
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ec;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v4, v0, v3}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ec;->d:Lcom/google/googlenav/ui/view/android/L;

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ec;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ed;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ed;-><init>(Lcom/google/googlenav/ui/wizard/ec;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->b:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method public i()V
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 224
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->a:Lcom/google/googlenav/ui/wizard/eg;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/eg;->a()V

    .line 234
    return-void
.end method
