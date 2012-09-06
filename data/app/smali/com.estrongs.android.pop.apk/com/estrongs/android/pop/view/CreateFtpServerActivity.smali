.class public Lcom/estrongs/android/pop/view/CreateFtpServerActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:I

.field private D:I

.field a:Landroid/widget/CheckBox;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/RadioButton;

.field private i:Landroid/widget/RadioButton;

.field private j:Landroid/widget/RadioButton;

.field private k:Landroid/widget/RadioButton;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/widget/TableRow;

.field private s:Landroid/widget/TableRow;

.field private t:Landroid/widget/TableRow;

.field private u:Landroid/widget/TableRow;

.field private v:Landroid/widget/TableRow;

.field private w:Z

.field private x:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private y:Landroid/os/Handler;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->b:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->d:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->e:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->f:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->g:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->h:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->i:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->j:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->k:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->l:Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->m:Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->n:Landroid/widget/Button;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->o:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->q:Z

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->r:Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->s:Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->t:Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->u:Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->v:Landroid/widget/TableRow;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    new-instance v0, Lcom/estrongs/android/pop/view/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/l;-><init>(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->x:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->y:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/view/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/m;-><init>(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->z:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/view/p;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/p;-><init>(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->A:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/s;-><init>(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->B:Landroid/view/View$OnClickListener;

    iput v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->C:I

    iput v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->D:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .registers 11

    const/4 v7, 0x0

    const/16 v5, 0x3de

    const/16 v9, 0x2f

    const/16 v4, 0x16

    const/16 v6, 0x15

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    move-object v0, v7

    :goto_1e
    return-object v0

    :cond_1f
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->q:Z

    if-eqz v1, :cond_6a

    const-string v1, "ftps://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ftpes://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_34
    const v0, 0x7f070155

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/16 v3, 0x50

    const-string v2, "webdav://"

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1c9

    const/16 v2, 0x1bb

    const-string v0, "webdavs://"

    :goto_4b
    new-instance v3, Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    if-eqz v8, :cond_a0

    const-string v0, "sftp://"

    :cond_53
    :goto_53
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9

    move-object v0, v1

    goto :goto_1e

    :cond_6a
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    if-eqz v1, :cond_78

    const-string v1, "sftp://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_34

    :cond_78
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    if-eqz v1, :cond_96

    const-string v1, "http://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    const-string v1, "https://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_34

    :cond_96
    const-string v1, "ftp://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_34

    :cond_a0
    iget-boolean v8, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    if-nez v8, :cond_53

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->q:Z

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string v0, "ftps://"

    goto :goto_53

    :cond_b3
    const-string v0, "ftpes://"

    goto :goto_53

    :cond_b6
    const-string v0, "ftp://"

    goto :goto_53

    :cond_b9
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    if-eqz v0, :cond_13e

    :cond_bd
    :goto_bd
    :try_start_bd
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ce
    .catch Ljava/lang/NumberFormatException; {:try_start_bd .. :try_end_ce} :catch_148

    move-result v0

    :goto_cf
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    if-eqz v8, :cond_160

    :goto_d8
    if-eq v0, v4, :cond_f7

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_171

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f7
    :goto_f7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v9, :cond_108

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_108
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_114

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    if-eqz v0, :cond_1c3

    :cond_114
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_134

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_197

    :cond_134
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    if-eqz v0, :cond_185

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    :cond_13e
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    if-nez v0, :cond_bd

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->q:Z

    if-eqz v0, :cond_bd

    goto/16 :goto_bd

    :catch_148
    move-exception v0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    if-eqz v0, :cond_14f

    move v0, v4

    goto :goto_cf

    :cond_14f
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    if-eqz v0, :cond_156

    move v0, v2

    goto/16 :goto_cf

    :cond_156
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->q:Z

    if-eqz v0, :cond_15d

    move v0, v5

    goto/16 :goto_cf

    :cond_15d
    move v0, v6

    goto/16 :goto_cf

    :cond_160
    iget-boolean v4, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    if-eqz v4, :cond_167

    move v4, v2

    goto/16 :goto_d8

    :cond_167
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->q:Z

    if-eqz v2, :cond_16e

    move v4, v5

    goto/16 :goto_d8

    :cond_16e
    move v4, v6

    goto/16 :goto_d8

    :cond_171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_f7

    :cond_185
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v7

    goto/16 :goto_1e

    :cond_197
    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1c3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    :cond_1c9
    move-object v0, v2

    move v2, v3

    goto/16 :goto_4b

    :cond_1cd
    move-object v1, v0

    goto/16 :goto_34
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->C:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/c;->a(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->C:I

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/c;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_16
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/c;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->C:I

    return-void

    :cond_21
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_16
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    :try_start_9
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    if-eqz v2, :cond_12

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_8

    :cond_12
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    if-eqz v2, :cond_1e

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/fs/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8

    :cond_1e
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_27

    move v0, v1

    goto :goto_8

    :catch_27
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->o:Z

    return v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->C:I

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14

    const/16 v11, 0xf

    const/4 v10, 0x2

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-super {p0, v7}, Lcom/estrongs/android/pop/esclasses/ESActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030031

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setContentView(I)V

    const v0, 0x7f07014c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f07014e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f070157

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f070159

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f07015b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->g:Landroid/widget/CheckBox;

    const v0, 0x7f070165

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f070153

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->h:Landroid/widget/RadioButton;

    const v0, 0x7f070152

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->i:Landroid/widget/RadioButton;

    const v0, 0x7f070163

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->n:Landroid/widget/Button;

    const v0, 0x7f0700c2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->l:Landroid/widget/Button;

    const v0, 0x7f070166

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->g:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->x:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07015c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->v:Landroid/widget/TableRow;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->v:Landroid/widget/TableRow;

    invoke-virtual {v0, v9}, Landroid/widget/TableRow;->setVisibility(I)V

    const v0, 0x7f07015f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->j:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->j:Landroid/widget/RadioButton;

    const v1, 0x7f0902bd

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    const v0, 0x7f070160

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->k:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->k:Landroid/widget/RadioButton;

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->k:Landroid/widget/RadioButton;

    const v1, 0x7f0902bc

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    const v0, 0x7f07014f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->r:Landroid/widget/TableRow;

    const v0, 0x7f07015a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->s:Landroid/widget/TableRow;

    const v0, 0x7f070161

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->t:Landroid/widget/TableRow;

    const v0, 0x7f070154

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->u:Landroid/widget/TableRow;

    const v0, 0x7f070155

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/estrongs/android/pop/view/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/t;-><init>(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_202

    const-string v0, "type"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_263

    const-string v1, "sftp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_263

    iput-boolean v7, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    :cond_145
    :goto_145
    const-string v0, "path"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_304

    iput-boolean v7, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->o:Z

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_289

    iput-boolean v7, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->q:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->v:Landroid/widget/TableRow;

    invoke-virtual {v0, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    const-string v0, "ftpes://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->k:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_16e
    :goto_16e
    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_186

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_186

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_186

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_358

    :cond_186
    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19f
    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "port"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pwd"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "display"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_2b6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2b6

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1c9
    :goto_1c9
    if-eqz v3, :cond_2f4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f4

    const-string v0, "path"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1e8
    if-eqz v4, :cond_1f5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1f5
    if-eqz v5, :cond_202

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_202

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_202
    :goto_202
    new-array v0, v10, [I

    fill-array-data v0, :array_35c

    new-array v1, v10, [I

    fill-array-data v1, :array_364

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->b([I[I)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    if-nez v0, :cond_21b

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    if-nez v0, :cond_21b

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->q:Z

    if-eqz v0, :cond_34d

    :cond_21b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->q:Z

    if-eqz v0, :cond_32b

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->o:Z

    if-nez v0, :cond_232

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_232
    :goto_232
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->s:Landroid/widget/TableRow;

    invoke-virtual {v0, v9}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    if-eqz v0, :cond_332

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_250
    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_255
    :goto_255
    new-array v0, v11, [I

    fill-array-data v0, :array_36c

    new-array v1, v11, [I

    fill-array-data v1, :array_38e

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->a([I[I)V

    return-void

    :cond_263
    if-eqz v0, :cond_276

    const-string v1, "webdav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_276

    iput-boolean v7, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->u:Landroid/widget/TableRow;

    invoke-virtual {v0, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    goto/16 :goto_145

    :cond_276
    if-eqz v0, :cond_145

    const-string v1, "ftps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    iput-boolean v7, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->q:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->v:Landroid/widget/TableRow;

    invoke-virtual {v0, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    goto/16 :goto_145

    :cond_289
    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_293

    iput-boolean v7, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    goto/16 :goto_16e

    :cond_293
    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16e

    iput-boolean v7, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->u:Landroid/widget/TableRow;

    invoke-virtual {v0, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    const-string v0, "webdav://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2af

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_16e

    :cond_2af
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_16e

    :cond_2b6
    if-nez v0, :cond_2c5

    iget-boolean v6, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    if-eqz v6, :cond_2c5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c:Landroid/widget/EditText;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c9

    :cond_2c5
    if-nez v0, :cond_2e5

    iget-boolean v6, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    if-eqz v6, :cond_2e5

    const-string v0, "webdav://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2dc

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c:Landroid/widget/EditText;

    const-string v1, "80"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c9

    :cond_2dc
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c:Landroid/widget/EditText;

    const-string v1, "443"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c9

    :cond_2e5
    if-nez v0, :cond_1c9

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->q:Z

    if-eqz v0, :cond_1c9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c:Landroid/widget/EditText;

    const-string v1, "990"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c9

    :cond_2f4
    const-string v0, "path"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1e8

    :cond_304
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->p:Z

    if-eqz v0, :cond_311

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c:Landroid/widget/EditText;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_202

    :cond_311
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    if-eqz v0, :cond_31e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c:Landroid/widget/EditText;

    const-string v1, "80"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_202

    :cond_31e
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->q:Z

    if-eqz v0, :cond_202

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->c:Landroid/widget/EditText;

    const-string v1, "990"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_202

    :cond_32b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->r:Landroid/widget/TableRow;

    invoke-virtual {v0, v9}, Landroid/widget/TableRow;->setVisibility(I)V

    goto/16 :goto_232

    :cond_332
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->w:Z

    if-eqz v0, :cond_344

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->t:Landroid/widget/TableRow;

    invoke-virtual {v0, v9}, Landroid/widget/TableRow;->setVisibility(I)V

    const v0, 0x7f090288

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_250

    :cond_344
    const v0, 0x7f090289

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_250

    :cond_34d
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->o:Z

    if-nez v0, :cond_255

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_255

    :cond_358
    move-object v0, v1

    goto/16 :goto_19f

    nop

    :array_35c
    .array-data 0x4
        0x4ct 0x1t 0x7t 0x7ft
        0x65t 0x1t 0x7t 0x7ft
    .end array-data

    :array_364
    .array-data 0x4
        0xfdt 0x0t 0x9t 0x7ft
        0xcft 0x0t 0x9t 0x7ft
    .end array-data

    :array_36c
    .array-data 0x4
        0x4bt 0x1t 0x7t 0x7ft
        0x4dt 0x1t 0x7t 0x7ft
        0x50t 0x1t 0x7t 0x7ft
        0x52t 0x1t 0x7t 0x7ft
        0x53t 0x1t 0x7t 0x7ft
        0x55t 0x1t 0x7t 0x7ft
        0x56t 0x1t 0x7t 0x7ft
        0x58t 0x1t 0x7t 0x7ft
        0x5bt 0x1t 0x7t 0x7ft
        0x62t 0x1t 0x7t 0x7ft
        0x63t 0x1t 0x7t 0x7ft
        0x64t 0x1t 0x7t 0x7ft
        0x66t 0x1t 0x7t 0x7ft
        0xc2t 0x0t 0x7t 0x7ft
        0x5dt 0x1t 0x7t 0x7ft
    .end array-data

    :array_38e
    .array-data 0x4
        0x35t 0x0t 0x9t 0x7ft
        0xd8t 0x0t 0x9t 0x7ft
        0xe4t 0x0t 0x9t 0x7ft
        0xe6t 0x0t 0x9t 0x7ft
        0xe5t 0x0t 0x9t 0x7ft
        0xd9t 0x0t 0x9t 0x7ft
        0x37t 0x0t 0x9t 0x7ft
        0x38t 0x0t 0x9t 0x7ft
        0x39t 0x0t 0x9t 0x7ft
        0xfet 0x0t 0x9t 0x7ft
        0xfft 0x0t 0x9t 0x7ft
        0xcet 0x0t 0x9t 0x7ft
        0x5et 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
        0x8at 0x2t 0x9t 0x7ft
    .end array-data
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method
