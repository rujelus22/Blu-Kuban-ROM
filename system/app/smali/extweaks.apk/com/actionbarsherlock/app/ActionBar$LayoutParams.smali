.class public Lcom/actionbarsherlock/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# instance fields
.field public gravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 934
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;-><init>(III)V

    .line 935
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 924
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 917
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 925
    const/16 v0, 0x13

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 926
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 929
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 917
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 930
    iput p3, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 931
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 920
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 917
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 921
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter

    .prologue
    .line 944
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 945
    return-void
.end method

.method public constructor <init>(Lcom/actionbarsherlock/app/ActionBar$LayoutParams;)V
    .registers 3
    .parameter

    .prologue
    .line 938
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 917
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 940
    iget v0, p1, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 941
    return-void
.end method
