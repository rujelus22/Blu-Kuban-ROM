.class public Lcom/estrongs/android/pop/view/NewUserView;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Z

.field private h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->a:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->b:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->c:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->d:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->e:Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->f:Landroid/widget/Button;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->g:Z

    new-instance v0, Lcom/estrongs/android/pop/view/il;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/il;-><init>(Lcom/estrongs/android/pop/view/NewUserView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/estrongs/android/pop/view/im;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/im;-><init>(Lcom/estrongs/android/pop/view/NewUserView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/view/in;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/in;-><init>(Lcom/estrongs/android/pop/view/NewUserView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/NewUserView;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->c:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/NewUserView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/NewUserView;->g:Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/NewUserView;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/NewUserView;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/NewUserView;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->d:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x6

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f09002f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/NewUserView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f030035

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setContentView(I)V

    const v0, 0x7f070157

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/NewUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->a:Landroid/widget/EditText;

    const v0, 0x7f070159

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/NewUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->b:Landroid/widget/EditText;

    const v0, 0x7f07015b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/NewUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->c:Landroid/widget/CheckBox;

    const v0, 0x7f07018f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/NewUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->d:Landroid/widget/CheckBox;

    const v0, 0x7f0700c2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/NewUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->e:Landroid/widget/Button;

    const v0, 0x7f070166

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/NewUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->c:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/NewUserView;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/NewUserView;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/NewUserView;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v2, [I

    fill-array-data v0, :array_a2

    new-array v1, v2, [I

    fill-array-data v1, :array_b2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/NewUserView;->a([I[I)V

    return-void

    nop

    :array_a2
    .array-data 0x4
        0x8dt 0x1t 0x7t 0x7ft
        0x8et 0x1t 0x7t 0x7ft
        0x5bt 0x1t 0x7t 0x7ft
        0x8ft 0x1t 0x7t 0x7ft
        0x66t 0x1t 0x7t 0x7ft
        0xc2t 0x0t 0x7t 0x7ft
    .end array-data

    :array_b2
    .array-data 0x4
        0x37t 0x0t 0x9t 0x7ft
        0x38t 0x0t 0x9t 0x7ft
        0x39t 0x0t 0x9t 0x7ft
        0x3at 0x0t 0x9t 0x7ft
        0x5et 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public onDestroy()V
    .registers 5

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/NewUserView;->g:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ZJ)I

    :cond_16
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method
