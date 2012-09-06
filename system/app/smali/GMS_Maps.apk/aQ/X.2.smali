.class LaQ/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaQ/W;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, LaQ/X;-><init>()V

    return-void
.end method

.method static synthetic a(LaQ/X;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, LaQ/X;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(LaQ/X;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, LaQ/X;->a:Landroid/widget/TextView;

    return-object p1
.end method
