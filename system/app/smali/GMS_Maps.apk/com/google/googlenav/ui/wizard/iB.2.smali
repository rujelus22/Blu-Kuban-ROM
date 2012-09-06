.class public Lcom/google/googlenav/ui/wizard/iB;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/googlenav/ui/wizard/iF;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 55
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/iB;->a:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private a(Lcom/google/googlenav/android/R;)Lcom/google/googlenav/ui/view/dialog/o;
    .registers 3
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/google/googlenav/ui/wizard/iC;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/iC;-><init>(Lcom/google/googlenav/ui/wizard/iB;Lcom/google/googlenav/android/R;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/iB;)Lcom/google/googlenav/ui/wizard/iF;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iB;->b:Lcom/google/googlenav/ui/wizard/iF;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/iB;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iB;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/ui/wizard/iF;)Lcom/google/googlenav/android/R;
    .registers 3
    .parameter

    .prologue
    .line 122
    new-instance v0, Lcom/google/googlenav/ui/wizard/iD;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/iD;-><init>(Lcom/google/googlenav/ui/wizard/iB;Lcom/google/googlenav/ui/wizard/iF;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/wizard/iF;)V
    .registers 4
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iB;->b:Lcom/google/googlenav/ui/wizard/iF;

    .line 67
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/iB;->b(Lcom/google/googlenav/ui/wizard/iF;)Lcom/google/googlenav/android/R;

    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/iB;->a(Lcom/google/googlenav/android/R;)Lcom/google/googlenav/ui/view/dialog/o;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/k;

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/view/dialog/k;-><init>(Lcom/google/googlenav/ui/view/dialog/o;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/iB;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 72
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iB;->j()V

    .line 73
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iB;->b:Lcom/google/googlenav/ui/wizard/iF;

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iB;->b:Lcom/google/googlenav/ui/wizard/iF;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/iF;->a()V

    .line 168
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iB;->b:Lcom/google/googlenav/ui/wizard/iF;

    .line 169
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 170
    return-void
.end method
