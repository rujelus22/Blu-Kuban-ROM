.class Lcom/estrongs/android/pop/view/hh;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/View;

.field final synthetic b:Lcom/estrongs/android/pop/view/ff;

.field private c:Landroid/widget/EditText;

.field private d:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/view/ff;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hh;->b:Lcom/estrongs/android/pop/view/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/view/ff;Lcom/estrongs/android/pop/view/hh;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/hh;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/hh;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/hh;)Lcom/estrongs/android/pop/view/ff;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->b:Lcom/estrongs/android/pop/view/ff;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/hh;->d:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hh;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    return-void
.end method

.method a()Z
    .registers 3

    const-string v0, "com.estrongs.action.PICK_FILE"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hh;->b:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method b()Z
    .registers 3

    const-string v0, "com.estrongs.action.PICK_DIRECTORY"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hh;->b:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method c()V
    .registers 8

    const v6, 0x7f0701e6

    const v5, 0x7f0701e5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->b:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0701e3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/hh;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->a:Landroid/view/View;

    const v1, 0x7f0701e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/hh;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hh;->b:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const v2, 0x7f0902bb

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/hh;->a()Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->a:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/pop/view/hi;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/hi;-><init>(Lcom/estrongs/android/pop/view/hh;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hh;->b:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_95

    const-string v2, "com.estrongs.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.estrongs.intent.extra.BUTTON_TITLE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_90

    iget-object v3, p0, Lcom/estrongs/android/pop/view/hh;->b:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_90
    if-eqz v1, :cond_95

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_95
    :goto_95
    return-void

    :cond_96
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/hh;->b()Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->a:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Lcom/estrongs/android/pop/view/hj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/hj;-><init>(Lcom/estrongs/android/pop/view/hh;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_95

    :cond_c3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/hh;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_95
.end method
