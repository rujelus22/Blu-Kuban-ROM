.class Lcom/google/googlenav/ui/wizard/fG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/C;


# instance fields
.field private final a:Lcom/google/googlenav/ah;

.field private final b:Lcom/google/googlenav/ui/view/android/Z;

.field private final c:LaS/e;

.field private final d:Lcom/google/googlenav/L;

.field private final e:Lcom/google/googlenav/aw;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;LaS/e;Lcom/google/googlenav/L;Lcom/google/googlenav/aw;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fG;->a:Lcom/google/googlenav/ah;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fG;->b:Lcom/google/googlenav/ui/view/android/Z;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fG;->c:LaS/e;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/fG;->d:Lcom/google/googlenav/L;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/fG;->e:Lcom/google/googlenav/aw;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/view/android/Z;Lcom/google/googlenav/L;Lcom/google/googlenav/aw;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fG;->a:Lcom/google/googlenav/ah;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fG;->b:Lcom/google/googlenav/ui/view/android/Z;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fG;->c:LaS/e;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/fG;->d:Lcom/google/googlenav/L;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/fG;->e:Lcom/google/googlenav/aw;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fG;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fG;->e:Lcom/google/googlenav/aw;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/av;->b(Lcom/google/googlenav/aw;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fG;->b:Lcom/google/googlenav/ui/view/android/Z;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fG;->b:Lcom/google/googlenav/ui/view/android/Z;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/Z;->onContentChanged()V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fG;->c:LaS/e;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fG;->c:LaS/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fG;->e:Lcom/google/googlenav/aw;

    invoke-virtual {v0, v1}, LaS/e;->a(Lcom/google/googlenav/aw;)V

    goto :goto_16

    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fG;->d:Lcom/google/googlenav/L;

    const/16 v1, 0x344

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    goto :goto_16
.end method
