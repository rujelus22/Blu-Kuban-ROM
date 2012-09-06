.class public final Lcom/dropbox/android/widget/CustomTabView/a;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Landroid/graphics/drawable/Drawable;

.field protected c:Lcom/dropbox/android/widget/CustomTabView/b;

.field protected d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dropbox/android/widget/CustomTabView/a;->a:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/a;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final a(I)Lcom/dropbox/android/widget/CustomTabView/a;
    .registers 3
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/a;->b:Landroid/graphics/drawable/Drawable;

    .line 35
    return-object p0
.end method

.method public final a(Lcom/dropbox/android/widget/CustomTabView/b;)Lcom/dropbox/android/widget/CustomTabView/a;
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dropbox/android/widget/CustomTabView/a;->c:Lcom/dropbox/android/widget/CustomTabView/b;

    .line 44
    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Lcom/dropbox/android/widget/CustomTabView/a;
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dropbox/android/widget/CustomTabView/a;->d:Ljava/lang/Object;

    .line 49
    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method protected final c()Lcom/dropbox/android/widget/CustomTabView/b;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dropbox/android/widget/CustomTabView/a;->c:Lcom/dropbox/android/widget/CustomTabView/b;

    return-object v0
.end method
