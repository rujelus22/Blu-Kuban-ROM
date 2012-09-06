.class LaQ/aC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/view/ViewGroup;

.field c:Landroid/view/ViewGroup;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/view/ViewGroup;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaQ/aC;->j:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(LaQ/ap;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, LaQ/aC;-><init>()V

    return-void
.end method
