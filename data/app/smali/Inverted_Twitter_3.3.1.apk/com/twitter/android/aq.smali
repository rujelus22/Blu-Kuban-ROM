.class final Lcom/twitter/android/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/client/b;

.field final synthetic b:Lcom/twitter/android/api/ac;

.field final synthetic c:Lcom/twitter/android/ap;


# direct methods
.method constructor <init>(Lcom/twitter/android/ap;Lcom/twitter/android/client/b;Lcom/twitter/android/api/ac;)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/ap;

    iput-object p2, p0, Lcom/twitter/android/aq;->a:Lcom/twitter/android/client/b;

    iput-object p3, p0, Lcom/twitter/android/aq;->b:Lcom/twitter/android/api/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/ap;

    iget-object v0, v0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v1, p0, Lcom/twitter/android/aq;->a:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/aq;->b:Lcom/twitter/android/api/ac;

    iget-object v2, v2, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/aq;->b:Lcom/twitter/android/api/ac;

    iget-wide v3, v3, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/EditProfileActivity;->b(Ljava/lang/String;)V

    return-void
.end method
