.class public abstract Lcom/google/android/youtube/app/honeycomb/phone/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

.field protected final b:Landroid/view/View;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;)V
    .registers 4
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ap;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->e()Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ap;->b:Landroid/view/View;

    .line 24
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->b()V

    .line 25
    return-void
.end method


# virtual methods
.method protected a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/view/Menu;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method protected a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 43
    return-void
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method

.method protected c_()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected e()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ap;->d:Z

    .line 29
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->e()V

    .line 30
    return-void
.end method

.method public final g()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 33
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ap;->c:Z

    if-nez v0, :cond_a

    .line 34
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->c()V

    .line 35
    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ap;->c:Z

    .line 37
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ap;->d:Z

    if-nez v0, :cond_13

    .line 38
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->c_()V

    .line 39
    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ap;->d:Z

    .line 41
    :cond_13
    return-void
.end method

.method protected final h()V
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ap;->c:Z

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ap;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->c()V

    .line 64
    return-void
.end method
