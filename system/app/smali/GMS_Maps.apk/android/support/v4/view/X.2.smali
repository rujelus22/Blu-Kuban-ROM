.class public Landroid/support/v4/view/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 59
    new-instance v0, Landroid/support/v4/view/Z;

    invoke-direct {v0}, Landroid/support/v4/view/Z;-><init>()V

    sput-object v0, Landroid/support/v4/view/X;->a:Landroid/support/v4/view/aa;

    .line 63
    :goto_d
    return-void

    .line 61
    :cond_e
    new-instance v0, Landroid/support/v4/view/Y;

    invoke-direct {v0}, Landroid/support/v4/view/Y;-><init>()V

    sput-object v0, Landroid/support/v4/view/X;->a:Landroid/support/v4/view/aa;

    goto :goto_d
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .registers 2
    .parameter

    .prologue
    .line 73
    sget-object v0, Landroid/support/v4/view/X;->a:Landroid/support/v4/view/aa;

    invoke-interface {v0, p0}, Landroid/support/v4/view/aa;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
