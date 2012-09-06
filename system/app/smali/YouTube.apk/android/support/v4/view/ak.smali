.class Landroid/support/v4/view/ak;
.super Landroid/support/v4/view/aj;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/support/v4/view/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .registers 3
    .parameter

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method
