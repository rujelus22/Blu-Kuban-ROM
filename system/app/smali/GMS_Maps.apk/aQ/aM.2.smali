.class public LaQ/aM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/view/ViewGroup;

.field e:Landroid/widget/TextView;

.field f:Landroid/view/View;

.field g:Landroid/view/ViewGroup;

.field h:Ljava/util/List;

.field i:Ljava/util/List;

.field j:Ljava/util/List;

.field private k:LaQ/aE;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaQ/aM;->h:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaQ/aM;->i:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaQ/aM;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(LaQ/aE;)V
    .registers 3
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, LaQ/aM;->k:LaQ/aE;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, LaQ/aM;->k:LaQ/aE;

    invoke-static {v0}, LaQ/aE;->a(LaQ/aE;)V

    .line 124
    :cond_9
    iput-object p1, p0, LaQ/aM;->k:LaQ/aE;

    .line 125
    invoke-static {p1, p0}, LaQ/aE;->a(LaQ/aE;LaQ/aM;)V

    .line 126
    return-void
.end method
