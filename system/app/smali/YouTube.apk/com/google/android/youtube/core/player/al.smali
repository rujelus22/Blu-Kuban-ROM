.class public final Lcom/google/android/youtube/core/player/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/ap;

.field private final b:Landroid/app/AlertDialog;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/ap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "context may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "message may not be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "pref may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "youtube"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 45
    const-string v0, "listener may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/ap;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/al;->a:Lcom/google/android/youtube/core/player/ap;

    .line 46
    invoke-interface {v1, p3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/al;->c:Z

    .line 47
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

    new-instance v3, Lcom/google/android/youtube/core/player/ao;

    invoke-direct {v3, p0, v1, p3}, Lcom/google/android/youtube/core/player/ao;-><init>(Lcom/google/android/youtube/core/player/al;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/google/android/youtube/core/player/an;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/an;-><init>(Lcom/google/android/youtube/core/player/al;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/player/am;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/am;-><init>(Lcom/google/android/youtube/core/player/al;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/al;->b:Landroid/app/AlertDialog;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/al;)Lcom/google/android/youtube/core/player/ap;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/core/player/al;->a:Lcom/google/android/youtube/core/player/ap;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/al;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/al;->c:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/al;->c:Z

    if-eqz v0, :cond_a

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/player/al;->a:Lcom/google/android/youtube/core/player/ap;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ap;->t()V

    .line 80
    :goto_9
    return-void

    .line 79
    :cond_a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/al;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_9
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/player/al;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 87
    return-void
.end method
