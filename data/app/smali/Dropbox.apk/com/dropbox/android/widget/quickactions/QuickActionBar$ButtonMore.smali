.class public Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;
.super Lcom/dropbox/android/widget/quickactions/a;
.source "panda.py"


# instance fields
.field protected final f:[Lcom/dropbox/android/widget/quickactions/a;

.field protected final g:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

.field final synthetic h:Lcom/dropbox/android/widget/quickactions/QuickActionBar;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/widget/quickactions/QuickActionBar;[Lcom/dropbox/android/widget/quickactions/a;Lcom/dropbox/android/widget/quickactions/QuickActionBar;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;->h:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-direct {p0}, Lcom/dropbox/android/widget/quickactions/a;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;->f:[Lcom/dropbox/android/widget/quickactions/a;

    .line 196
    iput-object p3, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;->g:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    .line 197
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 220
    const v0, 0x7f03002d

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;->g:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;->f:[Lcom/dropbox/android/widget/quickactions/a;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a([Lcom/dropbox/android/widget/quickactions/a;)V

    .line 211
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;->h:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-static {v0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(Lcom/dropbox/android/widget/quickactions/QuickActionBar;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 214
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;->h:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-static {v0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b(Lcom/dropbox/android/widget/quickactions/QuickActionBar;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;->h:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-static {v1}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(Lcom/dropbox/android/widget/quickactions/QuickActionBar;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    .line 216
    :cond_1e
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 201
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

    .line 204
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;->e:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;->a(Landroid/app/Activity;Landroid/content/Context;)V

    .line 205
    invoke-virtual {p0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar$ButtonMore;->d()V

    .line 206
    return-void
.end method
