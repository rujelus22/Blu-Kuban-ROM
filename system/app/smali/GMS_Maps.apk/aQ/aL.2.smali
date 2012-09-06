.class LaQ/aL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/view/View;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/view/ViewGroup;

.field k:Landroid/view/ViewGroup;

.field l:Landroid/widget/ImageView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:I

.field p:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaQ/aL;->p:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(LaQ/aF;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, LaQ/aL;-><init>()V

    return-void
.end method
