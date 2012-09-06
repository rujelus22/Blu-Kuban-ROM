.class public Lcom/dropbox/android/activity/NewAccountFragment;
.super Lcom/dropbox/android/activity/base/BaseFragment;
.source "panda.py"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/dropbox/android/activity/aU;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/dropbox/android/activity/NewAccountFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_FRAG_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/NewAccountFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseFragment;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 61
    const v0, 0x7f030021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 62
    const v0, 0x7f0d0097

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/NewAccountFragment;->c:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f0d0099

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/NewAccountFragment;->d:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f0d009b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/NewAccountFragment;->e:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f0d009d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/NewAccountFragment;->f:Landroid/widget/EditText;

    .line 67
    iget-object v0, p0, Lcom/dropbox/android/activity/NewAccountFragment;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/dropbox/android/activity/aQ;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/aQ;-><init>(Lcom/dropbox/android/activity/NewAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 78
    const v0, 0x7f0d009e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/NewAccountFragment;->g:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/dropbox/android/activity/NewAccountFragment;->g:Landroid/widget/Button;

    new-instance v1, Lcom/dropbox/android/activity/aR;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/aR;-><init>(Lcom/dropbox/android/activity/NewAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f0d009f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    const v1, 0x7f0d00a0

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 88
    invoke-virtual {p0}, Lcom/dropbox/android/activity/NewAccountFragment;->j()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/android/util/aW;->a(Landroid/content/res/Resources;)Z

    move-result v3

    if-nez v3, :cond_87

    .line 89
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    invoke-static {}, Lcom/dropbox/android/util/Y;->a()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 91
    new-instance v1, Lcom/dropbox/android/activity/aS;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/aS;-><init>(Lcom/dropbox/android/activity/NewAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :goto_82
    return-object v2

    .line 99
    :cond_83
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_82

    .line 102
    :cond_87
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    new-instance v0, Lcom/dropbox/android/activity/aT;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/aT;-><init>(Lcom/dropbox/android/activity/NewAccountFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_82
.end method

.method protected final a()V
    .registers 6

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/android/activity/NewAccountFragment;->b:Lcom/dropbox/android/activity/aU;

    iget-object v1, p0, Lcom/dropbox/android/activity/NewAccountFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/NewAccountFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/activity/NewAccountFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dropbox/android/activity/NewAccountFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/dropbox/android/activity/aU;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragment;->a(Landroid/app/Activity;)V

    .line 45
    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/dropbox/android/activity/aU;

    move-object v1, v0

    iput-object v1, p0, Lcom/dropbox/android/activity/NewAccountFragment;->b:Lcom/dropbox/android/activity/aU;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    .line 49
    return-void

    .line 46
    :catch_a
    move-exception v1

    .line 47
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement NewAccountFragmentCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final s()V
    .registers 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragment;->s()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/NewAccountFragment;->b:Lcom/dropbox/android/activity/aU;

    .line 55
    return-void
.end method
