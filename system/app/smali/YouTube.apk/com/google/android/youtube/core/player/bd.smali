.class public final Lcom/google/android/youtube/core/player/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/bh;

.field private final b:Landroid/app/AlertDialog;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/bh;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "context may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "message may not be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "pref may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "youtube"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    const-string v0, "listener may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/bh;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bd;->a:Lcom/google/android/youtube/core/player/bh;

    .line 47
    invoke-interface {v1, p3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bd;->c:Z

    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/google/android/youtube/core/player/bg;

    invoke-direct {v3, p0, v1, p3}, Lcom/google/android/youtube/core/player/bg;-><init>(Lcom/google/android/youtube/core/player/bd;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/google/android/youtube/core/player/bf;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/bf;-><init>(Lcom/google/android/youtube/core/player/bd;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/player/be;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/be;-><init>(Lcom/google/android/youtube/core/player/bd;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bd;->b:Landroid/app/AlertDialog;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/bd;)Lcom/google/android/youtube/core/player/bh;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bd;->a:Lcom/google/android/youtube/core/player/bh;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/bd;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bd;->c:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bd;->c:Z

    if-eqz v0, :cond_a

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bd;->a:Lcom/google/android/youtube/core/player/bh;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/bh;->v()V

    .line 81
    :goto_9
    return-void

    .line 80
    :cond_a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bd;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_9
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bd;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 88
    return-void
.end method
