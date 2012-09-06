.class public Lcom/dropbox/android/activity/LoginFragment;
.super Lcom/dropbox/android/activity/base/BaseFragment;
.source "panda.py"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/dropbox/android/activity/aG;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/dropbox/android/activity/LoginFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_FRAG_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/LoginFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseFragment;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LoginFragment;->f(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/android/activity/LoginFragment;
    .registers 4
    .parameter

    .prologue
    .line 47
    new-instance v0, Lcom/dropbox/android/activity/LoginFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/LoginFragment;-><init>()V

    .line 48
    invoke-virtual {v0}, Lcom/dropbox/android/activity/LoginFragment;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ARG_EMAIL_PREFILL"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginFragment;->b:Lcom/dropbox/android/activity/aG;

    iget-object v1, p0, Lcom/dropbox/android/activity/LoginFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/LoginFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dropbox/android/activity/aG;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/LoginFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/dropbox/android/activity/LoginFragment;->a()V

    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/activity/LoginFragment;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginFragment;->c:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    const v0, 0x7f03001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 98
    const v0, 0x7f0d0087

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/LoginFragment;->c:Landroid/widget/EditText;

    .line 100
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_26

    .line 102
    const-string v2, "ARG_EMAIL_PREFILL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_26

    .line 104
    iget-object v2, p0, Lcom/dropbox/android/activity/LoginFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_26
    const v0, 0x7f0d0089

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/LoginFragment;->d:Landroid/widget/EditText;

    .line 109
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginFragment;->d:Landroid/widget/EditText;

    new-instance v2, Lcom/dropbox/android/activity/aC;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/aC;-><init>(Lcom/dropbox/android/activity/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 122
    const v0, 0x7f0d008a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/LoginFragment;->e:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginFragment;->e:Landroid/widget/Button;

    new-instance v2, Lcom/dropbox/android/activity/aD;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/aD;-><init>(Lcom/dropbox/android/activity/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f0d008b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 131
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginFragment;->j()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/android/util/aW;->a(Landroid/content/res/Resources;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 132
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    :goto_68
    const v0, 0x7f0d008c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 146
    new-instance v2, Lcom/dropbox/android/activity/aF;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/aF;-><init>(Lcom/dropbox/android/activity/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-object v1

    .line 134
    :cond_7a
    new-instance v2, Lcom/dropbox/android/activity/aE;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/aE;-><init>(Lcom/dropbox/android/activity/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_68
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragment;->a(Landroid/app/Activity;)V

    .line 70
    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/dropbox/android/activity/aG;

    move-object v1, v0

    iput-object v1, p0, Lcom/dropbox/android/activity/LoginFragment;->b:Lcom/dropbox/android/activity/aG;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    .line 74
    return-void

    .line 71
    :catch_a
    move-exception v1

    .line 72
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement LoginFragmentCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginFragment;->l()Z

    move-result v0

    if-nez v0, :cond_10

    .line 59
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_RESET_EMAIL_PREFILL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_f
    return-void

    .line 61
    :cond_10
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginFragment;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method public final o()V
    .registers 4

    .prologue
    .line 84
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragment;->o()V

    .line 85
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_RESET_EMAIL_PREFILL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 86
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_RESET_EMAIL_PREFILL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginFragment;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ARG_RESET_EMAIL_PREFILL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/dropbox/android/activity/LoginFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginFragment;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_2e
    return-void
.end method

.method public final s()V
    .registers 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragment;->s()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/LoginFragment;->b:Lcom/dropbox/android/activity/aG;

    .line 80
    return-void
.end method
