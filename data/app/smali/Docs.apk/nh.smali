.class public Lnh;
.super Lbq;
.source "DocListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private a:Landroid/widget/SectionIndexer;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILsB;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lbq;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 43
    invoke-virtual {p0, p6}, Lnh;->a(LsB;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a(LsB;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    invoke-virtual {p1}, LsB;->a()Landroid/widget/SectionIndexer;

    move-result-object v0

    iput-object v0, p0, Lnh;->a:Landroid/widget/SectionIndexer;

    .line 48
    return-void
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lnh;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lnh;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lnh;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
