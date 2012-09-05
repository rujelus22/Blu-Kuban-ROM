.class public Lcom/google/googlenav/ui/android/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aM;


# static fields
.field private static c:Lcom/google/googlenav/ui/android/an;


# instance fields
.field private a:Landroid/widget/Toast;

.field private b:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/ui/android/d;->c:Lcom/google/googlenav/ui/android/an;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/d;->a:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/d;->a:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/android/d;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/d;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/C;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/d;->b:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/d;->d:Ljava/lang/String;

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/android/d;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/ui/android/d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080096

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/d;->a:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/d;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/d;->d:Ljava/lang/String;

    goto :goto_7
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object v1, p0, Lcom/google/googlenav/ui/android/d;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/ui/android/d;->d:Ljava/lang/String;

    :goto_b
    return-void

    :cond_c
    iput-object p1, p0, Lcom/google/googlenav/ui/android/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/d;->a(Lcom/google/googlenav/ui/C;)V

    goto :goto_b
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/android/d;->d:Ljava/lang/String;

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object v1, p0, Lcom/google/googlenav/ui/android/d;->b:Ljava/lang/String;

    :goto_b
    return-void

    :cond_c
    iput-object p1, p0, Lcom/google/googlenav/ui/android/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/d;->a(Lcom/google/googlenav/ui/C;)V

    goto :goto_b
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
