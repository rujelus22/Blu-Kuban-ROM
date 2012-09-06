.class public LAT;
.super LAU;
.source "TableSpan.java"

# interfaces
.implements LEf;


# instance fields
.field private final a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, LAU;-><init>(Landroid/view/View;)V

    .line 24
    iput-object p2, p0, LAT;->a:Landroid/view/View$OnClickListener;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, LAT;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 30
    return-void
.end method
