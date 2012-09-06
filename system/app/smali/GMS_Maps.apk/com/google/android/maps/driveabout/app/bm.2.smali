.class public Lcom/google/android/maps/driveabout/app/bM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Landroid/view/Menu;)V
    .registers 2
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bM;->a:Landroid/view/Menu;

    .line 16
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bM;->a:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_c

    .line 24
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 26
    :cond_c
    return-void
.end method

.method public b(I)V
    .registers 4
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bM;->a:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_c

    .line 34
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 36
    :cond_c
    return-void
.end method
