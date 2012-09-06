.class public abstract Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;
.super Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;
.source "ContactSharingDialogFragment.java"


# static fields
.field private static final a:Ldw;

.field private static a:[Ljava/lang/String;


# instance fields
.field private a:LQC;

.field private a:Lfd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd",
            "<",
            "LQm;",
            ">;"
        }
    .end annotation
.end field

.field public b:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldw;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    sget-object v0, Ldw;->b:Ldw;

    sput-object v0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:Ldw;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;-><init>()V

    return-void
.end method

.method private a(I)Ldw;
    .registers 3
    .parameter

    .prologue
    .line 158
    invoke-static {}, LPq;->values()[LPq;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, LPq;->a()Ldw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    sget v0, LcY;->dialog_contact_sharing:I

    invoke-static {p1}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a(Landroid/os/Bundle;I[Ljava/lang/String;)V

    .line 68
    const-string v0, "email"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method static a(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 162
    sget-object v0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:[Ljava/lang/String;

    if-nez v0, :cond_25

    .line 163
    invoke-static {}, LPq;->values()[LPq;

    move-result-object v0

    array-length v1, v0

    .line 164
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:[Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_25

    .line 166
    sget-object v2, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:[Ljava/lang/String;

    invoke-static {}, LPq;->values()[LPq;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, LPq;->a()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 170
    :cond_25
    sget-object v0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:Lfd;

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQm;

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, LQm;->a(Ljava/lang/String;)LQC;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:LQC;

    .line 112
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 73
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->d(Z)V

    .line 76
    new-instance v0, Lfd;

    const-class v1, LQm;

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->b:LanD;

    invoke-direct {v0, v1, v2}, Lfd;-><init>(Ljava/lang/Class;LanD;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:Lfd;

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:Lfd;

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a()V

    .line 104
    :goto_1d
    return-void

    .line 86
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->c:Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->q()V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:LQC;

    if-nez v0, :cond_47

    .line 90
    const-string v0, "ContactSharingDialogFragment"

    const-string v1, "No contact exists in Acl list with email address \"%s\"."

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a()V

    goto :goto_1d

    .line 96
    :cond_47
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:LQC;

    invoke-virtual {v0}, LQC;->a()LQl;

    move-result-object v0

    .line 97
    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v0}, LQl;->a()Ldw;

    move-result-object v0

    .line 99
    sget-object v1, Ldw;->e:Ldw;

    if-ne v0, v1, :cond_5a

    .line 100
    sget-object v0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:Ldw;

    .line 103
    :cond_5a
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a(Ldw;)V

    goto :goto_1d
.end method

.method public a(Ldw;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->b:Ldw;

    .line 135
    return-void
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->b:Ldw;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->b:Ldw;

    invoke-static {v0}, LPq;->a(Ldw;)I

    move-result v0

    return v0
.end method

.method b(I)V
    .registers 6
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->q()V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:LQC;

    if-nez v0, :cond_f

    .line 141
    const-string v0, "ContactSharingDialogFragment"

    const-string v1, "Selected item in contact sharing dialog is not defined."

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_e
    :goto_e
    return-void

    .line 144
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:LQC;

    invoke-virtual {v0}, LQC;->a()LQl;

    move-result-object v0

    .line 145
    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a(I)Ldw;

    move-result-object v1

    .line 147
    invoke-virtual {v0}, LQl;->a()Ldw;

    move-result-object v2

    if-eq v1, v2, :cond_e

    .line 150
    new-instance v2, LQl;

    const/4 v3, 0x0

    new-array v3, v3, [Lds;

    invoke-static {v1, v3}, Ldu;->a(Ldw;[Lds;)Ldu;

    move-result-object v1

    invoke-virtual {v0}, LQl;->b()Z

    move-result v3

    invoke-direct {v2, v0, v1, v3}, LQl;-><init>(LQl;Ldu;Z)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a:LQC;

    invoke-virtual {v0, v2}, LQC;->a(LQl;)V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->p()V

    goto :goto_e
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->c(Landroid/os/Bundle;)V

    .line 117
    invoke-super {p0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a(I)Ldw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a(Ldw;)V

    .line 118
    return-void
.end method

.method protected abstract p()V
.end method
