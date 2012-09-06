.class LaQ/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/view/ViewGroup;

.field e:[LaQ/ba;

.field f:Landroid/view/ViewGroup;

.field g:LaQ/aZ;

.field h:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 v0, 0x5

    new-array v0, v0, [LaQ/ba;

    iput-object v0, p0, LaQ/bb;->e:[LaQ/ba;

    return-void
.end method
