.class public abstract Lcom/dropbox/android/widget/quickactions/a;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field protected b:Landroid/view/View;

.field protected c:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

.field protected d:Landroid/app/Activity;

.field protected e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/dropbox/android/widget/quickactions/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/widget/quickactions/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/app/Activity;Landroid/content/Context;)V
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;Lcom/dropbox/android/widget/quickactions/QuickActionBar;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/a;->b:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 38
    sget-object v0, Lcom/dropbox/android/widget/quickactions/a;->a:Ljava/lang/String;

    const-string v1, "Trying to inflate an already-inflated item"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_b
    return-void

    .line 42
    :cond_c
    invoke-virtual {p0}, Lcom/dropbox/android/widget/quickactions/a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/quickactions/a;->b:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/a;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/a;->d:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/dropbox/android/widget/quickactions/a;->e:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/dropbox/android/widget/quickactions/a;->c:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    .line 48
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/a;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/quickactions/a;->a(Landroid/view/View;)V

    goto :goto_b
.end method

.method protected a(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method public abstract b()I
.end method

.method protected final c()Landroid/view/View;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/a;->b:Landroid/view/View;

    return-object v0
.end method

.method protected final d()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/a;->c:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->c()V

    .line 74
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/dropbox/android/widget/quickactions/a;->d()V

    .line 68
    invoke-static {}, Lcom/dropbox/android/util/h;->d()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "which"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 69
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/a;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/a;->e:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/widget/quickactions/a;->a(Landroid/app/Activity;Landroid/content/Context;)V

    .line 70
    return-void
.end method
