.class public final Lcom/acquariusoft/UpdateMe/f;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/widget/ListView;

.field b:Landroid/app/Dialog;

.field c:Landroid/app/Activity;

.field d:Landroid/app/Dialog;

.field e:Lcom/acquariusoft/UpdateMe/m;

.field f:Landroid/preference/PreferenceFragment;

.field g:Landroid/widget/CheckBox;

.field private h:Lcom/commonsware/cwac/tlv/e;

.field private i:Lcom/commonsware/cwac/tlv/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/preference/PreferenceFragment;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/acquariusoft/UpdateMe/g;

    invoke-direct {v0, p0}, Lcom/acquariusoft/UpdateMe/g;-><init>(Lcom/acquariusoft/UpdateMe/f;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->h:Lcom/commonsware/cwac/tlv/e;

    new-instance v0, Lcom/acquariusoft/UpdateMe/h;

    invoke-direct {v0, p0}, Lcom/acquariusoft/UpdateMe/h;-><init>(Lcom/acquariusoft/UpdateMe/f;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->i:Lcom/commonsware/cwac/tlv/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->g:Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/f;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/acquariusoft/UpdateMe/f;->f:Landroid/preference/PreferenceFragment;

    return-void
.end method

.method static synthetic a(Lcom/acquariusoft/UpdateMe/f;)Lcom/commonsware/cwac/tlv/e;
    .registers 2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->h:Lcom/commonsware/cwac/tlv/e;

    return-object v0
.end method

.method static synthetic b(Lcom/acquariusoft/UpdateMe/f;)Lcom/commonsware/cwac/tlv/f;
    .registers 2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->i:Lcom/commonsware/cwac/tlv/f;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->a:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/f;->c:Landroid/app/Activity;

    const v3, 0x1090010

    sget-object v4, Lcom/acquariusoft/UpdateMe/ao;->c:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final b()V
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/f;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->b:Landroid/app/Dialog;

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->b:Landroid/app/Dialog;

    const-string v1, "Downloads"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->b:Landroid/app/Dialog;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->a:Landroid/widget/ListView;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "red"

    aput-object v2, v0, v1

    const-string v1, "blue"

    aput-object v1, v0, v3

    const-string v1, "green"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "red"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "blue"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "green"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "red"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "blue"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "green"

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->a:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/f;->c:Landroid/app/Activity;

    const v3, 0x1090010

    sget-object v4, Lcom/acquariusoft/UpdateMe/ao;->c:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->b:Landroid/app/Dialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->b:Landroid/app/Dialog;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/acquariusoft/UpdateMe/i;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/i;-><init>(Lcom/acquariusoft/UpdateMe/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->b:Landroid/app/Dialog;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/acquariusoft/UpdateMe/j;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/j;-><init>(Lcom/acquariusoft/UpdateMe/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->b:Landroid/app/Dialog;

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/acquariusoft/UpdateMe/k;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/k;-><init>(Lcom/acquariusoft/UpdateMe/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
