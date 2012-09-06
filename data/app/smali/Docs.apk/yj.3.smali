.class public Lyj;
.super Ljava/lang/Object;
.source "RedrawManager.java"

# interfaces
.implements LBT;
.implements LxU;
.implements LxW;
.implements Lxx;
.implements LyC;
.implements LyM;
.implements Lyb;
.implements Lyc;


# static fields
.field static a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private static final a:Ljava/lang/Object;

.field static a:Lzd;
    .annotation runtime Lanr;
    .end annotation
.end field


# instance fields
.field private final a:I

.field private a:LBG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBG",
            "<",
            "Lzr;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LBQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBQ",
            "<",
            "Lzr;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Lcom/google/android/apps/docs/editors/kix/CursorTracker;

.field private final a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lyn;",
            ">;"
        }
    .end annotation
.end field

.field private a:LvU;

.field private a:Lvo;

.field private final a:LwH;

.field private a:Lwb;

.field private a:Lwg;

.field private a:Lyg;

.field private a:Lzr;

.field private final a:Z

.field private final b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyj;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LFX;LzH;Lcom/google/android/apps/docs/editors/kix/KixEditText;Lcom/google/android/apps/docs/editors/kix/CursorTracker;ZZLyJ;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lyj;->a:LvU;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lyj;->a:Lwb;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lyj;->a:Lwg;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lyj;->a:Lyg;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lyj;->a:Lvo;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lyj;->a:Lzr;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyj;->c:Z

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lyj;->a:Ljava/util/Set;

    .line 111
    const-string v0, "kixEnableResetHack"

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lyj;->a:Z

    .line 112
    iput-object p4, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    .line 113
    iput-object p5, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/CursorTracker;

    .line 114
    iput-boolean p6, p0, Lyj;->b:Z

    .line 115
    new-instance v0, LBQ;

    invoke-direct {v0}, LBQ;-><init>()V

    iput-object v0, p0, Lyj;->a:LBQ;

    .line 116
    iget-object v0, p0, Lyj;->a:LBQ;

    invoke-virtual {v0, p0}, LBQ;->a(LBT;)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lkg;->c(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lyj;->a(ZLFX;)F

    move-result v4

    .line 119
    const-string v0, "kixMinZoom"

    const-wide v1, 0x3fd5555560000000L

    invoke-interface {p2, v0, v1, v2}, LFX;->a(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v5, v0

    .line 121
    const-string v0, "kixMaxZoom"

    const-wide/high16 v1, 0x4008

    invoke-interface {p2, v0, v1, v2}, LFX;->a(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v6, v0

    .line 123
    new-instance v0, LwI;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lyj;->a:LBQ;

    move-object v2, p3

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, LwI;-><init>(Landroid/content/Context;LzH;Landroid/text/Editable;FFFZLyJ;)V

    iput-object v0, p0, Lyj;->a:LwH;

    .line 125
    invoke-direct {p0}, Lyj;->m()V

    .line 131
    const-string v0, "kixPageContentWidth"

    const/16 v1, 0x264

    invoke-interface {p2, v0, v1}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lyj;->a:I

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setTextIsSelectable(Z)V

    .line 137
    new-instance v0, Lyk;

    invoke-direct {v0, p0}, Lyk;-><init>(Lyj;)V

    invoke-virtual {p4, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 150
    return-void
.end method

.method private a(ZLFX;)F
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 153
    if-eqz p1, :cond_c

    .line 154
    const-string v0, "kixDefaultTabletZoom"

    const-wide/high16 v1, 0x3ff0

    invoke-interface {p2, v0, v1, v2}, LFX;->a(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 157
    :goto_b
    return v0

    :cond_c
    const-string v0, "kixDefaultPhoneZoom"

    const-wide v1, 0x3fe570a3e0000000L

    invoke-interface {p2, v0, v1, v2}, LFX;->a(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_b
.end method

.method static synthetic a(Lyj;)LBQ;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lyj;->a:LBQ;

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;II)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lyj;->a:LBQ;

    sget-object v1, Lyj;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LBQ;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 323
    iget-object v0, p0, Lyj;->a:LBQ;

    sget-object v2, Lyj;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, LBQ;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 324
    iget-object v0, p0, Lyj;->a:LBQ;

    sget-object v3, Lyj;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3}, LBQ;->removeSpan(Ljava/lang/Object;)V

    .line 328
    if-le v2, v1, :cond_3d

    if-ltz v1, :cond_3d

    .line 329
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_3d

    .line 330
    check-cast p1, Landroid/text/Spanned;

    .line 331
    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 332
    array-length v4, v3

    const/4 v0, 0x0

    :goto_29
    if-ge v0, v4, :cond_3d

    aget-object v5, v3, v0

    .line 333
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 334
    and-int/lit16 v7, v6, 0x100

    if-lez v7, :cond_3a

    .line 335
    iget-object v7, p0, Lyj;->a:LBQ;

    invoke-virtual {v7, v5, v1, v2, v6}, LBQ;->setSpan(Ljava/lang/Object;III)V

    .line 332
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 340
    :cond_3d
    return-void
.end method

.method private b(IILjava/lang/CharSequence;II)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-interface {p3, p4, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v4, p0, Lyj;->a:Lzr;

    invoke-interface {v4, p1, p2, v0}, Lzr;->a(IILjava/util/List;)V

    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_17

    .line 278
    :goto_16
    return-void

    .line 189
    :cond_17
    invoke-static {v0}, LFt;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 191
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFt;

    .line 192
    iget-object v5, p0, Lyj;->a:Lzr;

    invoke-virtual {v0}, LFt;->a()I

    move-result v6

    invoke-interface {v5, v6}, Lzr;->a(I)I

    move-result v5

    .line 193
    iget-object v6, p0, Lyj;->a:Lzr;

    invoke-virtual {v0}, LFt;->b()I

    move-result v7

    invoke-interface {v6, v7}, Lzr;->a(I)I

    move-result v6

    .line 197
    iget-object v7, p0, Lyj;->a:Lvo;

    invoke-interface {v7}, Lvo;->b()V

    .line 199
    if-ne v5, p1, :cond_109

    if-ne v6, p2, :cond_109

    .line 201
    :try_start_44
    const-string v7, "\n"

    invoke-virtual {p3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d8

    iget-object v7, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v7}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v7

    if-ne p2, v7, :cond_d8

    iget-object v7, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v7}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v7

    if-ne p1, v7, :cond_d8

    .line 208
    iget-object v2, p0, Lyj;->a:LvU;

    iget v7, p0, Lyj;->a:I

    invoke-interface {v2, v7}, LvU;->a(I)V

    .line 230
    :goto_63
    if-nez v1, :cond_123

    .line 233
    iget-object v1, p0, Lyj;->a:LBQ;

    invoke-virtual {v1, v5, v6}, LBQ;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 235
    invoke-static {v3, v1}, LafZ;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 236
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v3, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 237
    add-int/2addr v1, v5

    .line 238
    iget-object v3, p0, Lyj;->a:Lzr;

    invoke-interface {v3, v1}, Lzr;->b(I)I

    move-result v3

    .line 239
    invoke-virtual {v0}, LFt;->b()I

    move-result v0

    .line 244
    invoke-direct {p0, p1, v1}, Lyj;->c(II)V

    .line 258
    invoke-direct {p0, v5, v6}, Lyj;->d(II)V

    .line 261
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_94

    if-ge v3, v0, :cond_9f

    .line 262
    :cond_94
    iget-object v1, p0, Lyj;->a:LvU;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v0, v2}, LvU;->a(IILjava/lang/String;)V

    .line 265
    :cond_9f
    invoke-direct {p0, p3, p4, p5}, Lyj;->a(Ljava/lang/CharSequence;II)V

    .line 268
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 269
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a9
    :goto_a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_123

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFt;

    .line 270
    invoke-virtual {v0}, LFt;->a()I

    move-result v2

    invoke-virtual {v0}, LFt;->b()I

    move-result v3

    if-ge v2, v3, :cond_a9

    .line 271
    iget-object v2, p0, Lyj;->a:LvU;

    invoke-virtual {v0}, LFt;->a()I

    move-result v3

    invoke-virtual {v0}, LFt;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v4, ""

    invoke-interface {v2, v3, v0, v4}, LvU;->a(IILjava/lang/String;)V
    :try_end_d0
    .catchall {:try_start_44 .. :try_end_d0} :catchall_d1

    goto :goto_a9

    .line 276
    :catchall_d1
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0

    .line 210
    :cond_d8
    :try_start_d8
    const-string v7, ""

    invoke-virtual {p3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_120

    iget-object v7, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v7}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v7

    if-ne p2, v7, :cond_120

    iget-object v7, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v7}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v7

    if-eq p1, v7, :cond_102

    add-int/lit8 v7, p2, -0x1

    if-ne p1, v7, :cond_120

    iget-object v7, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v7}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v7

    iget-object v8, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v8}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v8

    if-ne v7, v8, :cond_120

    .line 219
    :cond_102
    iget-object v2, p0, Lyj;->a:LvU;

    invoke-interface {v2}, LvU;->c()V

    goto/16 :goto_63

    .line 224
    :cond_109
    iget-object v1, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v7, Lus;->can_not_be_deleted:I

    const/4 v8, 0x1

    invoke-static {v1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 226
    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 227
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_120
    .catchall {:try_start_d8 .. :try_end_120} :catchall_d1

    :cond_120
    move v1, v2

    goto/16 :goto_63

    .line 276
    :cond_123
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    goto/16 :goto_16
.end method

.method private b(LvZ;)V
    .registers 5
    .parameter

    .prologue
    .line 421
    invoke-interface {p1}, LvZ;->a()I

    move-result v0

    invoke-static {v0}, Lyo;->a(I)Lyo;

    move-result-object v0

    .line 424
    sget-object v1, Lyo;->a:Lyo;

    if-eq v0, v1, :cond_1f

    .line 425
    iget-object v0, p0, Lyj;->a:Lwb;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lwb;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 427
    new-instance v1, Lyl;

    invoke-direct {v1, p0, p1}, Lyl;-><init>(Lyj;LvZ;)V

    .line 438
    iget-object v2, p0, Lyj;->a:Lzr;

    invoke-interface {v2, p1, v1, v0}, Lzr;->a(LvZ;Lye;I)V

    .line 440
    :cond_1f
    return-void
.end method

.method private c(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 286
    iget-object v1, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v3

    .line 287
    iget-object v1, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v2

    .line 288
    const/4 v1, 0x0

    .line 289
    if-lt v3, p1, :cond_14

    if-ge v3, p2, :cond_14

    move v1, v0

    move v3, p2

    .line 293
    :cond_14
    if-lt v2, p1, :cond_20

    if-ge v2, p2, :cond_20

    .line 297
    :goto_18
    if-eqz v0, :cond_1f

    .line 298
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, v3, p2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setSelection(II)V

    .line 300
    :cond_1f
    return-void

    :cond_20
    move v0, v1

    move p2, v2

    goto :goto_18
.end method

.method private d(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lyj;->a:LBQ;

    sget-object v1, Lyj;->a:Ljava/lang/Object;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, p1, p2, v2}, LBQ;->setSpan(Ljava/lang/Object;III)V

    .line 313
    return-void
.end method

.method private m()V
    .registers 3

    .prologue
    .line 163
    new-instance v0, LyL;

    iget-object v1, p0, Lyj;->a:LwH;

    invoke-direct {v0, v1}, LyL;-><init>(LwH;)V

    .line 164
    iget-object v1, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, v1}, LyL;->a(LyN;)V

    .line 165
    invoke-virtual {v0, p0}, LyL;->a(LyM;)V

    .line 166
    iget-object v1, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setZoomManager(LyL;)V

    .line 167
    return-void
.end method

.method private n()V
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxx;)V

    .line 447
    return-void
.end method

.method private o()V
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b(Lxx;)V

    .line 454
    return-void
.end method

.method private p()V
    .registers 7

    .prologue
    .line 483
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->j()V

    .line 484
    iget-object v0, p0, Lyj;->a:LBQ;

    invoke-virtual {v0}, LBQ;->a()V

    .line 486
    :try_start_a
    invoke-direct {p0}, Lyj;->o()V

    .line 487
    iget-object v0, p0, Lyj;->a:Lzr;

    new-instance v1, Lym;

    invoke-direct {v1, p0}, Lym;-><init>(Lyj;)V

    invoke-interface {v0, v1}, Lzr;->a(Lye;)V
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_3e

    .line 496
    iget-object v0, p0, Lyj;->a:LBQ;

    invoke-virtual {v0}, LBQ;->b()V

    .line 497
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->k()V

    .line 498
    invoke-direct {p0}, Lyj;->n()V

    .line 501
    new-instance v0, Lzy;

    iget-object v1, p0, Lyj;->a:LBG;

    invoke-virtual {v1}, LBG;->a()LBH;

    move-result-object v1

    iget-object v2, p0, Lyj;->a:LBQ;

    invoke-virtual {v2}, LBQ;->a()LBV;

    move-result-object v2

    sget-object v3, Lyj;->a:Lzd;

    iget-object v4, p0, Lyj;->a:Lyg;

    iget-object v5, p0, Lyj;->a:LwH;

    invoke-direct/range {v0 .. v5}, Lzy;-><init>(LBH;LBV;LyO;Lyg;LwH;)V

    iput-object v0, p0, Lyj;->a:Lzr;

    .line 503
    return-void

    .line 496
    :catchall_3e
    move-exception v0

    iget-object v1, p0, Lyj;->a:LBQ;

    invoke-virtual {v1}, LBQ;->b()V

    .line 497
    iget-object v1, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->k()V

    .line 498
    invoke-direct {p0}, Lyj;->n()V

    throw v0
.end method

.method private q()V
    .registers 3

    .prologue
    .line 782
    iget-object v0, p0, Lyj;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyn;

    .line 783
    invoke-interface {v0}, Lyn;->a()V

    goto :goto_6

    .line 785
    :cond_16
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 799
    iget-object v0, p0, Lyj;->a:Lzr;

    invoke-interface {v0, p1}, Lzr;->a(I)I

    move-result v0

    return v0
.end method

.method public a()LAV;
    .registers 3

    .prologue
    .line 564
    iget-object v0, p0, Lyj;->a:Lwb;

    if-nez v0, :cond_6

    .line 565
    const/4 v0, 0x0

    .line 572
    :goto_5
    return-object v0

    .line 568
    :cond_6
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 570
    :try_start_b
    new-instance v0, LAV;

    iget-object v1, p0, Lyj;->a:Lwg;

    invoke-interface {v1}, Lwg;->a()Lvx;

    move-result-object v1

    invoke-direct {v0, v1}, LAV;-><init>(Lvx;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1c

    .line 572
    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    goto :goto_5

    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public a(II)LAV;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 578
    iget-object v0, p0, Lyj;->a:Lzr;

    if-nez v0, :cond_6

    .line 579
    const/4 v0, 0x0

    .line 606
    :goto_5
    return-object v0

    .line 582
    :cond_6
    new-instance v0, LAV;

    invoke-direct {v0}, LAV;-><init>()V

    .line 583
    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->b()V

    .line 589
    :try_start_10
    iget-object v1, p0, Lyj;->a:Lzr;

    invoke-interface {v1, p2}, Lzr;->b(I)I

    move-result v1

    .line 590
    new-instance v2, LBm;

    iget-object v3, p0, Lyj;->a:Lwb;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Lwb;->a(I)Lwk;

    move-result-object v3

    iget-object v4, p0, Lyj;->a:LwH;

    invoke-direct {v2, v3, v4}, LBm;-><init>(Lwk;LwH;)V

    .line 592
    invoke-virtual {v0, v2}, LAV;->a(LBm;)Z

    .line 595
    new-instance v2, LBg;

    iget-object v3, p0, Lyj;->a:Lwb;

    invoke-interface {v3, v1}, Lwb;->a(I)Lwi;

    move-result-object v3

    iget-object v4, p0, Lyj;->a:LwH;

    iget-object v5, p0, Lyj;->a:Lwb;

    invoke-interface {v5, v1}, Lwb;->a(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lyj;->a:Lwb;

    invoke-interface {v6, v1}, Lwb;->b(I)Lwk;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, LBg;-><init>(Lwi;LwH;Ljava/lang/String;Lwk;)V

    .line 598
    invoke-virtual {v0, v2}, LAV;->a(LBg;)Z

    .line 601
    iget-object v1, p0, Lyj;->a:Lzr;

    invoke-interface {v1, p1, p2, v0}, Lzr;->a(IILAV;)Z
    :try_end_49
    .catchall {:try_start_10 .. :try_end_49} :catchall_4f

    .line 603
    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    goto :goto_5

    :catchall_4f
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 477
    iget-boolean v0, p0, Lyj;->a:Z

    if-nez v0, :cond_7

    .line 478
    invoke-direct {p0}, Lyj;->p()V

    .line 480
    :cond_7
    return-void
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 727
    const-string v0, "RedrawManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParagraphAlignment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 730
    :try_start_1d
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 731
    iget-object v0, p0, Lyj;->a:LvU;

    invoke-interface {v0, p1}, LvU;->b(I)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2d

    .line 733
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    .line 735
    return-void

    .line 733
    :catchall_2d
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 346
    :try_start_5
    iget-object v0, p0, Lyj;->a:Lzr;

    invoke-interface {v0, p1}, Lzr;->b(I)I

    move-result v0

    .line 347
    iget-object v1, p0, Lyj;->a:Lzr;

    invoke-interface {v1, p2}, Lzr;->b(I)I

    move-result v1

    .line 348
    if-ne p1, p2, :cond_1f

    .line 349
    iget-object v1, p0, Lyj;->a:LvU;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LvU;->a(IZ)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_25

    .line 356
    :goto_19
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    .line 358
    return-void

    .line 353
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lyj;->a:LvU;

    invoke-interface {v2, v0, v1}, LvU;->a(II)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    goto :goto_19

    .line 356
    :catchall_25
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public a(IILjava/lang/CharSequence;II)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 172
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 173
    invoke-direct/range {p0 .. p5}, Lyj;->b(IILjava/lang/CharSequence;II)V

    .line 174
    invoke-direct {p0}, Lyj;->q()V

    .line 178
    :goto_13
    return-void

    .line 176
    :cond_14
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus;->enter_edit_mode:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/CursorTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/editors/kix/CursorTracker;->a(Ljava/lang/String;)V

    .line 520
    const-string v0, "RedrawManager"

    const-string v1, "Cursor removed"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    iget-object v0, p0, Lyj;->a:Lzr;

    invoke-interface {v0, p3}, Lzr;->a(I)I

    move-result v0

    .line 531
    iget-object v1, p0, Lyj;->a:Lzr;

    invoke-interface {v1, p2}, Lzr;->a(I)I

    move-result v1

    .line 533
    iget-object v2, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/CursorTracker;

    invoke-virtual {v2, p1, v1, v0}, Lcom/google/android/apps/docs/editors/kix/CursorTracker;->a(Ljava/lang/String;II)V

    .line 534
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 526
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    const v0, -0x7f3f3f01

    .line 509
    :try_start_3
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_6} :catch_d

    move-result v0

    .line 514
    :goto_7
    iget-object v1, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/CursorTracker;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/apps/docs/editors/kix/CursorTracker;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 515
    return-void

    .line 510
    :catch_d
    move-exception v1

    .line 511
    const-string v1, "RedrawManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid color "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public a(LvZ;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lyj;->a:Lyg;

    invoke-interface {v0}, Lyg;->a()V

    .line 389
    iget-boolean v0, p0, Lyj;->a:Z

    if-eqz v0, :cond_1b

    invoke-static {p1}, Lyo;->a(LvZ;)Lyo;

    move-result-object v0

    sget-object v1, Lyo;->c:Lyo;

    if-ne v0, v1, :cond_1b

    invoke-interface {p1}, LvZ;->b()I

    move-result v0

    if-nez v0, :cond_1b

    .line 392
    invoke-direct {p0}, Lyj;->p()V

    .line 395
    :cond_1b
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->j()V

    .line 396
    iget-object v0, p0, Lyj;->a:LBQ;

    invoke-virtual {v0}, LBQ;->a()V

    .line 398
    :try_start_25
    invoke-direct {p0}, Lyj;->o()V

    .line 399
    invoke-direct {p0, p1}, Lyj;->b(LvZ;)V
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_4b

    .line 402
    iget-object v0, p0, Lyj;->a:LBQ;

    invoke-virtual {v0}, LBQ;->b()V

    .line 403
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->k()V

    .line 404
    invoke-direct {p0}, Lyj;->n()V

    .line 407
    iget-boolean v0, p0, Lyj;->c:Z

    if-eqz v0, :cond_4a

    .line 409
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setSelection(I)V

    .line 410
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->sendAccessibilityEvent(I)V

    .line 411
    iput-boolean v2, p0, Lyj;->c:Z

    .line 413
    :cond_4a
    return-void

    .line 402
    :catchall_4b
    move-exception v0

    iget-object v1, p0, Lyj;->a:LBQ;

    invoke-virtual {v1}, LBQ;->b()V

    .line 403
    iget-object v1, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->k()V

    .line 404
    invoke-direct {p0}, Lyj;->n()V

    throw v0
.end method

.method public a(Lwb;)V
    .registers 2
    .parameter

    .prologue
    .line 750
    return-void
.end method

.method public a(Lwb;LvU;Lwg;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lyj;->a:Lwb;

    .line 459
    iput-object p2, p0, Lyj;->a:LvU;

    .line 460
    iput-object p3, p0, Lyj;->a:Lwg;

    .line 461
    invoke-interface {p1}, Lwb;->a()Lvo;

    move-result-object v0

    iput-object v0, p0, Lyj;->a:Lvo;

    .line 462
    new-instance v0, Lyh;

    invoke-direct {v0, p1}, Lyh;-><init>(Lwb;)V

    iput-object v0, p0, Lyj;->a:Lyg;

    .line 463
    new-instance v0, LBG;

    invoke-direct {v0}, LBG;-><init>()V

    iput-object v0, p0, Lyj;->a:LBG;

    .line 464
    invoke-interface {p3}, Lwg;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 465
    sget-object v0, Lyj;->a:Lzd;

    invoke-interface {p3}, Lwg;->a()LvI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzd;->a(LvI;)V

    .line 467
    :cond_29
    new-instance v0, Lzy;

    iget-object v1, p0, Lyj;->a:LBG;

    invoke-virtual {v1}, LBG;->a()LBH;

    move-result-object v1

    iget-object v2, p0, Lyj;->a:LBQ;

    invoke-virtual {v2}, LBQ;->a()LBV;

    move-result-object v2

    sget-object v3, Lyj;->a:Lzd;

    iget-object v4, p0, Lyj;->a:Lyg;

    iget-object v5, p0, Lyj;->a:LwH;

    invoke-direct/range {v0 .. v5}, Lzy;-><init>(LBH;LBV;LyO;Lyg;LwH;)V

    iput-object v0, p0, Lyj;->a:Lzr;

    .line 469
    invoke-direct {p0}, Lyj;->o()V

    .line 470
    invoke-direct {p0}, Lyj;->n()V

    .line 471
    return-void
.end method

.method public a(Lyn;)V
    .registers 3
    .parameter

    .prologue
    .line 770
    iget-object v0, p0, Lyj;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 739
    if-eqz p1, :cond_9

    .line 740
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setEditable(Z)V

    .line 745
    :goto_8
    return-void

    .line 743
    :cond_9
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iget-boolean v1, p0, Lyj;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setEditable(Z)V

    goto :goto_8
.end method

.method public b()V
    .registers 6

    .prologue
    .line 538
    sget-object v0, Lyj;->a:LdE;

    const-string v1, "kixEditor"

    const-string v2, "kixUndo"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 540
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 542
    :try_start_10
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 543
    iget-object v0, p0, Lyj;->a:LvU;

    invoke-interface {v0}, LvU;->d()V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_20

    .line 545
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    .line 547
    return-void

    .line 545
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public b(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lyj;->a:Lzr;

    invoke-interface {v0, p2}, Lzr;->a(I)I

    move-result v0

    .line 365
    iget-object v1, p0, Lyj;->a:Lzr;

    invoke-interface {v1, p1}, Lzr;->a(I)I

    move-result v1

    .line 366
    iget-object v2, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v2

    .line 367
    iget-object v3, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v3}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v3

    .line 368
    if-ne v0, v2, :cond_1c

    if-eq v1, v3, :cond_62

    .line 369
    :cond_1c
    const-string v4, "RedrawManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Model updated selection. Start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " End: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Old start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Old end: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_52
    invoke-direct {p0}, Lyj;->o()V

    .line 373
    iget-object v2, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setSelection(II)V

    .line 374
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->h()V
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_63

    .line 376
    invoke-direct {p0}, Lyj;->n()V

    .line 379
    :cond_62
    return-void

    .line 376
    :catchall_63
    move-exception v0

    invoke-direct {p0}, Lyj;->n()V

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 697
    if-nez p1, :cond_3

    .line 708
    :goto_2
    return-void

    .line 700
    :cond_3
    const-string v0, "RedrawManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplyBackgroundColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 703
    :try_start_20
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 704
    iget-object v0, p0, Lyj;->a:LvU;

    invoke-interface {v0, p1}, LvU;->b(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_30

    .line 706
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    goto :goto_2

    :catchall_30
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public b(Lyn;)V
    .registers 3
    .parameter

    .prologue
    .line 778
    iget-object v0, p0, Lyj;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 779
    return-void
.end method

.method public c()V
    .registers 6

    .prologue
    .line 551
    sget-object v0, Lyj;->a:LdE;

    const-string v1, "kixEditor"

    const-string v2, "kixRedo"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 553
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 555
    :try_start_10
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 556
    iget-object v0, p0, Lyj;->a:LvU;

    invoke-interface {v0}, LvU;->e()V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_20

    .line 558
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    .line 560
    return-void

    .line 558
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 712
    if-nez p1, :cond_3

    .line 723
    :goto_2
    return-void

    .line 715
    :cond_3
    const-string v0, "RedrawManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplyForegroundColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 718
    :try_start_20
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 719
    iget-object v0, p0, Lyj;->a:LvU;

    invoke-interface {v0, p1}, LvU;->c(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_30

    .line 721
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    goto :goto_2

    :catchall_30
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public d()V
    .registers 6

    .prologue
    .line 611
    sget-object v0, Lyj;->a:LdE;

    const-string v1, "kixEditor"

    const-string v2, "kixBold"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 613
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 615
    :try_start_10
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 616
    iget-object v0, p0, Lyj;->a:LvU;

    invoke-interface {v0}, LvU;->f()V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_23

    .line 618
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    .line 620
    invoke-direct {p0}, Lyj;->q()V

    .line 621
    return-void

    .line 618
    :catchall_23
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public e()V
    .registers 6

    .prologue
    .line 625
    sget-object v0, Lyj;->a:LdE;

    const-string v1, "kixEditor"

    const-string v2, "kixItalic"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 627
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 629
    :try_start_10
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 630
    iget-object v0, p0, Lyj;->a:LvU;

    invoke-interface {v0}, LvU;->g()V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_23

    .line 632
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    .line 634
    invoke-direct {p0}, Lyj;->q()V

    .line 635
    return-void

    .line 632
    :catchall_23
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public f()V
    .registers 6

    .prologue
    .line 639
    sget-object v0, Lyj;->a:LdE;

    const-string v1, "kixEditor"

    const-string v2, "kixUnderline"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 641
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 643
    :try_start_10
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 644
    iget-object v0, p0, Lyj;->a:LvU;

    invoke-interface {v0}, LvU;->h()V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_23

    .line 646
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    .line 648
    invoke-direct {p0}, Lyj;->q()V

    .line 649
    return-void

    .line 646
    :catchall_23
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public g()V
    .registers 3

    .prologue
    .line 653
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 655
    :try_start_5
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 656
    iget-object v0, p0, Lyj;->a:LvU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LvU;->a(Z)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    .line 658
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    .line 660
    return-void

    .line 658
    :catchall_16
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public h()V
    .registers 3

    .prologue
    .line 664
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 666
    :try_start_5
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 667
    iget-object v0, p0, Lyj;->a:LvU;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LvU;->a(Z)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    .line 669
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    .line 671
    return-void

    .line 669
    :catchall_16
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public i()V
    .registers 3

    .prologue
    .line 675
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 677
    :try_start_5
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 678
    iget-object v0, p0, Lyj;->a:LvU;

    invoke-interface {v0}, LvU;->i()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    .line 680
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    .line 682
    return-void

    .line 680
    :catchall_15
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public j()V
    .registers 3

    .prologue
    .line 686
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->b()V

    .line 688
    :try_start_5
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()V

    .line 689
    iget-object v0, p0, Lyj;->a:LvU;

    invoke-interface {v0}, LvU;->j()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    .line 691
    iget-object v0, p0, Lyj;->a:Lvo;

    invoke-interface {v0}, Lvo;->c()V

    .line 693
    return-void

    .line 691
    :catchall_15
    move-exception v0

    iget-object v1, p0, Lyj;->a:Lvo;

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public k()V
    .registers 3

    .prologue
    .line 762
    iget-object v0, p0, Lyj;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iget-boolean v1, p0, Lyj;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setEditable(Z)V

    .line 763
    return-void
.end method

.method public l()V
    .registers 2

    .prologue
    .line 789
    iget-object v0, p0, Lyj;->a:LBQ;

    invoke-virtual {v0}, LBQ;->c()V

    .line 790
    return-void
.end method
