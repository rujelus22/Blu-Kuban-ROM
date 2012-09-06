.class public Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;
.super Lcom/google/android/apps/docs/RoboFragmentActivity;
.source "TrixNativeDemoActivity.java"


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

.field private a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

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
    .line 30
    const-string v0, "TrixDemoActivity"

    sput-object v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->k:Z

    .line 52
    new-instance v0, LEy;

    invoke-direct {v0, p0}, LEy;-><init>(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:LIH;

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->k:Z

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->j:Z

    return p1
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:LEK;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a(LEK;I)V

    .line 144
    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->j:Z

    return v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->j:Z

    if-nez v0, :cond_f

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:LIG;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->d:Ljava/lang/String;

    const-string v2, "wise"

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:LIH;

    invoke-interface {v0, v1, v2, v3}, LIG;->a(Ljava/lang/String;Ljava/lang/String;LIH;)V

    .line 128
    :cond_f
    return-void
.end method

.method private d()V
    .registers 7

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:LEK;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->i:Z

    new-instance v5, LEz;

    invoke-direct {v5, p0}, LEz;-><init>(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)V

    invoke-virtual/range {v0 .. v5}, LEK;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 140
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget v0, Luq;->trix_native_activity:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->setContentView(I)V

    .line 90
    sget v0, Lup;->trix_grid_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:LFu;

    invoke-virtual {v1, v0}, LFu;->a(Landroid/content/Intent;)V

    .line 95
    new-instance v1, LFj;

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:LFu;

    invoke-virtual {v2}, LFu;->a()Z

    move-result v2

    invoke-direct {v1, v0, v2}, LFj;-><init>(Landroid/content/Intent;Z)V

    .line 96
    invoke-virtual {v1, p0}, LFj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->d:Ljava/lang/String;

    .line 98
    invoke-virtual {v1}, LFj;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->b:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->b:Ljava/lang/String;

    if-nez v0, :cond_42

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:LFX;

    const-string v2, "trixDebugDocumentId"

    const-string v3, "0AjnK2jXQOslKcjRzYmRhUzUtdXJsbEVmQWlWSjR1SlE"

    invoke-interface {v0, v2, v3}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->b:Ljava/lang/String;

    .line 105
    :cond_42
    const-string v0, "spreadsheet"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LFj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->c:Ljava/lang/String;

    .line 106
    invoke-virtual {v1}, LFj;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->i:Z

    .line 107
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->k:Z

    .line 121
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onPause()V

    .line 122
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onResume()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->k:Z

    .line 113
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->c()V

    .line 115
    return-void
.end method
