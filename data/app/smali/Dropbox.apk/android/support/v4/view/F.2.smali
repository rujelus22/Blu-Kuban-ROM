.class final Landroid/support/v4/view/F;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/support/v4/view/H;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewConfiguration;)I
    .registers 3
    .parameter

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    return v0
.end method
