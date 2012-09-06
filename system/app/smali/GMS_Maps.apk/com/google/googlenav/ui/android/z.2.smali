.class public Lcom/google/googlenav/ui/android/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/googlenav/ui/android/Y;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const v1, 0x7fffffff

    .line 342
    sget-object v0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/Y;

    invoke-direct {p0, v1, v1, v0}, Lcom/google/googlenav/ui/android/Z;-><init>(IILcom/google/googlenav/ui/android/Y;)V

    .line 343
    return-void
.end method

.method public constructor <init>(IILcom/google/googlenav/ui/android/Y;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput p1, p0, Lcom/google/googlenav/ui/android/Z;->a:I

    .line 365
    iput p2, p0, Lcom/google/googlenav/ui/android/Z;->b:I

    .line 366
    iput-object p3, p0, Lcom/google/googlenav/ui/android/Z;->c:Lcom/google/googlenav/ui/android/Y;

    .line 367
    return-void
.end method

.method public constructor <init>(Landroid/util/AttributeSet;)V
    .registers 7
    .parameter

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    const-string v0, "maxLinesPortraitMode"

    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/Z;->a:I

    .line 348
    const-string v0, "maxLinesPortraitMode"

    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/Z;->b:I

    .line 350
    const-string v0, "lastElementStyle"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v1}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 352
    sget-object v0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/Y;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/Z;->c:Lcom/google/googlenav/ui/android/Y;

    .line 360
    :goto_27
    return-void

    .line 355
    :cond_28
    :try_start_28
    invoke-static {v1}, Lcom/google/googlenav/ui/android/Y;->valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/android/Y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/Z;->c:Lcom/google/googlenav/ui/android/Y;
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2e} :catch_2f

    goto :goto_27

    .line 356
    :catch_2f
    move-exception v0

    .line 357
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
