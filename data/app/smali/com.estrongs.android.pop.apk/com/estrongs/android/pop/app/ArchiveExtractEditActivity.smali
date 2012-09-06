.class public Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/io/File;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ".*part[0-9]+\\.rar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "part"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_15
    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/16 v2, 0x8

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070044

    if-ne v0, v1, :cond_73

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iput v5, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->d:I

    :cond_18
    :goto_18
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070046

    if-ne v0, v1, :cond_30

    new-instance v0, Lcom/estrongs/android/util/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->f:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/pop/app/b;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/b;-><init>(Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/util/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/util/e;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->a()V

    :cond_30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070034

    if-ne v0, v1, :cond_20f

    iget v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->d:I

    if-ne v0, v5, :cond_186

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    if-nez v0, :cond_dc

    const-string v0, ""

    :goto_4f
    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_e4

    const v0, 0x7f09014a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->b:Landroid/widget/EditText;

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_72
    :goto_72
    return-void

    :cond_73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070043

    if-ne v0, v1, :cond_94

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iput v3, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->d:I

    goto :goto_18

    :cond_94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070042

    if-ne v0, v1, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->d:I

    goto/16 :goto_18

    :cond_dc
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4f

    :cond_e4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_156

    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_136

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->b:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/"

    const-string v3, "/sdcard/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    :cond_136
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->b:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    :cond_156
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/a/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_186

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f09014f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0902eb

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_72

    :cond_186
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wait_for_output_path"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "output_path_type"

    iget v2, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->d:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "output_path"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "not_ask_more"

    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->setResult(ILandroid/content/Intent;)V

    :goto_1bb
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_1cd

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    :cond_1cd
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->finish()V

    goto/16 :goto_72

    :cond_1d2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "output_path"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "charset_name"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->c:Landroid/widget/EditText;

    if-eqz v1, :cond_1fc

    const-string v1, "password"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1fc
    const-string v1, "reload"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1bb

    :cond_20f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070035

    if-ne v0, v1, :cond_72

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->finish()V

    goto/16 :goto_72
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x7

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->setContentView(I)V

    const v0, 0x7f090154

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "archive_file"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->a:Ljava/io/File;

    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->b:Landroid/widget/EditText;

    const-string v2, "/sdcard/"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->b:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "charset_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->f:Ljava/lang/String;

    if-nez v0, :cond_c6

    const-string v0, "AUTO"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->f:Ljava/lang/String;

    :cond_c6
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/estrongs/android/util/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->e:Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_11c

    new-array v1, v4, [I

    fill-array-data v1, :array_12e

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;->a([I[I)V

    return-void

    nop

    :array_11c
    .array-data 0x4
        0x43t 0x0t 0x7t 0x7ft
        0x44t 0x0t 0x7t 0x7ft
        0x45t 0x0t 0x7t 0x7ft
        0x32t 0x0t 0x7t 0x7ft
        0x47t 0x0t 0x7t 0x7ft
        0x34t 0x0t 0x7t 0x7ft
        0x35t 0x0t 0x7t 0x7ft
    .end array-data

    :array_12e
    .array-data 0x4
        0x43t 0x1t 0x9t 0x7ft
        0x44t 0x1t 0x9t 0x7ft
        0x62t 0x0t 0x9t 0x7ft
        0xa6t 0x1t 0x9t 0x7ft
        0x45t 0x1t 0x9t 0x7ft
        0x5et 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data
.end method
