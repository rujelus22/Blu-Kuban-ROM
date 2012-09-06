.class final Landroid/support/v4/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/m;


# instance fields
.field final synthetic a:Landroid/support/v4/view/a;

.field final synthetic b:Landroid/support/v4/view/e;


# direct methods
.method constructor <init>(Landroid/support/v4/view/e;Landroid/support/v4/view/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Landroid/support/v4/view/f;->b:Landroid/support/v4/view/e;

    iput-object p2, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-static {p1}, Landroid/support/v4/view/a;->a(Landroid/view/View;)Landroid/support/v4/view/a/f;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/support/v4/view/a/f;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final a(Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-static {p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;I)V

    .line 251
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    new-instance v1, Landroid/support/v4/view/a/a;

    invoke-direct {v1, p2}, Landroid/support/v4/view/a/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 235
    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-static {p1, p2}, Landroid/support/v4/view/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 229
    return-void
.end method

.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-static {p1, p2}, Landroid/support/v4/view/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 240
    return-void
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-static {p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 256
    return-void
.end method
