.class Lcom/estrongs/android/pop/view/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-eq v3, v4, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    aget-object v2, v2, v1

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lt v3, v4, :cond_c

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    const-string v3, "[a-zA-z]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_c
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    const v9, 0x7f0901b1

    const/4 v2, 0x6

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->a(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->c(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->d(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->e(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_5b

    if-eqz v4, :cond_5b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6b

    :cond_5b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-virtual {v1, v9}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_6a
    return-void

    :cond_6b
    const-string v0, "ubuntu"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    const-string v0, "s3"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    const-string v0, "vdisk"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/view/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    const v2, 0x7f0901b5

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6a

    :cond_ae
    const-string v0, "kanbox"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_ca

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x22

    if-le v0, v1, :cond_dd

    :cond_ca
    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    const v2, 0x7f09020d

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6a

    :cond_dd
    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->g(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)I

    move-result v0

    if-ne v0, v8, :cond_167

    const-string v0, "dropbox"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_114

    if-eqz v5, :cond_103

    if-eqz v6, :cond_103

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_103

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_167

    :cond_103
    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-virtual {v1, v9}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6a

    :cond_114
    const-string v0, "kanbox"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_130

    const-string v0, "kuaipan"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    :cond_130
    if-eqz v7, :cond_138

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_145

    :cond_138
    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    const-string v1, "Please input the verify code"

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6a

    :cond_145
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_153

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_167

    :cond_153
    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    const v2, 0x7f090253

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6a

    :cond_167
    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->h(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/z;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    const v1, 0x7f090059

    const v8, 0x7f09005a

    invoke-static {v0, v1, v8}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/estrongs/android/pop/view/aa;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/pop/view/aa;-><init>(Lcom/estrongs/android/pop/view/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto/16 :goto_6a
.end method
