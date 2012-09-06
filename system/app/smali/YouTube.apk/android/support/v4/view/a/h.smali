.class final Landroid/support/v4/view/a/h;
.super Landroid/support/v4/view/a/j;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/view/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/a/f;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 47
    new-instance v0, Landroid/support/v4/view/a/i;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/a/i;-><init>(Landroid/support/v4/view/a/h;Landroid/support/v4/view/a/f;)V

    new-instance v1, Landroid/support/v4/view/a/l;

    invoke-direct {v1, v0}, Landroid/support/v4/view/a/l;-><init>(Landroid/support/v4/view/a/m;)V

    return-object v1
.end method
