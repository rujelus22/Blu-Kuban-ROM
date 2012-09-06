.class final Lcom/android/athome/picker/b/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/a;

.field private b:Landroid/support/place/music/TgsState;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TgsState;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 933
    iput-object p1, p0, Lcom/android/athome/picker/b/y;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iput-object p2, p0, Lcom/android/athome/picker/b/y;->b:Landroid/support/place/music/TgsState;

    .line 935
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/athome/picker/b/y;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->w(Lcom/android/athome/picker/b/a;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 940
    iget-object v0, p0, Lcom/android/athome/picker/b/y;->a:Lcom/android/athome/picker/b/a;

    iget-object v1, p0, Lcom/android/athome/picker/b/y;->b:Landroid/support/place/music/TgsState;

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TgsState;)V

    .line 944
    :goto_f
    return-void

    .line 942
    :cond_10
    iget-object v0, p0, Lcom/android/athome/picker/b/y;->a:Lcom/android/athome/picker/b/a;

    iget-object v1, p0, Lcom/android/athome/picker/b/y;->b:Landroid/support/place/music/TgsState;

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->b(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TgsState;)V

    goto :goto_f
.end method
