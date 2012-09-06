.class public Lcom/anddoes/launcher/MultiPickerActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field private e:Lcom/anddoes/launcher/ds;

.field private f:Ljava/util/ArrayList;

.field private g:Landroid/view/LayoutInflater;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/anddoes/launcher/id;

.field private j:Landroid/content/Intent;

.field private k:Ljava/util/HashMap;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "extra_title"

    sput-object v0, Lcom/anddoes/launcher/MultiPickerActivity;->a:Ljava/lang/String;

    .line 36
    const-string v0, "extra_init_itemlist"

    sput-object v0, Lcom/anddoes/launcher/MultiPickerActivity;->b:Ljava/lang/String;

    .line 37
    const-string v0, "extra_result"

    sput-object v0, Lcom/anddoes/launcher/MultiPickerActivity;->c:Ljava/lang/String;

    .line 38
    const-string v0, "extra_return_arg"

    sput-object v0, Lcom/anddoes/launcher/MultiPickerActivity;->d:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->k:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/MultiPickerActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 182
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 183
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->m:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 184
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 193
    :cond_29
    return-void

    .line 178
    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 179
    iget-object v3, p0, Lcom/anddoes/launcher/MultiPickerActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 184
    :cond_3e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 185
    array-length v5, v3

    move v1, v2

    :goto_46
    if-ge v1, v5, :cond_23

    aget-object v6, v3, v1

    .line 186
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 187
    iget-object v1, p0, Lcom/anddoes/launcher/MultiPickerActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 185
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_46
.end method

.method private a(Landroid/view/View;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 161
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/anddoes/launcher/MultiPickerActivity;->k:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const v0, 0x7f080006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/anddoes/launcher/MultiPickerActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    return-void

    .line 162
    :cond_3d
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method static synthetic a(Lcom/anddoes/launcher/MultiPickerActivity;Landroid/view/View;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/anddoes/launcher/MultiPickerActivity;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic b(Lcom/anddoes/launcher/MultiPickerActivity;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Lcom/anddoes/launcher/MultiPickerActivity;)Lcom/anddoes/launcher/ds;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->e:Lcom/anddoes/launcher/ds;

    return-object v0
.end method

.method static synthetic d(Lcom/anddoes/launcher/MultiPickerActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->k:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/MultiPickerActivity;->setResult(I)V

    .line 55
    invoke-virtual {p0}, Lcom/anddoes/launcher/MultiPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    if-nez v1, :cond_10

    .line 57
    invoke-virtual {p0}, Lcom/anddoes/launcher/MultiPickerActivity;->finish()V

    .line 59
    :cond_10
    sget-object v0, Lcom/anddoes/launcher/MultiPickerActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->l:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/anddoes/launcher/MultiPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    .line 61
    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherApplication;->a()Lcom/anddoes/launcher/ds;

    move-result-object v2

    iput-object v2, p0, Lcom/anddoes/launcher/MultiPickerActivity;->e:Lcom/anddoes/launcher/ds;

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherApplication;->b()Lcom/anddoes/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherModel;->a()Lcom/anddoes/launcher/h;

    move-result-object v0

    iget-object v0, v0, Lcom/anddoes/launcher/h;->a:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/anddoes/launcher/MultiPickerActivity;->f:Ljava/util/ArrayList;

    .line 63
    sget-object v0, Lcom/anddoes/launcher/MultiPickerActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->m:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->m:Ljava/lang/String;

    if-nez v0, :cond_45

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->m:Ljava/lang/String;

    .line 67
    :cond_45
    invoke-direct {p0}, Lcom/anddoes/launcher/MultiPickerActivity;->a()V

    .line 69
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/MultiPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->g:Landroid/view/LayoutInflater;

    .line 70
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/MultiPickerActivity;->setContentView(I)V

    .line 71
    sget-object v0, Lcom/anddoes/launcher/MultiPickerActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_63

    .line 73
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/MultiPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    :cond_63
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/MultiPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->h:Landroid/widget/ListView;

    .line 77
    new-instance v0, Lcom/anddoes/launcher/id;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/id;-><init>(Lcom/anddoes/launcher/MultiPickerActivity;)V

    iput-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->i:Lcom/anddoes/launcher/id;

    .line 78
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/anddoes/launcher/MultiPickerActivity;->i:Lcom/anddoes/launcher/id;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->h:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 80
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 82
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 93
    const/4 v0, 0x1

    const v1, 0x7f060008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 95
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 96
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->j:Landroid/content/Intent;

    if-eqz v0, :cond_21

    .line 97
    const/4 v0, 0x3

    const v1, 0x7f06000c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 99
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 109
    :goto_1c
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 103
    :cond_21
    const/4 v0, 0x2

    const v1, 0x7f06000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 105
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1c
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    if-ltz p3, :cond_d

    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_d

    .line 143
    invoke-direct {p0, p2, p3}, Lcom/anddoes/launcher/MultiPickerActivity;->a(Landroid/view/View;I)V

    .line 145
    :cond_d
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 150
    if-ltz p3, :cond_1d

    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_1d

    .line 151
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 152
    iget-object v0, v0, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    iput-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->j:Landroid/content/Intent;

    .line 153
    invoke-virtual {p2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/anddoes/launcher/MultiPickerActivity;->invalidateOptionsMenu()V

    .line 156
    :cond_1d
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 116
    :pswitch_d
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->j:Landroid/content/Intent;

    if-eqz v0, :cond_1d

    .line 118
    :try_start_11
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->j:Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->j:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/MultiPickerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_1f

    :cond_1d
    :goto_1d
    move v0, v1

    .line 124
    goto :goto_c

    .line 121
    :catch_1f
    move-exception v0

    const v0, 0x7f06016e

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1d

    .line 126
    :pswitch_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_69

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4b

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/anddoes/launcher/MultiPickerActivity;->l:Ljava/lang/String;

    if-eqz v3, :cond_5b

    sget-object v3, Lcom/anddoes/launcher/MultiPickerActivity;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/anddoes/launcher/MultiPickerActivity;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5b
    sget-object v3, Lcom/anddoes/launcher/MultiPickerActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/anddoes/launcher/MultiPickerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/anddoes/launcher/MultiPickerActivity;->finish()V

    move v0, v1

    .line 127
    goto :goto_c

    .line 126
    :cond_69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 129
    :pswitch_8b
    iget-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->j:Landroid/content/Intent;

    if-eqz v0, :cond_98

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/MultiPickerActivity;->j:Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Lcom/anddoes/launcher/MultiPickerActivity;->invalidateOptionsMenu()V

    :goto_95
    move v0, v1

    .line 135
    goto/16 :goto_c

    .line 133
    :cond_98
    invoke-virtual {p0}, Lcom/anddoes/launcher/MultiPickerActivity;->finish()V

    goto :goto_95

    .line 114
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_2c
        :pswitch_d
    .end packed-switch
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 87
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/MultiPicker"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 88
    return-void
.end method
