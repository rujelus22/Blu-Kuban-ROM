.class public Lar;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# static fields
.field static final a:Lau;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 118
    new-instance v0, Lat;

    invoke-direct {v0}, Lat;-><init>()V

    sput-object v0, Lar;->a:Lau;

    .line 122
    :goto_d
    return-void

    .line 120
    :cond_e
    new-instance v0, Las;

    invoke-direct {v0}, Las;-><init>()V

    sput-object v0, Lar;->a:Lau;

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

.method public static a(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 143
    sget-object v0, Lar;->a:Lau;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Lau;->a(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 139
    sget-object v0, Lar;->a:Lau;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lau;->a(II)Z

    move-result v0

    return v0
.end method
