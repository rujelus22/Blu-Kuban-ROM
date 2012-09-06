.class public Lcom/estrongs/android/util/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/util/i;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/estrongs/android/util/i;->a:Z

    iput-object p3, p0, Lcom/estrongs/android/util/i;->c:Ljava/lang/String;

    return-void
.end method
