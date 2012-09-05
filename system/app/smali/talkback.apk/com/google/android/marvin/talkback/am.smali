.class final Lcom/google/android/marvin/talkback/am;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/marvin/talkback/am;->a:I

    iput-object p2, p0, Lcom/google/android/marvin/talkback/am;->b:Ljava/lang/Runnable;

    return-void
.end method
