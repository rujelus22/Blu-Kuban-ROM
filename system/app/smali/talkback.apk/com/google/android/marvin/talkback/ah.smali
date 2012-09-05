.class final Lcom/google/android/marvin/talkback/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/utils/o;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/l;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/ah;->a:Lcom/google/android/marvin/talkback/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ah;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/l;->e(Lcom/google/android/marvin/talkback/l;)Lcom/google/android/marvin/utils/e;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ah;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/l;->f(Lcom/google/android/marvin/talkback/l;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ah;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/l;->e(Lcom/google/android/marvin/talkback/l;)Lcom/google/android/marvin/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/e;->c()Z

    :cond_1b
    return-void
.end method
