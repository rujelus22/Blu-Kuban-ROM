.class public final Lcom/dropbox/android/widget/ag;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/String;

.field private final c:[Landroid/content/Intent;

.field private final d:[Landroid/content/Intent;

.field private e:Lcom/dropbox/android/widget/aj;

.field private f:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Landroid/content/Intent;[Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/ag;->a:Ljava/lang/ref/WeakReference;

    .line 73
    iput-object p2, p0, Lcom/dropbox/android/widget/ag;->b:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/dropbox/android/widget/ag;->c:[Landroid/content/Intent;

    .line 75
    iput-object p4, p0, Lcom/dropbox/android/widget/ag;->d:[Landroid/content/Intent;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/ag;)Lcom/dropbox/android/widget/aj;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/android/widget/ag;->e:Lcom/dropbox/android/widget/aj;

    return-object v0
.end method

.method private b()Landroid/content/Context;
    .registers 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/android/widget/ag;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 85
    if-nez v0, :cond_c

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/dropbox/android/util/aW;->c()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto :goto_b
.end method

.method static synthetic b(Lcom/dropbox/android/widget/ag;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/android/widget/ag;->f:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 92
    invoke-direct {p0}, Lcom/dropbox/android/widget/ag;->b()Landroid/content/Context;

    move-result-object v2

    .line 93
    if-nez v2, :cond_8

    .line 135
    :cond_7
    :goto_7
    return-void

    .line 96
    :cond_8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/ag;->f:Landroid/content/pm/PackageManager;

    .line 98
    const-string v0, "layout_inflater"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 99
    new-instance v0, Lcom/dropbox/android/widget/ak;

    iget-object v4, p0, Lcom/dropbox/android/widget/ag;->c:[Landroid/content/Intent;

    iget-object v5, p0, Lcom/dropbox/android/widget/ag;->d:[Landroid/content/Intent;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/widget/ak;-><init>(Lcom/dropbox/android/widget/ag;Landroid/content/Context;Landroid/view/LayoutInflater;[Landroid/content/Intent;[Landroid/content/Intent;)V

    .line 101
    invoke-virtual {v0}, Lcom/dropbox/android/widget/ak;->getCount()I

    move-result v1

    .line 102
    if-le v1, v6, :cond_53

    .line 103
    const v1, 0x7f030018

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    iget-object v2, p0, Lcom/dropbox/android/widget/ag;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 113
    new-instance v3, Lcom/dropbox/android/widget/ah;

    invoke-direct {v3, p0, v0, v2}, Lcom/dropbox/android/widget/ah;-><init>(Lcom/dropbox/android/widget/ag;Lcom/dropbox/android/widget/ak;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_7

    .line 125
    :cond_53
    if-ne v1, v6, :cond_64

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/ak;->a(I)Landroid/content/Intent;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/dropbox/android/widget/ag;->e:Lcom/dropbox/android/widget/aj;

    if-eqz v1, :cond_7

    .line 128
    iget-object v1, p0, Lcom/dropbox/android/widget/ag;->e:Lcom/dropbox/android/widget/aj;

    invoke-interface {v1, v0}, Lcom/dropbox/android/widget/aj;->a(Landroid/content/Intent;)V

    goto :goto_7

    .line 131
    :cond_64
    iget-object v0, p0, Lcom/dropbox/android/widget/ag;->e:Lcom/dropbox/android/widget/aj;

    if-eqz v0, :cond_7

    .line 132
    iget-object v0, p0, Lcom/dropbox/android/widget/ag;->e:Lcom/dropbox/android/widget/aj;

    invoke-interface {v0}, Lcom/dropbox/android/widget/aj;->a()V

    goto :goto_7
.end method

.method public final a(Lcom/dropbox/android/widget/aj;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dropbox/android/widget/ag;->e:Lcom/dropbox/android/widget/aj;

    .line 80
    return-void
.end method
