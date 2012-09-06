.class public Lcom/estrongs/android/pop/view/CreateSmbServerActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Z

.field private j:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/os/Handler;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->a:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->b:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->c:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->d:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->e:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->f:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->g:Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->h:Landroid/widget/Button;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->i:Z

    new-instance v0, Lcom/estrongs/android/pop/view/as;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/as;-><init>(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->j:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/estrongs/android/pop/view/at;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/at;-><init>(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->l:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/view/au;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/au;-><init>(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->m:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/view/ax;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/ax;-><init>(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->f:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    :goto_16
    return-object v1

    :cond_17
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2e

    :cond_2d
    move-object v0, v1

    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smb://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    move-object v1, v2

    goto :goto_16

    :cond_53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_74

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_74
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_ec

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_a1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_b2

    :cond_a1
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_16

    :cond_b2
    if-nez v0, :cond_f2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v5, "%20"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v4, "%20"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_ec
    :goto_ec
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_16

    :cond_f2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "+"

    const-string v6, "%20"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v5, "%20"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v4, "%20"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ec
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    :try_start_f
    new-instance v2, Ljcifs/smb/ba;

    invoke-direct {v2, p1}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/ba;->s()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {v2}, Ljcifs/smb/ba;->v()Z
    :try_end_1d
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_1d} :catch_2c
    .catch Ljcifs/smb/SmbException; {:try_start_f .. :try_end_1d} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_1d} :catch_22

    move-result v2

    if-eqz v2, :cond_8

    :cond_20
    move v0, v1

    goto :goto_8

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move v0, v1

    goto :goto_8

    :cond_28
    move v0, v1

    goto :goto_8

    :catch_2a
    move-exception v1

    goto :goto_8

    :catch_2c
    move-exception v1

    goto :goto_8
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->i:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/16 v9, 0xa

    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0900d7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f030034

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setContentView(I)V

    const v0, 0x7f070186

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->a:Landroid/widget/EditText;

    const v0, 0x7f07014c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f070157

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f070159

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f07015b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->f:Landroid/widget/CheckBox;

    const v0, 0x7f070165

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0700c2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->g:Landroid/widget/Button;

    const v0, 0x7f070166

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->f:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->j:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_105

    const-string v0, "path"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_105

    iput-boolean v6, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->i:Z

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_125

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_b6
    :goto_b6
    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c1

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_c1
    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "user"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pwd"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_12a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12a

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->f:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_eb
    if-eqz v2, :cond_f8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_f8
    if-eqz v1, :cond_105

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_105

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_105
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    new-array v0, v9, [I

    fill-array-data v0, :array_130

    new-array v1, v9, [I

    fill-array-data v1, :array_148

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->a([I[I)V

    new-array v0, v7, [I

    fill-array-data v0, :array_160

    new-array v1, v7, [I

    fill-array-data v1, :array_16a

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->b([I[I)V

    return-void

    :cond_125
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    :cond_12a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_eb

    :array_130
    .array-data 0x4
        0x85t 0x1t 0x7t 0x7ft
        0x87t 0x1t 0x7t 0x7ft
        0x88t 0x1t 0x7t 0x7ft
        0x89t 0x1t 0x7t 0x7ft
        0x8at 0x1t 0x7t 0x7ft
        0x8bt 0x1t 0x7t 0x7ft
        0x5bt 0x1t 0x7t 0x7ft
        0x8ct 0x1t 0x7t 0x7ft
        0x66t 0x1t 0x7t 0x7ft
        0xc2t 0x0t 0x7t 0x7ft
    .end array-data

    :array_148
    .array-data 0x4
        0xd5t 0x1t 0x9t 0x7ft
        0x35t 0x0t 0x9t 0x7ft
        0x36t 0x0t 0x9t 0x7ft
        0xe5t 0x2t 0x9t 0x7ft
        0x37t 0x0t 0x9t 0x7ft
        0x38t 0x0t 0x9t 0x7ft
        0x39t 0x0t 0x9t 0x7ft
        0xcet 0x0t 0x9t 0x7ft
        0x5et 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data

    :array_160
    .array-data 0x4
        0x86t 0x1t 0x7t 0x7ft
        0x4ct 0x1t 0x7t 0x7ft
        0x65t 0x1t 0x7t 0x7ft
    .end array-data

    :array_16a
    .array-data 0x4
        0xd6t 0x1t 0x9t 0x7ft
        0xcdt 0x0t 0x9t 0x7ft
        0xcft 0x0t 0x9t 0x7ft
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
