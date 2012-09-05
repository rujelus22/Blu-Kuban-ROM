.class public Lcom/google/googlenav/ui/view/android/aA;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/google/googlenav/ui/view/android/aA;


# instance fields
.field private final a:Lcom/google/googlenav/android/BaseMapsActivity;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aA;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/view/android/aA;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/view/android/aA;->b:Lcom/google/googlenav/ui/view/android/aA;

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/android/BaseMapsActivity;)V
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/aA;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aA;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/aA;->b:Lcom/google/googlenav/ui/view/android/aA;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/wizard/hM;)Lcom/google/googlenav/ui/wizard/bO;
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v1, 0x154

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2a
    new-instance v1, Lcom/google/googlenav/ui/wizard/bO;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/wizard/bO;-><init>(Lcom/google/googlenav/ui/wizard/hM;I)V

    return-object v1
.end method

.method public b(Lcom/google/googlenav/ui/wizard/hM;)Lcom/google/googlenav/ui/wizard/dY;
    .registers 5

    new-instance v0, Lcom/google/googlenav/ui/wizard/dY;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/L;->l()LaR/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aA;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/googlenav/ui/wizard/dY;-><init>(Lcom/google/googlenav/ui/wizard/hM;LaR/i;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public c(Lcom/google/googlenav/ui/wizard/hM;)Lcom/google/googlenav/ui/wizard/eo;
    .registers 5

    new-instance v0, Lcom/google/googlenav/ui/wizard/eo;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aA;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/googlenav/ui/wizard/eo;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public d(Lcom/google/googlenav/ui/wizard/hM;)Lcom/google/googlenav/ui/wizard/hG;
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aA;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/hG;-><init>(Lcom/google/googlenav/ui/wizard/hM;Landroid/content/Context;)V

    return-object v0
.end method
