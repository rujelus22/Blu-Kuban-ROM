.class public final Landroid/support/v4/view/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 118
    new-instance v0, Landroid/support/v4/view/p;

    invoke-direct {v0}, Landroid/support/v4/view/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/q;

    .line 122
    :goto_d
    return-void

    .line 120
    :cond_e
    new-instance v0, Landroid/support/v4/view/o;

    invoke-direct {v0}, Landroid/support/v4/view/o;-><init>()V

    sput-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/q;

    goto :goto_d
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/q;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/q;->a(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;I)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 139
    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/q;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/support/v4/view/q;->a(II)Z

    move-result v0

    return v0
.end method
