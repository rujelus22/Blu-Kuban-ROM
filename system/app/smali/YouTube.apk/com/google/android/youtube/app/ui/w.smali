.class public final Lcom/google/android/youtube/app/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final c:Lcom/google/android/youtube/core/b/ae;

.field private final d:Lcom/google/android/youtube/core/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/w;->a:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/w;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 50
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/w;->c:Lcom/google/android/youtube/core/b/ae;

    .line 51
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/w;->d:Lcom/google/android/youtube/core/d;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/w;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/w;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/w;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/w;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/w;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/w;->d:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/w;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/w;->c:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/app/ui/z;)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/w;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040022

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 57
    const v0, 0x7f080021

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 58
    const v1, 0x7f080050

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 59
    new-instance v3, Lcom/google/android/youtube/app/ui/x;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/google/android/youtube/app/ui/x;-><init>(Lcom/google/android/youtube/app/ui/w;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/google/android/youtube/app/ui/z;)V

    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/w;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01e8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/w;->a:Landroid/app/Activity;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/w;->a:Landroid/app/Activity;

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
