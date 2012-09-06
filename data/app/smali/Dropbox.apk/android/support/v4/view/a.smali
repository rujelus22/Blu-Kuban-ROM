.class public final Landroid/support/v4/view/a;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final a:Landroid/support/v4/view/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 118
    new-instance v0, Landroid/support/v4/view/c;

    invoke-direct {v0}, Landroid/support/v4/view/c;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->a:Landroid/support/v4/view/d;

    .line 122
    :goto_d
    return-void

    .line 120
    :cond_e
    new-instance v0, Landroid/support/v4/view/b;

    invoke-direct {v0}, Landroid/support/v4/view/b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->a:Landroid/support/v4/view/d;

    goto :goto_d
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/view/a;->a:Landroid/support/v4/view/d;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/d;->b(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 139
    sget-object v0, Landroid/support/v4/view/a;->a:Landroid/support/v4/view/d;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/d;->a(II)Z

    move-result v0

    return v0
.end method
