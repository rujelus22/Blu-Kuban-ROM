.class final Lcom/google/android/marvin/talkback/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/l;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/l;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/marvin/talkback/af;->a:Lcom/google/android/marvin/talkback/l;

    iput p2, p0, Lcom/google/android/marvin/talkback/af;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/marvin/talkback/af;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/l;->f(Lcom/google/android/marvin/talkback/l;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/marvin/talkback/af;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method
