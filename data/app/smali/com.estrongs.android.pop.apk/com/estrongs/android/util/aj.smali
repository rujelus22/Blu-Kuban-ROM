.class public Lcom/estrongs/android/util/aj;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/estrongs/android/util/aj;->a:I

    iput v1, p0, Lcom/estrongs/android/util/aj;->b:I

    iput v1, p0, Lcom/estrongs/android/util/aj;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/aj;->d:Ljava/lang/String;

    iput v1, p0, Lcom/estrongs/android/util/aj;->e:I

    iput v1, p0, Lcom/estrongs/android/util/aj;->f:I

    return-void
.end method
