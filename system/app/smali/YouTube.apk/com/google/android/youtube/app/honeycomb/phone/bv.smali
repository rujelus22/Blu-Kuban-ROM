.class public abstract Lcom/google/android/youtube/app/honeycomb/phone/bv;
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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bv;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->g()Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bv;->b:Landroid/view/View;

    .line 25
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bv;->d:Z

    .line 30
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 34
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bv;->c:Z

    if-nez v0, :cond_7

    .line 35
    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bv;->c:Z

    .line 38
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bv;->d:Z

    if-nez v0, :cond_d

    .line 39
    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bv;->d:Z

    .line 42
    :cond_d
    return-void
.end method
