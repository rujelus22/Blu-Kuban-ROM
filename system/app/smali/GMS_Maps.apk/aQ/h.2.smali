.class LaQ/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaQ/g;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, LaQ/h;-><init>()V

    return-void
.end method

.method static synthetic a(LaQ/h;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, LaQ/h;->b:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(LaQ/h;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, LaQ/h;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(LaQ/h;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, LaQ/h;->a:Landroid/widget/TextView;

    return-object p1
.end method
