.class public final Lcom/google/android/youtube/app/honeycomb/phone/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/honeycomb/ui/l;


# instance fields
.field private a:Landroid/view/MenuItem;

.field private b:Landroid/view/MenuItem;

.field private c:Landroid/view/MenuItem;

.field private d:Landroid/view/MenuItem;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->e:Z

    if-nez v0, :cond_7

    .line 67
    :goto_6
    return-void

    .line 60
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->g:Z

    if-nez v0, :cond_2d

    move v0, v1

    .line 61
    :goto_c
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->c:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 62
    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->d:Landroid/view/MenuItem;

    if-nez v0, :cond_2f

    move v3, v1

    :goto_16
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 64
    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->f:Z

    if-eqz v0, :cond_31

    move v0, v1

    .line 65
    :goto_20
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->a:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 66
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->b:Landroid/view/MenuItem;

    if-nez v0, :cond_33

    :goto_29
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    :cond_2d
    move v0, v2

    .line 60
    goto :goto_c

    :cond_2f
    move v3, v2

    .line 62
    goto :goto_16

    :cond_31
    move v0, v2

    .line 64
    goto :goto_20

    :cond_33
    move v1, v2

    .line 66
    goto :goto_29
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 3
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->e:Z

    .line 30
    const v0, 0x7f080150

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->a:Landroid/view/MenuItem;

    .line 31
    const v0, 0x7f080152

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->b:Landroid/view/MenuItem;

    .line 32
    const v0, 0x7f080151

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->c:Landroid/view/MenuItem;

    .line 33
    const v0, 0x7f080153

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->d:Landroid/view/MenuItem;

    .line 34
    return-void
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->f:Z

    .line 42
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/cm;->a()V

    .line 43
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->g:Z

    .line 47
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/cm;->a()V

    .line 48
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cm;->g:Z

    .line 52
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/cm;->a()V

    .line 53
    return-void
.end method
