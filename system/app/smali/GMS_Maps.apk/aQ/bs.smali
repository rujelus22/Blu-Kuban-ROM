.class LaQ/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field a:[Landroid/widget/TextView;

.field b:[Landroid/widget/TextView;

.field c:[Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/view/View;

.field i:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, LaQ/bs;->a:[Landroid/widget/TextView;

    .line 40
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, LaQ/bs;->b:[Landroid/widget/TextView;

    .line 41
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, LaQ/bs;->c:[Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(LaQ/br;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, LaQ/bs;-><init>()V

    return-void
.end method
