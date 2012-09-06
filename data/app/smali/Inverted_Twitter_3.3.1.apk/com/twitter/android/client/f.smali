.class final Lcom/twitter/android/client/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/client/b;


# direct methods
.method public constructor <init>(Lcom/twitter/android/client/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/client/f;->a:Lcom/twitter/android/client/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/client/f;->a:Lcom/twitter/android/client/b;

    invoke-static {v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/b;)V

    return-void
.end method
