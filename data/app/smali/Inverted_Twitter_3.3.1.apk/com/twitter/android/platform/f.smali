.class public final Lcom/twitter/android/platform/f;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/twitter/android/api/aa;Lcom/twitter/android/api/ac;)V
    .registers 5

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/twitter/android/api/aa;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/platform/f;->c:Ljava/lang/String;

    iget-wide v0, p1, Lcom/twitter/android/api/aa;->a:J

    iput-wide v0, p0, Lcom/twitter/android/platform/f;->d:J

    :cond_a
    if-eqz p2, :cond_14

    iget-wide v0, p2, Lcom/twitter/android/api/ac;->a:J

    iput-wide v0, p0, Lcom/twitter/android/platform/f;->e:J

    iget-object v0, p2, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/platform/f;->f:Ljava/lang/String;

    :cond_14
    return-void
.end method
