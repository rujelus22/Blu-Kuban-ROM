.class final Lcom/google/android/marvin/talkback/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/l;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/z;->a:Lcom/google/android/marvin/talkback/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/z;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/l;->a(Lcom/google/android/marvin/talkback/l;)V

    return-void
.end method
