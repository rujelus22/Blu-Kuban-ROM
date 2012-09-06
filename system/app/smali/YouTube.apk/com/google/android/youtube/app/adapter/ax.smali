.class public final Lcom/google/android/youtube/app/adapter/ax;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 25
    const v0, 0x7f040065

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ax;->a:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    if-nez p2, :cond_1a

    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ax;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f040065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    :goto_c
    check-cast v0, Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/ax;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/ArtistBundle$Related;

    .line 36
    iget-object v1, v1, Lcom/google/android/youtube/core/model/ArtistBundle$Related;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-object v0

    :cond_1a
    move-object v0, p2

    goto :goto_c
.end method
