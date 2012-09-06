.class public Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;
.super Landroid/app/Activity;


# instance fields
.field public a:Z

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->a:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->b:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "light_theme"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->f:Z

    if-eqz v0, :cond_15

    const v0, 0x103000c

    invoke-super {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->setContentView(I)V

    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/acquariusoft/UpdateMe/activity/a;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/activity/a;-><init>(Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/acquariusoft/UpdateMe/activity/b;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/activity/b;-><init>(Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/b/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/b/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_88

    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/acquariusoft/UpdateMe/activity/c;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/activity/c;-><init>(Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void

    :cond_88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/b/b;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->b:Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5f
.end method
