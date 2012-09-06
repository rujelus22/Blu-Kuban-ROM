.class public Lab/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

.field private volatile d:Z

.field private final e:Lcom/google/googlenav/ui/v;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/16 v0, 0xfa0

    sput v0, Lab/a;->a:I

    .line 35
    const/16 v0, 0xf

    sput v0, Lab/a;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lab/a;->d:Z

    .line 52
    iput-object p1, p0, Lab/a;->e:Lcom/google/googlenav/ui/v;

    .line 53
    return-void
.end method

.method static synthetic a(Lab/a;)Lcom/google/googlenav/ui/v;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lab/a;->e:Lcom/google/googlenav/ui/v;

    return-object v0
.end method

.method static synthetic a(Lab/a;Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;)Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lab/a;->c:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    return-object p1
.end method

.method static synthetic b(Lab/a;)Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lab/a;->c:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lab/a;->d:Z

    .line 62
    return-void
.end method

.method public a(ILjava/lang/CharSequence;IIIIILcom/google/googlenav/ui/view/n;Lcom/google/googlenav/ui/view/o;I)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    new-instance v1, Lab/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v3

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lab/b;-><init>(Lab/a;LY/c;ILjava/lang/CharSequence;IIIILcom/google/googlenav/ui/view/n;Lcom/google/googlenav/ui/view/o;I)V

    .line 110
    sget v2, Lab/a;->a:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, LY/d;->c(J)V

    .line 111
    sget v2, Lab/a;->b:I

    invoke-virtual {v1, v2}, LY/d;->b(I)V

    .line 112
    move/from16 v0, p7

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, LY/d;->a(J)V

    .line 113
    invoke-virtual {v1}, LY/d;->g()V

    .line 114
    return-void
.end method

.method a(ILjava/lang/CharSequence;IIIILcom/google/googlenav/ui/view/n;Lcom/google/googlenav/ui/view/o;I)Z
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0}, Lab/a;->c()Z

    move-result v0

    if-nez v0, :cond_8

    .line 127
    const/4 v0, 0x0

    .line 162
    :goto_7
    return v0

    .line 129
    :cond_8
    const/4 v11, 0x1

    .line 130
    iget-object v0, p0, Lab/a;->e:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v12

    new-instance v0, Lab/c;

    move-object v1, p0

    move/from16 v2, p9

    move/from16 v3, p3

    move-object v4, p2

    move v5, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lab/c;-><init>(Lab/a;IILjava/lang/CharSequence;IIIILcom/google/googlenav/ui/view/n;Lcom/google/googlenav/ui/view/o;)V

    invoke-virtual {v12, v0, v11}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 162
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lab/a;->d:Z

    .line 72
    return-void
.end method

.method protected c()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lab/a;->e:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->C()Z

    move-result v1

    if-nez v1, :cond_a

    .line 195
    :cond_9
    :goto_9
    return v0

    .line 182
    :cond_a
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->ar()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/actionbar/a;->f()Z

    move-result v1

    .line 185
    :goto_1c
    if-eqz v1, :cond_28

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 189
    :cond_28
    iget-object v1, p0, Lab/a;->e:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, LaM/am;->u()LaM/bj;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, LaM/am;->v()LaM/O;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, LaM/am;->w()LaM/bK;

    move-result-object v1

    if-nez v1, :cond_9

    .line 195
    const/4 v0, 0x1

    goto :goto_9

    .line 182
    :cond_42
    iget-boolean v1, p0, Lab/a;->d:Z

    goto :goto_1c
.end method
