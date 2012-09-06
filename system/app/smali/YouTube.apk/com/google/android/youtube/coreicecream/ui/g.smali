.class public final Lcom/google/android/youtube/coreicecream/ui/g;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;
.implements Lcom/google/android/youtube/core/player/am;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Landroid/view/Window;

.field private final f:Landroid/app/ActionBar;

.field private final g:Landroid/view/View;

.field private final h:[Landroid/view/View;

.field private final i:Lcom/google/android/youtube/coreicecream/ui/h;

.field private j:Landroid/graphics/Rect;

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 31
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->b()I

    move-result v0

    sput v0, Lcom/google/android/youtube/coreicecream/ui/g;->a:I

    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x1

    .line 52
    sget v2, Lcom/google/android/youtube/coreicecream/ui/g;->a:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_f

    .line 53
    const/4 v0, 0x3

    .line 55
    :cond_f
    sget v2, Lcom/google/android/youtube/coreicecream/ui/g;->a:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_19

    .line 56
    or-int/lit8 v0, v0, 0x4

    .line 57
    const/16 v1, 0x700

    .line 61
    :cond_19
    sput v0, Lcom/google/android/youtube/coreicecream/ui/g;->b:I

    .line 62
    sput v1, Lcom/google/android/youtube/coreicecream/ui/g;->c:I

    .line 63
    or-int/2addr v0, v1

    sput v0, Lcom/google/android/youtube/coreicecream/ui/g;->d:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/view/Window;Landroid/app/ActionBar;Lcom/google/android/youtube/core/player/PlayerView;[Landroid/view/View;Lcom/google/android/youtube/coreicecream/ui/h;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 90
    const-string v0, "window cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/g;->e:Landroid/view/Window;

    .line 91
    const-string v0, "playerView cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/g;->g:Landroid/view/View;

    .line 92
    invoke-virtual {p3, p0}, Lcom/google/android/youtube/core/player/PlayerView;->setSystemWindowInsetsListener(Lcom/google/android/youtube/core/player/am;)V

    .line 93
    iput-object p2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->f:Landroid/app/ActionBar;

    .line 94
    iput-object p4, p0, Lcom/google/android/youtube/coreicecream/ui/g;->h:[Landroid/view/View;

    .line 95
    iput-object p5, p0, Lcom/google/android/youtube/coreicecream/ui/g;->i:Lcom/google/android/youtube/coreicecream/ui/h;

    .line 96
    invoke-virtual {p3, p0}, Lcom/google/android/youtube/core/player/PlayerView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 97
    invoke-virtual {p3}, Lcom/google/android/youtube/core/player/PlayerView;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/coreicecream/ui/g;->k:I

    .line 98
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/g;->l:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/g;->m:Z

    if-eqz v0, :cond_10

    sget v0, Lcom/google/android/youtube/coreicecream/ui/g;->d:I

    .line 171
    :goto_a
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/g;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 172
    return-void

    .line 169
    :cond_10
    sget v0, Lcom/google/android/youtube/coreicecream/ui/g;->c:I

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private b()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 175
    sget v0, Lcom/google/android/youtube/coreicecream/ui/g;->a:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3b

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/g;->h:[Landroid/view/View;

    if-eqz v0, :cond_3b

    move v0, v1

    .line 176
    :goto_c
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->h:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_3b

    .line 177
    iget-boolean v2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->l:Z

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->j:Landroid/graphics/Rect;

    if-eqz v2, :cond_33

    .line 178
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->h:[Landroid/view/View;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/g;->j:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/google/android/youtube/coreicecream/ui/g;->j:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/google/android/youtube/coreicecream/ui/g;->j:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/google/android/youtube/coreicecream/ui/g;->j:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 176
    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 180
    :cond_33
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->h:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_30

    .line 184
    :cond_3b
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)V
    .registers 3
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/g;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 148
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/g;->j:Landroid/graphics/Rect;

    .line 149
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/ui/g;->b()V

    .line 151
    :cond_d
    return-void
.end method

.method public final a(Z)V
    .registers 5
    .parameter

    .prologue
    const/16 v1, 0x400

    .line 101
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/g;->l:Z

    if-eq v0, p1, :cond_1c

    .line 102
    iput-boolean p1, p0, Lcom/google/android/youtube/coreicecream/ui/g;->l:Z

    .line 103
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/ui/g;->a()V

    .line 104
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/ui/g;->b()V

    .line 105
    sget v0, Lcom/google/android/youtube/coreicecream/ui/g;->a:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1c

    .line 106
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->e:Landroid/view/Window;

    if-eqz p1, :cond_1d

    move v0, v1

    :goto_19
    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 110
    :cond_1c
    return-void

    .line 106
    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/google/android/youtube/coreicecream/ui/g;->m:Z

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/g;->removeMessages(I)V

    .line 118
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/ui/g;->a()V

    .line 119
    sget v0, Lcom/google/android/youtube/coreicecream/ui/g;->a:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1a

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/g;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_1a

    .line 120
    if-eqz p1, :cond_1b

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/g;->f:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 126
    :cond_1a
    :goto_1a
    return-void

    .line 123
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/g;->f:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_1a
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a

    .line 160
    :goto_5
    return-void

    .line 157
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/ui/g;->a()V

    goto :goto_5

    .line 155
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public final onSystemUiVisibilityChange(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    sget v2, Lcom/google/android/youtube/coreicecream/ui/g;->a:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_15

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    if-eq v2, p1, :cond_15

    .line 132
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->g:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 134
    :cond_15
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->i:Lcom/google/android/youtube/coreicecream/ui/h;

    if-eqz v2, :cond_28

    iget v2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->k:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_28

    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_28

    .line 136
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->i:Lcom/google/android/youtube/coreicecream/ui/h;

    invoke-interface {v2}, Lcom/google/android/youtube/coreicecream/ui/h;->p()V

    .line 138
    :cond_28
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/g;->k:I

    .line 139
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/g;->removeMessages(I)V

    .line 141
    iget-boolean v2, p0, Lcom/google/android/youtube/coreicecream/ui/g;->l:Z

    iget-boolean v3, p0, Lcom/google/android/youtube/coreicecream/ui/g;->m:Z

    and-int/2addr v3, v2

    sget v2, Lcom/google/android/youtube/coreicecream/ui/g;->b:I

    and-int/2addr v2, p1

    sget v4, Lcom/google/android/youtube/coreicecream/ui/g;->b:I

    if-ne v2, v4, :cond_44

    move v2, v0

    :goto_3a
    if-eq v3, v2, :cond_46

    :goto_3c
    if-eqz v0, :cond_43

    .line 142
    const-wide/16 v2, 0x9c4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/youtube/coreicecream/ui/g;->sendEmptyMessageDelayed(IJ)Z

    .line 144
    :cond_43
    return-void

    :cond_44
    move v2, v1

    .line 141
    goto :goto_3a

    :cond_46
    move v0, v1

    goto :goto_3c
.end method
