.class final Lcom/twitter/android/cu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/cu;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/cu;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->c()V

    return-void
.end method
