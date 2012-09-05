.class Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "postLayoutAnimateToMM"
.end annotation


# instance fields
.field private mAnimInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuManager$animInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .registers 3
    .parameter

    .prologue
    .line 2297
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->mAnimInfos:Ljava/util/ArrayList;

    .line 2298
    return-void
.end method


# virtual methods
.method public add(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)V
    .registers 7
    .parameter "aView"
    .parameter "aSrc"
    .parameter "aLstnr"

    .prologue
    .line 2301
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    .line 2302
    .local v0, info:Lcom/sec/android/app/twlauncher/MenuManager$animInfo;
    iput-object p1, v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->mView:Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 2303
    iput-object p2, v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->mSrc:Landroid/graphics/PointF;

    .line 2304
    iput-object p3, v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    .line 2305
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->mAnimInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2306
    return-void
.end method

.method public post(Landroid/view/View;)V
    .registers 3
    .parameter "aView"

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->mAnimInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 2319
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2321
    :cond_b
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    .line 2310
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->mAnimInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 2311
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->mAnimInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;

    .line 2312
    .local v0, info:Lcom/sec/android/app/twlauncher/MenuManager$animInfo;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->mView:Lcom/sec/android/app/twlauncher/MenuItemView;

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->mSrc:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->animateToMM(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)Z

    goto :goto_0

    .line 2315
    .end local v0           #info:Lcom/sec/android/app/twlauncher/MenuManager$animInfo;
    :cond_1d
    return-void
.end method
