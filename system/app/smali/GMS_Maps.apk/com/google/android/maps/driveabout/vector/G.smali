.class public Lcom/google/android/maps/driveabout/vector/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private volatile b:Z

.field private volatile c:Lcom/google/android/maps/driveabout/vector/i;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/g;->a:Landroid/view/View;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/h;
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/i;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/g;->c:Lcom/google/android/maps/driveabout/vector/i;

    .line 107
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/g;->b:Z

    .line 80
    return-void
.end method

.method public b(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    return-void
.end method

.method public c(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/g;->b:Z

    .line 73
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/g;->b:Z

    return v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 91
    return-void
.end method

.method public d(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 99
    return-void
.end method

.method public e()Landroid/view/View;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/g;->a:Landroid/view/View;

    return-object v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/g;->c:Lcom/google/android/maps/driveabout/vector/i;

    .line 111
    if-eqz v0, :cond_7

    .line 112
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/i;->a()V

    .line 114
    :cond_7
    return-void
.end method
