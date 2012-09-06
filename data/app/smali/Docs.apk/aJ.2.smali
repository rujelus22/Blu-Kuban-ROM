.class public LaJ;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field static final a:LaN;


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
    new-instance v0, LaM;

    invoke-direct {v0}, LaM;-><init>()V

    sput-object v0, LaJ;->a:LaN;

    .line 132
    :goto_d
    return-void

    .line 127
    :cond_e
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1a

    .line 128
    new-instance v0, LaL;

    invoke-direct {v0}, LaL;-><init>()V

    sput-object v0, LaJ;->a:LaN;

    goto :goto_d

    .line 130
    :cond_1a
    new-instance v0, LaK;

    invoke-direct {v0}, LaK;-><init>()V

    sput-object v0, LaJ;->a:LaN;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static a(Landroid/view/View;)I
    .registers 2
    .parameter

    .prologue
    .line 166
    sget-object v0, LaJ;->a:LaN;

    invoke-interface {v0, p0}, LaN;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 142
    sget-object v0, LaJ;->a:LaN;

    invoke-interface {v0, p0, p1}, LaN;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
