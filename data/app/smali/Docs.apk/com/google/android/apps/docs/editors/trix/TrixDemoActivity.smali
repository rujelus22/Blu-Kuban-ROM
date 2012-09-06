.class public Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;
.super Lcom/google/android/apps/docs/RoboFragmentActivity;
.source "TrixDemoActivity.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field public a:LEK;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LFu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LIG;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LIH;

.field private a:Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string v0, "TrixDemoActivity"

    sput-object v0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->k:Z

    .line 53
    new-instance v0, LEv;

    invoke-direct {v0, p0}, LEv;-><init>(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:LIH;

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->k:Z

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->j:Z

    return p1
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->j:Z

    return v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->j:Z

    if-nez v0, :cond_f

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:LIG;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->d:Ljava/lang/String;

    const-string v2, "wise"

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:LIH;

    invoke-interface {v0, v1, v2, v3}, LIG;->a(Ljava/lang/String;Ljava/lang/String;LIH;)V

    .line 122
    :cond_f
    return-void
.end method

.method private d()V
    .registers 7

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:LEK;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->i:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, LEK;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 126
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget v0, Luq;->trix_activity:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->setContentView(I)V

    .line 84
    sget v0, Lup;->trix_grid_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:LFu;

    invoke-virtual {v1, v0}, LFu;->a(Landroid/content/Intent;)V

    .line 89
    new-instance v1, LFj;

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:LFu;

    invoke-virtual {v2}, LFu;->a()Z

    move-result v2

    invoke-direct {v1, v0, v2}, LFj;-><init>(Landroid/content/Intent;Z)V

    .line 90
    invoke-virtual {v1, p0}, LFj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->d:Ljava/lang/String;

    .line 92
    invoke-virtual {v1}, LFj;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->b:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->b:Ljava/lang/String;

    if-nez v0, :cond_42

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:LFX;

    const-string v2, "trixDebugDocumentId"

    const-string v3, "0AjnK2jXQOslKcjRzYmRhUzUtdXJsbEVmQWlWSjR1SlE"

    invoke-interface {v0, v2, v3}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->b:Ljava/lang/String;

    .line 99
    :cond_42
    const-string v0, "spreadsheet"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LFj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->c:Ljava/lang/String;

    .line 100
    invoke-virtual {v1}, LFj;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->i:Z

    .line 101
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->onPause()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->k:Z

    .line 115
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onPause()V

    .line 116
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onResume()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->k:Z

    .line 107
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->c()V

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;->a:Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->onResume()V

    .line 109
    return-void
.end method
