.class public Lcom/google/googlenav/ui/android/L;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/googlenav/ui/android/K;


# direct methods
.method public constructor <init>()V
    .registers 3

    const v1, 0x7fffffff

    sget-object v0, Lcom/google/googlenav/ui/android/K;->a:Lcom/google/googlenav/ui/android/K;

    invoke-direct {p0, v1, v1, v0}, Lcom/google/googlenav/ui/android/L;-><init>(IILcom/google/googlenav/ui/android/K;)V

    return-void
.end method

.method public constructor <init>(IILcom/google/googlenav/ui/android/K;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/ui/android/L;->a:I

    iput p2, p0, Lcom/google/googlenav/ui/android/L;->b:I

    iput-object p3, p0, Lcom/google/googlenav/ui/android/L;->c:Lcom/google/googlenav/ui/android/K;

    return-void
.end method

.method public constructor <init>(Landroid/util/AttributeSet;)V
    .registers 7

    const v2, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "maxLinesPortraitMode"

    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/L;->a:I

    const-string v0, "maxLinesPortraitMode"

    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/L;->b:I

    const-string v0, "lastElementStyle"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/google/googlenav/ui/android/K;->a:Lcom/google/googlenav/ui/android/K;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/L;->c:Lcom/google/googlenav/ui/android/K;

    :goto_27
    return-void

    :cond_28
    :try_start_28
    invoke-static {v1}, Lcom/google/googlenav/ui/android/K;->valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/android/K;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/L;->c:Lcom/google/googlenav/ui/android/K;
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2e} :catch_2f

    goto :goto_27

    :catch_2f
    move-exception v0

    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value not valid for lastElementStyle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
