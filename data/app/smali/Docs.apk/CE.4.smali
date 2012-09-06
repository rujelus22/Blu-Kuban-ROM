.class public LCE;
.super Ljava/lang/Object;
.source "SelectionModeHoneyComb.java"

# interfaces
.implements LCD;


# instance fields
.field private final a:Landroid/content/Context;

.field private a:Landroid/view/ActionMode;

.field private final a:Lcom/google/android/apps/docs/editors/text/TextView;

.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, LCE;->a:Landroid/content/Context;

    .line 107
    iput-object p2, p0, LCE;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    .line 108
    return-void
.end method

.method static synthetic a(LCE;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, LCE;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, LCE;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    return-object v0
.end method

.method static synthetic a(LCE;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 17
    iput-boolean p1, p0, LCE;->a:Z

    return p1
.end method


# virtual methods
.method public h()Z
    .registers 2

    .prologue
    .line 126
    iget-boolean v0, p0, LCE;->a:Z

    return v0
.end method

.method public r()V
    .registers 3

    .prologue
    .line 112
    new-instance v0, LCG;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LCG;-><init>(LCE;LCF;)V

    .line 113
    iget-object v1, p0, LCE;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, LCE;->a:Landroid/view/ActionMode;

    .line 114
    iget-object v0, p0, LCE;->a:Landroid/view/ActionMode;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, LCE;->a:Z

    .line 115
    return-void

    .line 114
    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public s()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, LCE;->a:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, LCE;->a:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 122
    :cond_9
    return-void
.end method
