.class Landroid/support/v4/view/b;
.super Landroid/support/v4/view/g;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/support/v4/view/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 122
    invoke-static {}, Landroid/support/v4/view/h;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/view/a;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 127
    new-instance v0, Landroid/support/v4/view/c;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/c;-><init>(Landroid/support/v4/view/b;Landroid/support/v4/view/a;)V

    invoke-static {v0}, Landroid/support/v4/view/h;->a(Landroid/support/v4/view/j;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/h;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 205
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Ld/f;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-virtual {p3}, Ld/f;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v4/view/h;->a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/h;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/h;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/h;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 180
    return-void
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/h;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 193
    return-void
.end method

.method public d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/h;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 211
    return-void
.end method
