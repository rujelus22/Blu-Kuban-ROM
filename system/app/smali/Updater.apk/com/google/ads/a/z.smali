.class public final Lcom/google/ads/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;


# instance fields
.field private final a:Landroid/gesture/GestureStore;

.field private b:Landroid/app/Activity;

.field private c:Lcom/google/ads/a/q;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/a/q;Landroid/gesture/GestureStore;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/z;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/ads/a/z;->c:Lcom/google/ads/a/q;

    iput-object p3, p0, Lcom/google/ads/a/z;->a:Landroid/gesture/GestureStore;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/a/z;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/a/z;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/ads/a/z;->a:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p2}, Landroid/gesture/GestureStore;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Gesture: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/gesture/Prediction;->score:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "Gesture: No remotely reasonable predictions"

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-wide v2, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v4, 0x4000

    cmpl-double v0, v2, v4

    if-lez v0, :cond_43

    const-string v2, "debug"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-object v0, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/ads/a/z;->c:Lcom/google/ads/a/q;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/ads/a/z;->c:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9f

    const-string v0, "[No diagnostics available]"

    :goto_70
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/ads/a/z;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ad Information"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Share"

    new-instance v3, Lcom/google/ads/a/ab;

    invoke-direct {v3, p0, v0}, Lcom/google/ads/a/ab;-><init>(Lcom/google/ads/a/z;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Close"

    new-instance v2, Lcom/google/ads/a/aa;

    invoke-direct {v2, p0}, Lcom/google/ads/a/aa;-><init>(Lcom/google/ads/a/z;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_43

    :cond_9f
    iget-object v0, p0, Lcom/google/ads/a/z;->c:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_70
.end method
