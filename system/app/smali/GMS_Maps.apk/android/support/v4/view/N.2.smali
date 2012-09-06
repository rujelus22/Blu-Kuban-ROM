.class Landroid/support/v4/view/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/S;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .registers 3
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x2

    return v0
.end method

.method a()J
    .registers 3

    .prologue
    .line 129
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 99
    return-void
.end method

.method public a(Landroid/view/View;Ld/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 108
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/support/v4/view/N;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 118
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 136
    return-void
.end method

.method public c(Landroid/view/View;)I
    .registers 3
    .parameter

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method
