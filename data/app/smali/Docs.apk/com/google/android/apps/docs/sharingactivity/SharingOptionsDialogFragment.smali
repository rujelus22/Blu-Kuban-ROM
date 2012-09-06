.class public final Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;
.super Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;
.source "SharingOptionsDialogFragment.java"


# instance fields
.field private a:Ldw;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;-><init>()V

    .line 27
    return-void
.end method

.method private a(I)Ldw;
    .registers 3
    .parameter

    .prologue
    .line 124
    invoke-static {}, LPq;->values()[LPq;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, LPq;->a()Ldw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 86
    invoke-static {p1}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 87
    if-nez p4, :cond_14

    .line 91
    new-array v0, v5, [Ljava/lang/String;

    move v2, v3

    .line 92
    :goto_b
    if-ge v2, v5, :cond_15

    .line 93
    aget-object v4, v1, v2

    aput-object v4, v0, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_14
    move-object v0, v1

    .line 97
    :cond_15
    sget v1, LcY;->dialog_sharing_options:I

    invoke-static {p0, v1, v0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a(Landroid/os/Bundle;I[Ljava/lang/String;)V

    .line 99
    const-string v1, "contactAddresses"

    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 100
    const-string v0, "listenerTag"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Lx;Ljava/lang/String;Z)V
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lx;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    invoke-static {v1, p2, p1, p0, p5}, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->d(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {v0, p3, p4}, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->d(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "contactAddresses"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a:Ljava/util/List;

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listenerTag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->c:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public a(Ldw;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a:Ldw;

    .line 121
    return-void
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a:Ldw;

    if-nez v0, :cond_b

    .line 130
    sget-object v0, LPq;->a:LPq;

    invoke-virtual {v0}, LPq;->ordinal()I

    move-result v0

    .line 133
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a:Ldw;

    invoke-static {v0}, LPq;->a(Ldw;)I

    move-result v0

    goto :goto_a
.end method

.method b(I)V
    .registers 5
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, LgT;

    .line 106
    const-class v1, LQE;

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LgT;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQE;

    .line 108
    invoke-static {}, LPq;->values()[LPq;

    move-result-object v1

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, LQE;->a(LPq;Ljava/util/List;)V

    .line 110
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->c(Landroid/os/Bundle;)V

    .line 60
    invoke-super {p0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a(I)Ldw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a(Ldw;)V

    .line 61
    return-void
.end method
