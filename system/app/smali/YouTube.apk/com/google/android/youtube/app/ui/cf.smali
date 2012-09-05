.class public final Lcom/google/android/youtube/app/ui/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/DialogInterface$OnClickListener;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Landroid/view/View;

.field private final f:Landroid/app/AlertDialog;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/cf;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "context may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cf;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/cf;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    const-string v0, "youtube"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cf;->c:Landroid/content/SharedPreferences;

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cf;->c:Landroid/content/SharedPreferences;

    const-string v1, "upload_policy_dialog_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/cf;->g:Z

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cf;->d:Landroid/view/LayoutInflater;

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cf;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f040055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cf;->e:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cf;->e:Landroid/view/View;

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 55
    new-instance v1, Lcom/google/android/youtube/app/ui/cg;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/app/ui/cg;-><init>(Lcom/google/android/youtube/app/ui/cf;Landroid/widget/RadioButton;)V

    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a009c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cf;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cf;->f:Landroid/app/AlertDialog;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/cf;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cf;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/cf;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/cf;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/cf;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cf;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/cf;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cf;->b:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cf;->f:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/cf;->g:Z

    return v0
.end method
