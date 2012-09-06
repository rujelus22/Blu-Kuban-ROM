.class public Lcom/dropbox/android/activity/ForgotPasswordFragment;
.super Lcom/dropbox/android/activity/base/BaseFragment;
.source "panda.py"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Lcom/dropbox/android/activity/S;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/dropbox/android/activity/ForgotPasswordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_FRAG_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/ForgotPasswordFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseFragment;-><init>()V

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/android/activity/ForgotPasswordFragment;
    .registers 4
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/dropbox/android/activity/ForgotPasswordFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/ForgotPasswordFragment;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v2, "ARG_EMAIL"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/ForgotPasswordFragment;->f(Landroid/os/Bundle;)V

    .line 41
    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/activity/ForgotPasswordFragment;)Lcom/dropbox/android/activity/S;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dropbox/android/activity/ForgotPasswordFragment;->d:Lcom/dropbox/android/activity/S;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/android/activity/ForgotPasswordFragment;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dropbox/android/activity/ForgotPasswordFragment;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    const v0, 0x7f030011

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    const v0, 0x7f0d0051

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/ForgotPasswordFragment;->b:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f0d0052

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/ForgotPasswordFragment;->c:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/dropbox/android/activity/ForgotPasswordFragment;->c:Landroid/widget/Button;

    new-instance v2, Lcom/dropbox/android/activity/R;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/R;-><init>(Lcom/dropbox/android/activity/ForgotPasswordFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-object v1
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragment;->a(Landroid/app/Activity;)V

    .line 48
    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/dropbox/android/activity/S;

    move-object v1, v0

    iput-object v1, p0, Lcom/dropbox/android/activity/ForgotPasswordFragment;->d:Lcom/dropbox/android/activity/S;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    .line 52
    return-void

    .line 49
    :catch_a
    move-exception v1

    .line 50
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement ForgotPasswordFragmentCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragment;->d(Landroid/os/Bundle;)V

    .line 82
    if-nez p1, :cond_14

    .line 83
    iget-object v0, p0, Lcom/dropbox/android/activity/ForgotPasswordFragment;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/ForgotPasswordFragment;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ARG_EMAIL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_14
    return-void
.end method

.method public final s()V
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragment;->s()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/ForgotPasswordFragment;->d:Lcom/dropbox/android/activity/S;

    .line 58
    return-void
.end method
