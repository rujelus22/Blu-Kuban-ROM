.class Lcom/google/googlenav/ui/view/android/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/CheckableContainer;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/CheckableContainer;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/Z;->a:Lcom/google/googlenav/ui/view/android/CheckableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->a:Lcom/google/googlenav/ui/view/android/CheckableContainer;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a(Lcom/google/googlenav/ui/view/android/CheckableContainer;)Lcom/google/googlenav/ui/view/android/ab;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_d

    .line 87
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->a:Lcom/google/googlenav/ui/view/android/CheckableContainer;

    invoke-interface {v0, v1, p2}, Lcom/google/googlenav/ui/view/android/ab;->a(Lcom/google/googlenav/ui/view/android/CheckableContainer;Z)V

    .line 89
    :cond_d
    return-void
.end method
