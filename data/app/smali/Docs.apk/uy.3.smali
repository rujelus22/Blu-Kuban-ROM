.class public Luy;
.super Ljava/lang/Object;
.source "DiscussionFragmentManager.java"

# interfaces
.implements LuI;


# instance fields
.field private a:I

.field private final a:Landroid/app/Activity;

.field private final a:Landroid/os/Handler;

.field private final a:Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;

.field private a:Ljava/lang/String;

.field private a:Lmw;

.field private final a:LuE;

.field private final a:LuF;

.field private final a:Lx;

.field private final a:Ly;

.field private a:LzF;

.field private a:Z

.field private b:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(LuE;Landroid/app/Activity;Lx;LuF;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Luy;->a:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Luy;->b:Z

    .line 113
    new-instance v0, Luz;

    invoke-direct {v0, p0}, Luz;-><init>(Luy;)V

    iput-object v0, p0, Luy;->a:Ly;

    .line 165
    iput-object p1, p0, Luy;->a:LuE;

    .line 166
    iput-object p2, p0, Luy;->a:Landroid/app/Activity;

    .line 167
    iput-object p3, p0, Luy;->a:Lx;

    .line 168
    iput-object p4, p0, Luy;->a:LuF;

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Luy;->a:Landroid/os/Handler;

    .line 171
    new-instance v0, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;-><init>()V

    iput-object v0, p0, Luy;->a:Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;

    .line 173
    invoke-interface {p4, p0}, LuF;->a(Luy;)V

    .line 176
    iget-object v0, p0, Luy;->a:Ly;

    invoke-virtual {p3, v0}, Lx;->a(Ly;)V

    .line 177
    return-void
.end method

.method private a()I
    .registers 2

    .prologue
    .line 321
    invoke-direct {p0}, Luy;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 322
    sget v0, Lup;->discussion_holder_phone:I

    .line 327
    :goto_8
    return v0

    .line 324
    :cond_9
    invoke-direct {p0}, Luy;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 325
    sget v0, Lup;->discussion_holder_tablet_landscape:I

    goto :goto_8

    .line 327
    :cond_12
    sget v0, Lup;->discussion_holder_tablet_portrait:I

    goto :goto_8
.end method

.method static synthetic a(Luy;)I
    .registers 2
    .parameter

    .prologue
    .line 32
    iget v0, p0, Luy;->a:I

    return v0
.end method

.method static synthetic a(Luy;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Luy;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a()Landroid/graphics/Point;
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 336
    iget-object v0, p0, Luy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 337
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 339
    :try_start_10
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 340
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 341
    iget v1, v2, Landroid/graphics/Point;->x:I
    :try_end_17
    .catch Ljava/lang/NoSuchMethodError; {:try_start_10 .. :try_end_17} :catch_35

    .line 349
    :goto_17
    invoke-direct {p0}, Luy;->a()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 350
    invoke-direct {p0}, Luy;->b()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 352
    iget-object v1, p0, Luy;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lun;->discussion_holder_right_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 360
    :cond_2f
    :goto_2f
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    .line 342
    :catch_35
    move-exception v0

    move v0, v1

    .line 345
    goto :goto_17

    .line 356
    :cond_38
    iget-object v0, p0, Luy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lun;->discussion_holder_bottom_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2f
.end method

.method static synthetic a(Luy;)Landroid/graphics/Point;
    .registers 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Luy;->a()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Luy;)Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Luy;->a:Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;

    return-object v0
.end method

.method static synthetic a(Luy;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Luy;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Luy;)Lmw;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Luy;->a:Lmw;

    return-object v0
.end method

.method static synthetic a(Luy;)LuE;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Luy;->a:LuE;

    return-object v0
.end method

.method static synthetic a(Luy;)LuF;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Luy;->a:LuF;

    return-object v0
.end method

.method static synthetic a(Luy;)Lx;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Luy;->a:Lx;

    return-object v0
.end method

.method static synthetic a(Luy;)LzF;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Luy;->a:LzF;

    return-object v0
.end method

.method private a()Z
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Luy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lkg;->c(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Luy;)Z
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Luy;->b:Z

    return v0
.end method

.method static synthetic a(Luy;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Luy;->b:Z

    return p1
.end method

.method static synthetic b(Luy;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Luy;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()Z
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Luy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic b(Luy;)Z
    .registers 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Luy;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Luy;)Z
    .registers 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Luy;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 200
    iget-boolean v0, p0, Luy;->a:Z

    if-nez v0, :cond_4

    .line 204
    :cond_4
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter

    .prologue
    .line 285
    iget-boolean v0, p0, Luy;->a:Z

    if-nez v0, :cond_5

    .line 309
    :cond_4
    :goto_4
    return-void

    .line 288
    :cond_5
    invoke-direct {p0}, Luy;->a()I

    move-result v0

    .line 289
    iget v1, p0, Luy;->a:I

    if-eq v1, v0, :cond_4

    .line 291
    iget v1, p0, Luy;->a:I

    .line 292
    iget-object v2, p0, Luy;->a:Landroid/os/Handler;

    new-instance v3, LuD;

    invoke-direct {v3, p0, v1}, LuD;-><init>(Luy;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    iput v0, p0, Luy;->a:I

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;LzW;Lmw;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Luy;->a:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Luy;->b:Ljava/lang/String;

    .line 192
    iput-object p4, p0, Luy;->a:Lmw;

    .line 193
    new-instance v0, LzF;

    invoke-direct {v0, p3, p1}, LzF;-><init>(LzW;Ljava/lang/String;)V

    iput-object v0, p0, Luy;->a:LzF;

    .line 194
    invoke-direct {p0}, Luy;->a()I

    move-result v0

    iput v0, p0, Luy;->a:I

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Luy;->a:Z

    .line 196
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iget-boolean v0, p0, Luy;->a:Z

    if-nez v0, :cond_5

    .line 213
    :goto_4
    return-void

    .line 211
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Luy;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    iget-object v0, p0, Luy;->a:LuE;

    invoke-interface {v0}, LuE;->a()V

    goto :goto_4
.end method

.method public b()V
    .registers 3

    .prologue
    .line 217
    iget-boolean v0, p0, Luy;->a:Z

    if-nez v0, :cond_5

    .line 231
    :goto_4
    return-void

    .line 220
    :cond_5
    iget-object v0, p0, Luy;->a:Landroid/os/Handler;

    new-instance v1, LuB;

    invoke-direct {v1, p0}, LuB;-><init>(Luy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    iget-boolean v0, p0, Luy;->a:Z

    if-nez v0, :cond_5

    .line 275
    :goto_4
    return-void

    .line 272
    :cond_5
    const-string v0, "DiscussionFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDiscussion: anchorId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", commentId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Luy;->a:LuF;

    invoke-interface {v0, p1, p3}, LuF;->a(Ljava/lang/String;Z)Z

    goto :goto_4
.end method

.method public c()V
    .registers 3

    .prologue
    .line 239
    iget-boolean v0, p0, Luy;->a:Z

    if-nez v0, :cond_5

    .line 259
    :goto_4
    return-void

    .line 242
    :cond_5
    iget-object v0, p0, Luy;->a:Landroid/os/Handler;

    new-instance v1, LuC;

    invoke-direct {v1, p0}, LuC;-><init>(Luy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method
