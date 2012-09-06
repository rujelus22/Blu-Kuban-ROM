.class public final Lcom/google/ads/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/an;


# static fields
.field private static final a:Lcom/google/ads/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/ads/a/e;->a:Lcom/google/ads/util/m;

    invoke-interface {v0}, Lcom/google/ads/util/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/e;

    sput-object v0, Lcom/google/ads/az;->a:Lcom/google/ads/a/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I
    .registers 7

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    :try_start_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_11} :catch_14

    move-result v0

    float-to-int p2, v0

    :cond_13
    :goto_13
    return p2

    :catch_14
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" in a video gmsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_13
.end method


# virtual methods
.method public final a(Lcom/google/ads/a/q;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 13

    const/4 v7, -0x1

    const/4 v4, 0x0

    const-string v0, "action"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, "No \"action\" parameter in a video gmsg."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    instance-of v1, p3, Lcom/google/ads/a/c;

    if-eqz v1, :cond_24

    check-cast p3, Lcom/google/ads/a/c;

    invoke-virtual {p3}, Lcom/google/ads/a/c;->b()Lcom/google/ads/AdActivity;

    move-result-object v1

    if-nez v1, :cond_2a

    const-string v0, "Could not get adActivity for a video gmsg."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_11

    :cond_24
    const-string v0, "Could not get adWebView for a video gmsg."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_11

    :cond_2a
    const-string v2, "new"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "position"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v2, :cond_3a

    if-eqz v3, :cond_66

    :cond_3a
    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v3, "x"

    invoke-static {p2, v3, v4, v0}, Lcom/google/ads/az;->a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I

    move-result v3

    const-string v5, "y"

    invoke-static {p2, v5, v4, v0}, Lcom/google/ads/az;->a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I

    move-result v4

    const-string v5, "w"

    invoke-static {p2, v5, v7, v0}, Lcom/google/ads/az;->a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I

    move-result v5

    const-string v6, "h"

    invoke-static {p2, v6, v7, v0}, Lcom/google/ads/az;->a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I

    move-result v0

    if-eqz v2, :cond_62

    invoke-virtual {v1}, Lcom/google/ads/AdActivity;->a()Lcom/google/ads/a/a;

    move-result-object v2

    if-nez v2, :cond_62

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/google/ads/AdActivity;->b(IIII)V

    goto :goto_11

    :cond_62
    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/google/ads/AdActivity;->a(IIII)V

    goto :goto_11

    :cond_66
    invoke-virtual {v1}, Lcom/google/ads/AdActivity;->a()Lcom/google/ads/a/a;

    move-result-object v8

    if-nez v8, :cond_76

    sget-object v0, Lcom/google/ads/az;->a:Lcom/google/ads/a/e;

    const-string v0, "onVideoEvent"

    const-string v1, "{\'event\': \'error\', \'what\': \'no_video_view\'}"

    invoke-static {p3, v0, v1}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_76
    const-string v2, "click"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "x"

    invoke-static {p2, v1, v4, v0}, Lcom/google/ads/az;->a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I

    move-result v2

    const-string v1, "y"

    invoke-static {p2, v1, v4, v0}, Lcom/google/ads/az;->a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-float v5, v2

    int-to-float v6, v3

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/ads/a/a;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_11

    :cond_9f
    const-string v1, "controls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb

    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_b8

    const-string v0, "No \"enabled\" parameter in a controls video gmsg."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_b8
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/google/ads/a/a;->a(Z)V

    goto/16 :goto_11

    :cond_c6
    invoke-virtual {v8, v4}, Lcom/google/ads/a/a;->a(Z)V

    goto/16 :goto_11

    :cond_cb
    const-string v1, "currentTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    const-string v0, "time"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_e4

    const-string v0, "No \"time\" parameter in a currentTime video gmsg."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_e4
    :try_start_e4
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v8, v1}, Lcom/google/ads/a/a;->a(I)V
    :try_end_ef
    .catch Ljava/lang/NumberFormatException; {:try_start_e4 .. :try_end_ef} :catch_f1

    goto/16 :goto_11

    :catch_f1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse \"time\" parameter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_106
    const-string v1, "hide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114

    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/google/ads/a/a;->setVisibility(I)V

    goto/16 :goto_11

    :cond_114
    const-string v1, "load"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-virtual {v8}, Lcom/google/ads/a/a;->a()V

    goto/16 :goto_11

    :cond_121
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    invoke-virtual {v8}, Lcom/google/ads/a/a;->b()V

    goto/16 :goto_11

    :cond_12e
    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    invoke-virtual {v8}, Lcom/google/ads/a/a;->c()V

    goto/16 :goto_11

    :cond_13b
    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_148

    invoke-virtual {v8, v4}, Lcom/google/ads/a/a;->setVisibility(I)V

    goto/16 :goto_11

    :cond_148
    const-string v1, "src"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    const-string v0, "src"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/google/ads/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_15d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown video action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto/16 :goto_11
.end method
