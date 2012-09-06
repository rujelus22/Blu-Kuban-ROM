.class final Lcom/google/android/apps/plus/util/TextPaintUtils$1;
.super Landroid/database/ContentObserver;
.source "TextPaintUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/util/TextPaintUtils;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/res/Resources;)V
    .registers 3
    .parameter "x0"
    .parameter

    .prologue
    .line 45
    iput-object p2, p0, Lcom/google/android/apps/plus/util/TextPaintUtils$1;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .parameter "selfChange"

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, i:I
    invoke-static {}, Lcom/google/android/apps/plus/util/TextPaintUtils;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_9
    if-ge v0, v2, :cond_2d

    .line 49
    invoke-static {}, Lcom/google/android/apps/plus/util/TextPaintUtils;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 50
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/text/TextPaint;Ljava/lang/Integer;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/google/android/apps/plus/util/TextPaintUtils$1;->val$res:Landroid/content/res/Resources;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 52
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/text/TextPaint;Ljava/lang/Integer;>;"
    :cond_2d
    return-void
.end method
