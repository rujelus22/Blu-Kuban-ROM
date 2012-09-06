.class public Lcom/dropbox/android/widget/quickactions/ButtonFavorite;
.super Lcom/dropbox/android/widget/quickactions/a;
.source "panda.py"


# static fields
.field protected static final f:Ljava/lang/String;


# instance fields
.field private g:Lcom/dropbox/android/filemanager/LocalEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/dropbox/android/widget/quickactions/ButtonFavorite;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/widget/quickactions/ButtonFavorite;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 4
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/dropbox/android/widget/quickactions/a;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/ButtonFavorite;->g:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 20
    iget-boolean v0, p1, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_11

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t create a favorite button for a directory!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_11
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 32
    const v0, 0x7f03002c

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonFavorite;->g:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-boolean v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 43
    :goto_7
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/widget/quickactions/ButtonFavorite;->g:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/filemanager/v;->a(Lcom/dropbox/android/filemanager/LocalEntry;Z)V

    .line 44
    return-void

    .line 42
    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected final a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 27
    check-cast p1, Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonFavorite;->g:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-boolean v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 28
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 37
    const v0, 0x7f09015b

    return v0
.end method
