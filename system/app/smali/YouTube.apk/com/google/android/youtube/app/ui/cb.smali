.class final Lcom/google/android/youtube/app/ui/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/youtube/app/ui/bt;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bt;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cb;->c:Lcom/google/android/youtube/app/ui/bt;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/cb;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/cb;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cb;->c:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bt;->i(Lcom/google/android/youtube/app/ui/bt;)Lcom/google/android/youtube/app/remote/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cb;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/ytremote/model/PairingCode;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cb;->b:Ljava/lang/String;

    const-string v4, "\\D"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/ytremote/model/PairingCode;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cb;->c:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/bt;->h(Lcom/google/android/youtube/app/ui/bt;)Lcom/google/android/youtube/core/async/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/app/remote/bd;->a(Ljava/lang/String;Lcom/google/android/ytremote/model/PairingCode;Lcom/google/android/youtube/core/async/l;)V

    .line 245
    return-void
.end method
