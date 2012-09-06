.class LaQ/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaQ/t;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, LaQ/u;-><init>()V

    return-void
.end method

.method static synthetic a(LaQ/u;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, LaQ/u;->c:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(LaQ/u;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, LaQ/u;->a:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(LaQ/u;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LaQ/u;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(LaQ/u;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, LaQ/u;->b:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(LaQ/u;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LaQ/u;->a:Landroid/widget/ImageView;

    return-object v0
.end method
