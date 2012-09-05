.class Lcom/sec/android/app/ve/view/timeline/paint/DurationView$2;
.super Ljava/lang/Object;
.source "DurationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private hideBars(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    .line 67
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_e

    .line 76
    return-void

    .line 68
    :cond_e
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, childView:Landroid/view/View;
    if-eq v0, p1, :cond_2c

    .line 70
    const v2, 0x7f0b0031

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v2, 0x7f0b0035

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b0035

    const v7, 0x7f0b0031

    const/16 v6, 0x8

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick of drawing duration :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 82
    .local v0, time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 83
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_42

    .line 84
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$2;->hideBars(Landroid/view/View;)V

    .line 85
    check-cast p1, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->onDoubleTap()V

    .line 119
    .end local v0           #time:J
    :cond_41
    :goto_41
    return-void

    .line 90
    .restart local p1
    :cond_42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, p1

    .line 92
    check-cast v2, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getMyWidth()I

    move-result v2

    const/16 v3, 0xc7

    if-lt v2, v3, :cond_41

    .line 96
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$2;->hideBars(Landroid/view/View;)V

    .line 98
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_7e

    .line 99
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :goto_6c
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_86

    .line 104
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_41

    .line 101
    :cond_7e
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6c

    .line 106
    :cond_86
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_41
.end method
