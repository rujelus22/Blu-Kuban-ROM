.class public Lcom/google/android/youtube/app/honeycomb/phone/p;
.super Lcom/google/android/youtube/app/honeycomb/phone/e;
.source "SourceFile"


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V
    .registers 5
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/e;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/p;->b:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/p;->b:Landroid/view/View;

    const v1, 0x7f08004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/p;->c:Landroid/view/View;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/p;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public j()V
    .registers 3

    .prologue
    .line 39
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->j()V

    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/p;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    return-void
.end method

.method public k()V
    .registers 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->k()V

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/p;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/p;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 48
    return-void
.end method

.method public final n()Landroid/view/View;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/p;->b:Landroid/view/View;

    return-object v0
.end method
