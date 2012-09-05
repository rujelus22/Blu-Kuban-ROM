.class final Lcom/google/android/marvin/talkback/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/utils/h;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/ak;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/ak;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/f;->a:Lcom/google/android/marvin/talkback/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/google/android/marvin/talkback/f;->a:Lcom/google/android/marvin/talkback/ak;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/ak;->a(Lcom/google/android/marvin/talkback/ak;)Lcom/google/android/marvin/talkback/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/l;->b()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/f;->a:Lcom/google/android/marvin/talkback/ak;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/ak;->b(Lcom/google/android/marvin/talkback/ak;)Lcom/google/android/marvin/talkback/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/n;->a()V

    :cond_14
    return-void
.end method
