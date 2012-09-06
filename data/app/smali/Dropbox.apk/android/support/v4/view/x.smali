.class public final Landroid/support/v4/view/x;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final a:Landroid/support/v4/view/B;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 126
    new-instance v0, Landroid/support/v4/view/A;

    invoke-direct {v0}, Landroid/support/v4/view/A;-><init>()V

    sput-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/B;

    .line 132
    :goto_d
    return-void

    .line 127
    :cond_e
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1a

    .line 128
    new-instance v0, Landroid/support/v4/view/z;

    invoke-direct {v0}, Landroid/support/v4/view/z;-><init>()V

    sput-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/B;

    goto :goto_d

    .line 130
    :cond_1a
    new-instance v0, Landroid/support/v4/view/y;

    invoke-direct {v0}, Landroid/support/v4/view/y;-><init>()V

    sput-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/B;

    goto :goto_d
.end method

.method public static a(Landroid/view/View;)I
    .registers 2
    .parameter

    .prologue
    .line 166
    sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/B;

    invoke-interface {v0, p0}, Landroid/support/v4/view/B;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 142
    sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/B;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/B;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
