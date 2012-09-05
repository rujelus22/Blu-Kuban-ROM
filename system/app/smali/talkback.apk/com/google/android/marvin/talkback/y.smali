.class final Lcom/google/android/marvin/talkback/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/n;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/n;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/y;->a:Lcom/google/android/marvin/talkback/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 11

    if-eqz p3, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/marvin/talkback/y;->a:Lcom/google/android/marvin/talkback/n;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/n;->b(Lcom/google/android/marvin/talkback/n;)F

    move-result v2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/y;->a:Lcom/google/android/marvin/talkback/n;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/n;->b(Lcom/google/android/marvin/talkback/n;)F

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_2
.end method
