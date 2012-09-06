.class public Lcom/estrongs/android/pop/d/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Process;

.field public b:Ljava/io/BufferedWriter;

.field public c:Ljava/io/BufferedReader;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/i;->a:Ljava/lang/Process;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/i;->b:Ljava/io/BufferedWriter;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/i;->c:Ljava/io/BufferedReader;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/d/i;->d:Z

    iput v1, p0, Lcom/estrongs/android/pop/d/i;->e:I

    return-void
.end method
