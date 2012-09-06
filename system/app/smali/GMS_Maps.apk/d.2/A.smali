.class public Ld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ld/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 126
    new-instance v0, Ld/b;

    invoke-direct {v0}, Ld/b;-><init>()V

    sput-object v0, Ld/a;->a:Ld/d;

    .line 130
    :goto_d
    return-void

    .line 128
    :cond_e
    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    sput-object v0, Ld/a;->a:Ld/d;

    goto :goto_d
.end method

.method public static a(Landroid/view/accessibility/AccessibilityManager;)Z
    .registers 2
    .parameter

    .prologue
    .line 196
    sget-object v0, Ld/a;->a:Ld/d;

    invoke-interface {v0, p0}, Ld/d;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    return v0
.end method
