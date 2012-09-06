.class final Lcom/twitter/android/service/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/service/AuthTokenService;

.field private final b:Lcom/twitter/android/service/c;

.field private final c:Lcom/twitter/android/network/j;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:J


# direct methods
.method public constructor <init>(Lcom/twitter/android/service/AuthTokenService;Lcom/twitter/android/service/c;ILcom/twitter/android/network/j;Ljava/lang/String;J)V
    .registers 8

    iput-object p1, p0, Lcom/twitter/android/service/d;->a:Lcom/twitter/android/service/AuthTokenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/service/d;->b:Lcom/twitter/android/service/c;

    iput p3, p0, Lcom/twitter/android/service/d;->d:I

    iput-object p4, p0, Lcom/twitter/android/service/d;->c:Lcom/twitter/android/network/j;

    iput-object p5, p0, Lcom/twitter/android/service/d;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcom/twitter/android/service/d;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/service/d;->b:Lcom/twitter/android/service/c;

    iget v1, p0, Lcom/twitter/android/service/d;->d:I

    iget-object v2, p0, Lcom/twitter/android/service/d;->c:Lcom/twitter/android/network/j;

    iget-object v3, p0, Lcom/twitter/android/service/d;->e:Ljava/lang/String;

    iget-wide v4, p0, Lcom/twitter/android/service/d;->f:J

    invoke-interface/range {v0 .. v5}, Lcom/twitter/android/service/c;->a(ILcom/twitter/android/network/j;Ljava/lang/String;J)V

    return-void
.end method
