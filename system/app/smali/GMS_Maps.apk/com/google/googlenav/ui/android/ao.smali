.class public Lcom/google/googlenav/ui/android/ao;
.super Lcom/google/googlenav/ui/view/d;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;ZI)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 53
    iput p4, p0, Lcom/google/googlenav/ui/android/ao;->a:I

    .line 54
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/google/googlenav/ui/android/ao;->a:I

    return v0
.end method
