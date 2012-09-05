.class public Lcom/sprint/dsa/view/ViewModifier;
.super Lcom/sprint/dsa/view/ViewVisitor;
.source "ViewModifier.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/sprint/dsa/view/ViewVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public forAnyView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 26
    return-void
.end method

.method public forEditText(Landroid/widget/EditText;)V
    .registers 2
    .parameter "editText"

    .prologue
    .line 38
    return-void
.end method

.method public forTextView(Landroid/widget/TextView;)V
    .registers 2
    .parameter "textView"

    .prologue
    .line 34
    return-void
.end method

.method public forViewTag(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3
    .parameter "view"
    .parameter "tag"

    .prologue
    .line 30
    return-void
.end method

.method public modify(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/view/ViewModifier;->forAnyView(Landroid/view/View;)V

    .line 16
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    move-object v0, p1

    .line 17
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/view/ViewModifier;->forTextView(Landroid/widget/TextView;)V

    .line 19
    :cond_d
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_16

    .line 20
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/view/ViewModifier;->forEditText(Landroid/widget/EditText;)V

    .line 22
    :cond_16
    return-void
.end method

.method public visit(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/view/ViewModifier;->modify(Landroid/view/View;)V

    .line 11
    return-void
.end method
