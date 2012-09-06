.class public Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "ConfirmSharingDialogFragment.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    .line 36
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a:Lck;

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    const-string v0, "listenerTag"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "contactAddresses"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    const-string v0, "ownerDomain"

    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "accountDomain"

    invoke-virtual {p0, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->p()V

    return-void
.end method

.method public static a(Lx;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    invoke-static {v0, p2, p3, p4, p5}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;

    invoke-direct {v1}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;-><init>()V

    .line 54
    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->d(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {v1, p0, p1}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    .line 166
    invoke-static {p1}, LQF;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v1, "gmail.com"

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private b()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1f

    .line 180
    sget v0, LcY;->dialog_confirm_sharing_message:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_1e
    return-object v0

    .line 184
    :cond_1f
    sget v0, LcY;->dialog_confirm_sharing_message_multiple:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method private g()Z
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private p()V
    .registers 4

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, LgT;

    .line 192
    const-class v1, LPd;

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LgT;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPd;

    .line 194
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a:Ljava/util/List;

    invoke-interface {v0, v1}, LPd;->a(Ljava/util/List;)V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a()V

    .line 196
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, LcY;->dialog_confirm_sharing:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, LPc;

    invoke-direct {v2, p0}, LPc;-><init>(Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->c:Ljava/lang/String;

    invoke-static {v1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a(Landroid/os/Bundle;)V

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->d(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listenerTag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->d:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ownerDomain"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->e:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "accountDomain"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->f:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "contactAddresses"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->b:Ljava/util/List;

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_48
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 134
    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 138
    :cond_60
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->b()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->g()Z

    move-result v0

    if-nez v0, :cond_70

    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->p()V

    .line 144
    :cond_70
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->c:Ljava/lang/String;

    .line 90
    return-void
.end method
