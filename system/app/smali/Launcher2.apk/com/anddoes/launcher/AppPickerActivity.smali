.class public Lcom/anddoes/launcher/AppPickerActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# instance fields
.field public i:Lcom/anddoes/launcher/preference/h;

.field private j:Lcom/anddoes/launcher/ds;

.field private k:Ljava/util/List;

.field private l:Landroid/view/LayoutInflater;

.field private m:Landroid/widget/ListView;

.field private n:Lcom/anddoes/launcher/q;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "extra_name_key"

    sput-object v0, Lcom/anddoes/launcher/AppPickerActivity;->a:Ljava/lang/String;

    .line 37
    const-string v0, "extra_name_value"

    sput-object v0, Lcom/anddoes/launcher/AppPickerActivity;->b:Ljava/lang/String;

    .line 39
    const-string v0, "extra_init_pkgname"

    sput-object v0, Lcom/anddoes/launcher/AppPickerActivity;->c:Ljava/lang/String;

    .line 40
    const-string v0, "extra_init_actname"

    sput-object v0, Lcom/anddoes/launcher/AppPickerActivity;->d:Ljava/lang/String;

    .line 42
    const-string v0, "extra_intent_key"

    sput-object v0, Lcom/anddoes/launcher/AppPickerActivity;->e:Ljava/lang/String;

    .line 43
    const-string v0, "extra_intent_value"

    sput-object v0, Lcom/anddoes/launcher/AppPickerActivity;->f:Ljava/lang/String;

    .line 45
    const-string v0, "extra_component_name_key"

    sput-object v0, Lcom/anddoes/launcher/AppPickerActivity;->g:Ljava/lang/String;

    .line 46
    const-string v0, "extra_component_name_value"

    sput-object v0, Lcom/anddoes/launcher/AppPickerActivity;->h:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->o:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->p:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->q:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->r:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->s:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->t:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->u:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->v:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->o:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->p:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->r:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->v:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->t:Ljava/lang/String;

    move v1, v2

    .line 155
    :goto_d
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_16

    .line 163
    return-void

    .line 156
    :cond_16
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->n:Lcom/anddoes/launcher/q;

    iget-object v0, v0, Lcom/anddoes/launcher/q;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 157
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->n:Lcom/anddoes/launcher/q;

    iget-object v0, v0, Lcom/anddoes/launcher/q;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 159
    :cond_27
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_41

    .line 160
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f080006

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 155
    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d
.end method

.method private a(I)V
    .registers 5
    .parameter

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/anddoes/launcher/AppPickerActivity;->a()V

    .line 169
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 170
    iget-object v1, v0, Lcom/anddoes/launcher/y;->b:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->r:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->n:Lcom/anddoes/launcher/q;

    iget-object v1, v1, Lcom/anddoes/launcher/q;->a:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 173
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->v:Ljava/lang/String;

    .line 174
    iget-object v1, v0, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    if-eqz v1, :cond_2e

    .line 175
    iget-object v0, v0, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->t:Ljava/lang/String;

    .line 179
    :goto_2d
    return-void

    .line 177
    :cond_2e
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->t:Ljava/lang/String;

    goto :goto_2d
.end method

.method static synthetic a(Lcom/anddoes/launcher/AppPickerActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppPickerActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/AppPickerActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/anddoes/launcher/AppPickerActivity;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/anddoes/launcher/AppPickerActivity;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->l:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/AppPickerActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/anddoes/launcher/AppPickerActivity;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/anddoes/launcher/AppPickerActivity;)Lcom/anddoes/launcher/ds;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->j:Lcom/anddoes/launcher/ds;

    return-object v0
.end method

.method static synthetic c(Lcom/anddoes/launcher/AppPickerActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/anddoes/launcher/AppPickerActivity;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/anddoes/launcher/AppPickerActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/anddoes/launcher/AppPickerActivity;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppPickerActivity;->setResult(I)V

    .line 72
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    if-nez v0, :cond_10

    .line 74
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppPickerActivity;->finish()V

    .line 77
    :cond_10
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->o:Ljava/lang/String;

    .line 78
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->p:Ljava/lang/String;

    .line 80
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->q:Ljava/lang/String;

    .line 81
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->r:Ljava/lang/String;

    .line 82
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->s:Ljava/lang/String;

    .line 83
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->t:Ljava/lang/String;

    .line 84
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->u:Ljava/lang/String;

    .line 85
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->v:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/anddoes/launcher/preference/h;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->i:Lcom/anddoes/launcher/preference/h;

    .line 88
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    .line 89
    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherApplication;->a()Lcom/anddoes/launcher/ds;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->j:Lcom/anddoes/launcher/ds;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherApplication;->b()Lcom/anddoes/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherModel;->a()Lcom/anddoes/launcher/h;

    move-result-object v0

    iget-object v0, v0, Lcom/anddoes/launcher/h;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->k:Ljava/util/List;

    .line 92
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->l:Landroid/view/LayoutInflater;

    .line 93
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppPickerActivity;->setContentView(I)V

    .line 94
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->m:Landroid/widget/ListView;

    .line 95
    new-instance v0, Lcom/anddoes/launcher/q;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/q;-><init>(Lcom/anddoes/launcher/AppPickerActivity;)V

    iput-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->n:Lcom/anddoes/launcher/q;

    .line 96
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/anddoes/launcher/AppPickerActivity;->n:Lcom/anddoes/launcher/q;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->m:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 98
    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 114
    const/4 v0, 0x1

    const v1, 0x7f060008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 115
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 116
    const/4 v0, 0x2

    const v1, 0x7f060009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 117
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 118
    const/4 v0, 0x3

    const v1, 0x7f060007

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 119
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    if-ltz p3, :cond_1a

    iget-object v0, p0, Lcom/anddoes/launcher/AppPickerActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1a

    .line 142
    invoke-direct {p0, p3}, Lcom/anddoes/launcher/AppPickerActivity;->a(I)V

    .line 143
    const v0, 0x7f080006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 145
    :cond_1a
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_5c

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 127
    :pswitch_d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/anddoes/launcher/AppPickerActivity;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    sget-object v2, Lcom/anddoes/launcher/AppPickerActivity;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/anddoes/launcher/AppPickerActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/anddoes/launcher/AppPickerActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anddoes/launcher/AppPickerActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_28
    sget-object v2, Lcom/anddoes/launcher/AppPickerActivity;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/anddoes/launcher/AppPickerActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/anddoes/launcher/AppPickerActivity;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/anddoes/launcher/AppPickerActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/anddoes/launcher/AppPickerActivity;->s:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    sget-object v2, Lcom/anddoes/launcher/AppPickerActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/anddoes/launcher/AppPickerActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/anddoes/launcher/AppPickerActivity;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/anddoes/launcher/AppPickerActivity;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4c
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/anddoes/launcher/AppPickerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/anddoes/launcher/AppPickerActivity;->finish()V

    goto :goto_c

    .line 130
    :pswitch_54
    invoke-direct {p0}, Lcom/anddoes/launcher/AppPickerActivity;->a()V

    goto :goto_c

    .line 133
    :pswitch_58
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppPickerActivity;->finish()V

    goto :goto_c

    .line 125
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_58
        :pswitch_54
        :pswitch_d
    .end packed-switch
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 104
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/AppPicker"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 105
    return-void
.end method
