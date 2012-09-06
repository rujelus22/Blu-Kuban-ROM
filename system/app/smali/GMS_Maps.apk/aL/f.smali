.class LaL/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaL/e;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, LaL/f;-><init>()V

    return-void
.end method

.method static synthetic a(LaL/f;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, LaL/f;->b:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(LaL/f;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, LaL/f;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(LaL/f;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, LaL/f;->a:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(LaL/f;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, LaL/f;->b:Landroid/widget/ImageView;

    return-object v0
.end method
