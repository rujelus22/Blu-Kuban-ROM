.class final Lcom/twitter/android/service/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/service/AuthTokenService;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/twitter/android/service/c;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twitter/android/service/AuthTokenService;Lcom/twitter/android/service/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/twitter/android/service/b;->a:Lcom/twitter/android/service/AuthTokenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/service/b;->d:Lcom/twitter/android/service/c;

    iput-object p4, p0, Lcom/twitter/android/service/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/android/service/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/service/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/service/b;->a:Lcom/twitter/android/service/AuthTokenService;

    iget-object v1, p0, Lcom/twitter/android/service/b;->d:Lcom/twitter/android/service/c;

    iget-object v2, p0, Lcom/twitter/android/service/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/service/b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/service/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/service/AuthTokenService;->b(Lcom/twitter/android/service/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
