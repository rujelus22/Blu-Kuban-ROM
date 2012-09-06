.class final Lcom/google/android/youtube/app/ui/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/Analytics;

.field final synthetic b:Lcom/google/android/youtube/app/remote/ab;

.field final synthetic c:Lcom/google/android/youtube/app/ui/ce;

.field final synthetic d:Lcom/google/android/youtube/core/d;

.field final synthetic e:Lcom/google/android/youtube/app/ui/bt;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bt;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/remote/ab;Lcom/google/android/youtube/app/ui/ce;Lcom/google/android/youtube/core/d;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bu;->e:Lcom/google/android/youtube/app/ui/bt;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/bu;->a:Lcom/google/android/youtube/core/Analytics;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/bu;->b:Lcom/google/android/youtube/app/remote/ab;

    iput-object p4, p0, Lcom/google/android/youtube/app/ui/bu;->c:Lcom/google/android/youtube/app/ui/ce;

    iput-object p5, p0, Lcom/google/android/youtube/app/ui/bu;->d:Lcom/google/android/youtube/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bu;->a:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemoteError"

    const-string v2, "INVALID_PAIRING_CODE"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bu;->d:Lcom/google/android/youtube/core/d;

    const v1, 0x7f0b0221

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/d;->a(I)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 106
    check-cast p2, Lcom/google/android/youtube/app/remote/bb;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bu;->a:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemoteControlPaired"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bu;->b:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/bb;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bu;->c:Lcom/google/android/youtube/app/ui/ce;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/ce;->a()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bu;->e:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bt;->a(Lcom/google/android/youtube/app/ui/bt;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bu;->e:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bt;->b(Lcom/google/android/youtube/app/ui/bt;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bu;->e:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/ui/bt;->a(Lcom/google/android/youtube/app/ui/bt;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
