.class public final Lcom/google/android/youtube/app/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:I

.field private final c:Landroid/content/res/Resources;

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Landroid/view/View;

.field private final f:Landroid/app/Dialog;

.field private final g:Lcom/google/android/youtube/app/ui/m;

.field private final h:Landroid/view/View$OnClickListener;

.field private final i:Landroid/widget/AdapterView$OnItemClickListener;

.field private final j:I

.field private final k:I

.field private l:I

.field private m:Landroid/view/View;

.field private n:Lcom/google/android/youtube/app/ui/p;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, "activity can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/j;->a:Landroid/app/Activity;

    .line 84
    iput p2, p0, Lcom/google/android/youtube/app/ui/j;->b:I

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 87
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/app/ui/j;->j:I

    .line 88
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/ui/j;->k:I

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/j;->d:Landroid/view/LayoutInflater;

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/j;->c:Landroid/content/res/Resources;

    .line 93
    new-instance v0, Lcom/google/android/youtube/app/ui/k;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/k;-><init>(Lcom/google/android/youtube/app/ui/j;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/j;->h:Landroid/view/View$OnClickListener;

    .line 100
    new-instance v0, Lcom/google/android/youtube/app/ui/l;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/l;-><init>(Lcom/google/android/youtube/app/ui/j;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/j;->i:Landroid/widget/AdapterView$OnItemClickListener;

    .line 112
    new-instance v0, Lcom/google/android/youtube/app/ui/m;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/m;-><init>(Lcom/google/android/youtube/app/ui/j;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/j;->g:Lcom/google/android/youtube/app/ui/m;

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f040013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/j;->e:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->e:Landroid/view/View;

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 115
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/j;->g:Lcom/google/android/youtube/app/ui/m;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/j;->i:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0d0013

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/j;->f:Landroid/app/Dialog;

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->f:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/j;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->f:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 123
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 124
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 125
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 128
    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 129
    const/16 v1, 0x300

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 132
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/j;->f:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/j;)Lcom/google/android/youtube/app/ui/p;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->n:Lcom/google/android/youtube/app/ui/p;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/j;Landroid/view/View;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/j;->f:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/google/android/youtube/app/ui/j;->l:I

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v3, v0, :cond_4e

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/google/android/youtube/app/ui/j;->l:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x14

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->e:Landroid/view/View;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/google/android/youtube/app/ui/j;->b:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    iput-object p1, p0, Lcom/google/android/youtube/app/ui/j;->m:Landroid/view/View;

    return-void

    :cond_4e
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x4

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->e:Landroid/view/View;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3b
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/j;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/j;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final a(II)I
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 156
    if-lez p1, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/j;->g:Lcom/google/android/youtube/app/ui/m;

    invoke-virtual {v2, v0, v1, p2}, Lcom/google/android/youtube/app/ui/m;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/j;->e:Landroid/view/View;

    iget v2, p0, Lcom/google/android/youtube/app/ui/j;->j:I

    iget v3, p0, Lcom/google/android/youtube/app/ui/j;->k:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/j;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/app/ui/j;->l:I

    return v0

    :cond_21
    move-object v0, v1

    goto :goto_9
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/j;->m:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 201
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/ui/p;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/j;->n:Lcom/google/android/youtube/app/ui/p;

    .line 177
    return-void
.end method

.method public final b()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/j;->f:Landroid/app/Dialog;

    return-object v0
.end method
