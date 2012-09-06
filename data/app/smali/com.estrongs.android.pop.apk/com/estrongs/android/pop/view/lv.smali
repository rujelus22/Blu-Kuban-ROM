.class abstract Lcom/estrongs/android/pop/view/lv;
.super Ljava/lang/Object;


# instance fields
.field protected e:I

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Landroid/widget/Spinner;

.field protected i:I

.field final synthetic j:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;Landroid/widget/Spinner;I)V
    .registers 7

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lv;->j:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/view/lv;->e:I

    iput v0, p0, Lcom/estrongs/android/pop/view/lv;->i:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/lv;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lv;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/estrongs/android/pop/view/lv;->f:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/lv;->g:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lv;->g:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lv;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v0, Lcom/estrongs/android/pop/view/lw;

    invoke-direct {v0, p0, p2}, Lcom/estrongs/android/pop/view/lw;-><init>(Lcom/estrongs/android/pop/view/lv;Landroid/widget/Spinner;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lv;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/lv;->e:I

    iput-object p2, p0, Lcom/estrongs/android/pop/view/lv;->h:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lv;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected a([Ljava/lang/String;Ljava/lang/String;II)Landroid/app/AlertDialog$Builder;
    .registers 13

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lv;->j:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    const v1, 0x7f030045

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->a(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    const v1, 0x7f070207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/lv;->j:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    array-length v1, p1

    if-lez v1, :cond_41

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_41
    const v1, 0x7f070204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v1, 0x7f070206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    if-le p3, v6, :cond_65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_65
    if-le p4, v6, :cond_77

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_77
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lv;->j:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020102

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f09005e

    new-instance v0, Lcom/estrongs/android/pop/view/lx;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/view/lx;-><init>(Lcom/estrongs/android/pop/view/lv;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    new-instance v2, Lcom/estrongs/android/pop/view/ly;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/ly;-><init>(Lcom/estrongs/android/pop/view/lv;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/lz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/lz;-><init>(Lcom/estrongs/android/pop/view/lv;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    return-object v6
.end method

.method abstract a(ILjava/lang/Object;)V
.end method

.method protected a(ILjava/lang/String;ILjava/lang/String;)V
    .registers 8

    const-string v0, ""

    if-lez p1, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-lez p3, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4b
    iget-object v1, p0, Lcom/estrongs/android/pop/view/lv;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/lv;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lv;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/lv;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/estrongs/android/pop/view/lv;->i:I

    return-void
.end method
