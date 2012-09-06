.class public final Lpo;
.super Ljava/lang/Object;
.source "PickAccountDialogFactory.java"

# interfaces
.implements Lof;


# instance fields
.field private final a:LHW;

.field private final a:LXJ;

.field private final a:Lpr;

.field private volatile a:Z

.field private a:[Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Lpr;LHW;LXJ;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpo;->a:Z

    .line 39
    const-string v0, "null helper"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpr;

    iput-object v0, p0, Lpo;->a:Lpr;

    .line 40
    const-string v0, "null accountAccessor"

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHW;

    iput-object v0, p0, Lpo;->a:LHW;

    .line 41
    const-string v0, "null errorReporter"

    invoke-static {p3, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXJ;

    iput-object v0, p0, Lpo;->a:LXJ;

    .line 42
    return-void
.end method

.method private static a(Landroid/content/Context;[Landroid/accounts/Account;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 118
    array-length v1, p1

    new-array v3, v1, [Ljava/lang/CharSequence;

    .line 120
    array-length v4, p1

    move v1, v0

    :goto_6
    if-ge v0, v4, :cond_14

    aget-object v5, p1, v0

    .line 121
    add-int/lit8 v2, v1, 0x1

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v1

    .line 120
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_6

    .line 123
    :cond_14
    sget v0, LcY;->select_account:I

    invoke-static {p0, v3, v0, p2}, Lop;->a(Landroid/content/Context;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lpo;)Lpr;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lpo;->a:Lpr;

    return-object v0
.end method

.method static synthetic a(Lpo;)Z
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lpo;->a:Z

    return v0
.end method

.method static synthetic a(Lpo;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lpo;->a:Z

    return p1
.end method

.method static synthetic a(Lpo;)[Landroid/accounts/Account;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lpo;->a:[Landroid/accounts/Account;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lpo;->a:LHW;

    invoke-interface {v1}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lpo;->a:[Landroid/accounts/Account;

    .line 47
    iget-object v1, p0, Lpo;->a:[Landroid/accounts/Account;

    array-length v1, v1

    .line 48
    if-nez v1, :cond_1f

    .line 49
    iget-object v1, p0, Lpo;->a:LXJ;

    sget v2, LcY;->google_account_needed_all_apps:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    iget-object v1, p0, Lpo;->a:Lpr;

    invoke-virtual {v1}, Lpr;->a()V

    .line 75
    :goto_1e
    return-object v0

    .line 52
    :cond_1f
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    .line 53
    iget-object v1, p0, Lpo;->a:Lpr;

    iget-object v2, p0, Lpo;->a:[Landroid/accounts/Account;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lpr;->a(Landroid/accounts/Account;)V

    goto :goto_1e

    .line 56
    :cond_2d
    new-instance v0, Lpp;

    invoke-direct {v0, p0}, Lpp;-><init>(Lpo;)V

    .line 66
    iget-object v1, p0, Lpo;->a:[Landroid/accounts/Account;

    invoke-static {p1, v1, v0}, Lpo;->a(Landroid/content/Context;[Landroid/accounts/Account;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 67
    new-instance v1, Lpq;

    invoke-direct {v1, p0}, Lpq;-><init>(Lpo;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1e
.end method

.method public final a(Landroid/content/Context;Landroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpo;->a:Z

    .line 82
    iget-object v0, p0, Lpo;->a:Lpr;

    invoke-virtual {v0}, Lpr;->a()LkG;

    move-result-object v0

    .line 83
    if-nez v0, :cond_18

    const/4 v0, 0x0

    .line 85
    :goto_c
    iget-object v1, p0, Lpo;->a:[Landroid/accounts/Account;

    invoke-static {v1, v0}, LHY;->a([Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    .line 87
    check-cast p2, Landroid/app/AlertDialog;

    invoke-static {p2, v0}, Lop;->a(Landroid/app/AlertDialog;I)V

    .line 88
    return-void

    .line 83
    :cond_18
    invoke-virtual {v0}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
