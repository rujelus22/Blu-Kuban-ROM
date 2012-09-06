.class final Lcom/twitter/android/ar;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Landroid/os/Bundle;

.field final c:Ljava/lang/String;

.field d:Z

.field private e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/ar;->b:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/twitter/android/ar;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/twitter/android/ar;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/ar;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twitter/android/ar;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2c

    :cond_c
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/twitter/android/ar;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ar;->b:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :cond_24
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/twitter/android/ar;->e:Ljava/lang/ref/WeakReference;

    :goto_2b
    return-object v0

    :cond_2c
    iget-object v0, p0, Lcom/twitter/android/ar;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_2b
.end method
