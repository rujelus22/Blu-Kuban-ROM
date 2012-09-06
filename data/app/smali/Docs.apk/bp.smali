.class public abstract Lbp;
.super Lbe;
.source "ResourceCursorAdapter.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1, p3, p4}, Lbe;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 94
    iput p2, p0, Lbp;->c:I

    iput p2, p0, Lbp;->b:I

    .line 95
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lbp;->a:Landroid/view/LayoutInflater;

    .line 96
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lbp;->a:Landroid/view/LayoutInflater;

    iget v1, p0, Lbp;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lbp;->a:Landroid/view/LayoutInflater;

    iget v1, p0, Lbp;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
