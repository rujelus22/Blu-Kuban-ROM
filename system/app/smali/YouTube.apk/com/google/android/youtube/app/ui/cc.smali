.class final Lcom/google/android/youtube/app/ui/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bt;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/bt;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cc;->a:Lcom/google/android/youtube/app/ui/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/cc;->b:Ljava/lang/String;

    .line 312
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/cc;->c:Ljava/lang/String;

    .line 313
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/bt;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/cc;-><init>(Lcom/google/android/youtube/app/ui/bt;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 305
    const-string v0, "Error loading existing screens"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 305
    check-cast p2, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cc;->b:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bb;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/bb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_1f
    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cc;->a:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bt;->j(Lcom/google/android/youtube/app/ui/bt;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    :goto_2c
    return-void

    :cond_2d
    const/4 v0, 0x0

    goto :goto_1f

    :cond_2f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cc;->a:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bt;->i(Lcom/google/android/youtube/app/ui/bt;)Lcom/google/android/youtube/app/remote/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cc;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/ytremote/model/PairingCode;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cc;->c:Ljava/lang/String;

    const-string v4, "\\D"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/ytremote/model/PairingCode;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cc;->a:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/bt;->h(Lcom/google/android/youtube/app/ui/bt;)Lcom/google/android/youtube/core/async/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/app/remote/bd;->a(Ljava/lang/String;Lcom/google/android/ytremote/model/PairingCode;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_2c
.end method
