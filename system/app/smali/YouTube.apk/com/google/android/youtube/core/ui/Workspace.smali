.class public Lcom/google/android/youtube/core/ui/Workspace;
.super Lcom/google/android/youtube/core/ui/AbstractWorkspace;
.source "SourceFile"


# instance fields
.field private b:Lcom/google/android/youtube/core/ui/TabRow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public static a(Landroid/app/Activity;III)Lcom/google/android/youtube/core/ui/Workspace;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/TabRow;

    .line 51
    const v1, 0x7f09002a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/ui/Workspace;

    .line 52
    invoke-static {v1, v0, p3}, Lcom/google/android/youtube/core/ui/Workspace;->a(Lcom/google/android/youtube/core/ui/Workspace;Lcom/google/android/youtube/core/ui/TabRow;I)Lcom/google/android/youtube/core/ui/Workspace;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/Workspace;Lcom/google/android/youtube/core/ui/TabRow;)Lcom/google/android/youtube/core/ui/Workspace;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/youtube/core/ui/Workspace;->a(Lcom/google/android/youtube/core/ui/Workspace;Lcom/google/android/youtube/core/ui/TabRow;I)Lcom/google/android/youtube/core/ui/Workspace;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/youtube/core/ui/Workspace;Lcom/google/android/youtube/core/ui/TabRow;I)Lcom/google/android/youtube/core/ui/Workspace;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/Workspace;->b:Lcom/google/android/youtube/core/ui/TabRow;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->b()V

    new-instance v0, Lcom/google/android/youtube/core/ui/s;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/ui/s;-><init>(Lcom/google/android/youtube/core/ui/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/ui/TabRow;->a(Lcom/google/android/youtube/core/ui/o;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/core/ui/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_1e

    .line 38
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->a(IZ)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->c(I)V

    .line 42
    :cond_1e
    return-object p0
.end method


# virtual methods
.method protected final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->b:Lcom/google/android/youtube/core/ui/TabRow;

    if-eqz v0, :cond_a

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->b:Lcom/google/android/youtube/core/ui/TabRow;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/ui/TabRow;->a(IZ)V

    .line 72
    :cond_a
    return-void
.end method

.method public final b()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->b:Lcom/google/android/youtube/core/ui/TabRow;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/TabRow;->a()V

    move v0, v1

    .line 92
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 93
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->b:Lcom/google/android/youtube/core/ui/TabRow;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/ui/TabRow;->a(Ljava/lang/String;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 95
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->a()I

    move-result v0

    .line 96
    if-ltz v0, :cond_2d

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v2

    if-le v0, v2, :cond_3b

    .line 99
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->b:Lcom/google/android/youtube/core/ui/TabRow;

    if-eqz v0, :cond_37

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->b:Lcom/google/android/youtube/core/ui/TabRow;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/TabRow;->a(IZ)V

    .line 106
    :cond_37
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->requestLayout()V

    .line 107
    return-void

    :cond_3b
    move v1, v0

    goto :goto_2d
.end method
