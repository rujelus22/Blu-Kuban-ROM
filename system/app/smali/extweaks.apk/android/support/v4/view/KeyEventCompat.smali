.class public Landroid/support/v4/view/KeyEventCompat;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# static fields
.field static final IMPL:Landroid/support/v4/view/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 118
    new-instance v0, Landroid/support/v4/view/g;

    invoke-direct {v0}, Landroid/support/v4/view/g;-><init>()V

    sput-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/h;

    .line 122
    :goto_d
    return-void

    .line 120
    :cond_e
    new-instance v0, Landroid/support/v4/view/f;

    invoke-direct {v0}, Landroid/support/v4/view/f;-><init>()V

    sput-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/h;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static hasModifiers(Landroid/view/KeyEvent;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 139
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/h;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/h;->a(II)Z

    move-result v0

    return v0
.end method

.method public static hasNoModifiers(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/h;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/h;->b(I)Z

    move-result v0

    return v0
.end method

.method public static metaStateHasModifiers(II)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 131
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/h;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/h;->a(II)Z

    move-result v0

    return v0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .registers 2
    .parameter

    .prologue
    .line 135
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/h;

    invoke-interface {v0, p0}, Landroid/support/v4/view/h;->b(I)Z

    move-result v0

    return v0
.end method

.method public static normalizeMetaState(I)I
    .registers 2
    .parameter

    .prologue
    .line 127
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/h;

    invoke-interface {v0, p0}, Landroid/support/v4/view/h;->a(I)I

    move-result v0

    return v0
.end method
