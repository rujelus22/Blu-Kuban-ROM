.class final Lcom/anddoes/launcher/ku;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field final synthetic b:Lcom/anddoes/launcher/ThemeListActivity;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/ThemeListActivity;)V
    .registers 8
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/anddoes/launcher/ku;->b:Lcom/anddoes/launcher/ThemeListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 113
    invoke-virtual {p1}, Lcom/anddoes/launcher/ThemeListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/ku;->a:Ljava/util/List;

    .line 117
    invoke-static {v1}, Lcom/anddoes/launcher/c/b;->b(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 125
    invoke-static {p1}, Lcom/anddoes/launcher/ThemeListActivity;->a(Lcom/anddoes/launcher/ThemeListActivity;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 126
    invoke-static {v1}, Lcom/anddoes/launcher/c/a;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_86

    .line 135
    invoke-static {v1}, Lcom/anddoes/launcher/c/c;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 144
    invoke-static {v1}, Lcom/anddoes/launcher/c/f;->b(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4d
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c3

    .line 153
    :cond_53
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 154
    iget-object v0, p0, Lcom/anddoes/launcher/ku;->a:Ljava/util/List;

    new-instance v1, Lcom/anddoes/launcher/c/k;

    invoke-direct {v1}, Lcom/anddoes/launcher/c/k;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    iget-object v0, p0, Lcom/anddoes/launcher/ku;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/anddoes/launcher/c/b;

    const-string v3, "default"

    invoke-direct {v2, p1, v3}, Lcom/anddoes/launcher/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 158
    return-void

    .line 119
    :cond_6e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 120
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 122
    iget-object v4, p0, Lcom/anddoes/launcher/ku;->a:Ljava/util/List;

    new-instance v5, Lcom/anddoes/launcher/c/b;

    invoke-direct {v5, p1, v0}, Lcom/anddoes/launcher/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 127
    :cond_86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 128
    invoke-static {v2, v0}, Lcom/anddoes/launcher/ku;->a(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 129
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 131
    iget-object v4, p0, Lcom/anddoes/launcher/ku;->a:Ljava/util/List;

    new-instance v5, Lcom/anddoes/launcher/c/a;

    invoke-direct {v5, p1, v0}, Lcom/anddoes/launcher/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 136
    :cond_a4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 137
    invoke-static {v2, v0}, Lcom/anddoes/launcher/ku;->a(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 138
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 140
    iget-object v4, p0, Lcom/anddoes/launcher/ku;->a:Ljava/util/List;

    new-instance v5, Lcom/anddoes/launcher/c/c;

    invoke-direct {v5, p1, v0}, Lcom/anddoes/launcher/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3f

    .line 145
    :cond_c3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 146
    invoke-static {v2, v0}, Lcom/anddoes/launcher/ku;->a(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 147
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 149
    iget-object v3, p0, Lcom/anddoes/launcher/ku;->a:Ljava/util/List;

    new-instance v4, Lcom/anddoes/launcher/c/f;

    invoke-direct {v4, p1, v0}, Lcom/anddoes/launcher/c/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4d
.end method

.method private static a(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 166
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 161
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 162
    invoke-static {v0, p1}, Lcom/anddoes/launcher/ia;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    const/4 v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/anddoes/launcher/ku;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 176
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/anddoes/launcher/ku;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 177
    :cond_8
    const/4 v0, 0x0

    .line 179
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/anddoes/launcher/ku;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 184
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const v3, 0x7f020008

    const v5, 0x7f020007

    const v4, 0x7f020006

    const v6, 0x7f020005

    .line 189
    if-ltz p1, :cond_15

    invoke-virtual {p0}, Lcom/anddoes/launcher/ku;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_17

    .line 190
    :cond_15
    const/4 p2, 0x0

    .line 237
    :goto_16
    return-object p2

    .line 193
    :cond_17
    iget-object v0, p0, Lcom/anddoes/launcher/ku;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/c/i;

    .line 195
    if-nez p2, :cond_f9

    .line 196
    new-instance v2, Lcom/anddoes/launcher/kv;

    invoke-direct {v2, p0, v8}, Lcom/anddoes/launcher/kv;-><init>(Lcom/anddoes/launcher/ku;B)V

    .line 197
    iget-object v1, p0, Lcom/anddoes/launcher/ku;->b:Lcom/anddoes/launcher/ThemeListActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/ThemeListActivity;->b(Lcom/anddoes/launcher/ThemeListActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v7, 0x7f03002d

    invoke-virtual {v1, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 198
    const v1, 0x7f080002

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/anddoes/launcher/kv;->a:Landroid/widget/ImageView;

    .line 199
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/anddoes/launcher/kv;->b:Landroid/widget/TextView;

    .line 200
    const v1, 0x7f080066

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/anddoes/launcher/kv;->c:Landroid/widget/ImageView;

    .line 201
    const v1, 0x7f080067

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/anddoes/launcher/kv;->d:Landroid/widget/ImageView;

    .line 202
    const v1, 0x7f080069

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/anddoes/launcher/kv;->e:Landroid/widget/ImageView;

    .line 203
    const v1, 0x7f080068

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/anddoes/launcher/kv;->f:Landroid/widget/ImageView;

    .line 204
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 210
    :goto_79
    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->r()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 211
    if-eqz v2, :cond_101

    .line 212
    iget-object v7, v1, Lcom/anddoes/launcher/kv;->a:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/anddoes/launcher/ku;->b:Lcom/anddoes/launcher/ThemeListActivity;

    invoke-static {v2, v8}, Lcom/anddoes/launcher/kw;->b(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :goto_8a
    iget-object v2, v1, Lcom/anddoes/launcher/kv;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, p0, Lcom/anddoes/launcher/ku;->b:Lcom/anddoes/launcher/ThemeListActivity;

    invoke-static {v2}, Lcom/anddoes/launcher/ThemeListActivity;->a(Lcom/anddoes/launcher/ThemeListActivity;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 218
    iget-object v2, v1, Lcom/anddoes/launcher/kv;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->d()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    :goto_a4
    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/anddoes/launcher/ku;->b:Lcom/anddoes/launcher/ThemeListActivity;

    invoke-static {v7}, Lcom/anddoes/launcher/ThemeListActivity;->c(Lcom/anddoes/launcher/ThemeListActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 223
    iget-object v7, v1, Lcom/anddoes/launcher/kv;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->e()Z

    move-result v2

    if-eqz v2, :cond_112

    move v2, v3

    :goto_bd
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    :goto_c0
    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/anddoes/launcher/ku;->b:Lcom/anddoes/launcher/ThemeListActivity;

    invoke-static {v7}, Lcom/anddoes/launcher/ThemeListActivity;->d(Lcom/anddoes/launcher/ThemeListActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 228
    iget-object v7, v1, Lcom/anddoes/launcher/kv;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->f()Z

    move-result v2

    if-eqz v2, :cond_123

    move v2, v3

    :goto_d9
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    :goto_dc
    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/anddoes/launcher/ku;->b:Lcom/anddoes/launcher/ThemeListActivity;

    invoke-static {v7}, Lcom/anddoes/launcher/ThemeListActivity;->e(Lcom/anddoes/launcher/ThemeListActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 233
    iget-object v1, v1, Lcom/anddoes/launcher/kv;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_134

    :goto_f4
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16

    .line 207
    :cond_f9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/kv;

    goto/16 :goto_79

    .line 214
    :cond_101
    iget-object v2, v1, Lcom/anddoes/launcher/kv;->a:Landroid/widget/ImageView;

    const v7, 0x7f02007d

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8a

    .line 220
    :cond_10a
    iget-object v2, v1, Lcom/anddoes/launcher/kv;->c:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a4

    :cond_112
    move v2, v4

    .line 223
    goto :goto_bd

    .line 225
    :cond_114
    iget-object v7, v1, Lcom/anddoes/launcher/kv;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->e()Z

    move-result v2

    if-eqz v2, :cond_121

    move v2, v5

    :goto_11d
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c0

    :cond_121
    move v2, v6

    goto :goto_11d

    :cond_123
    move v2, v4

    .line 228
    goto :goto_d9

    .line 230
    :cond_125
    iget-object v7, v1, Lcom/anddoes/launcher/kv;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->f()Z

    move-result v2

    if-eqz v2, :cond_132

    move v2, v5

    :goto_12e
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_dc

    :cond_132
    move v2, v6

    goto :goto_12e

    :cond_134
    move v3, v4

    .line 233
    goto :goto_f4

    .line 235
    :cond_136
    iget-object v1, v1, Lcom/anddoes/launcher/kv;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_143

    :goto_13e
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16

    :cond_143
    move v5, v6

    goto :goto_13e
.end method
