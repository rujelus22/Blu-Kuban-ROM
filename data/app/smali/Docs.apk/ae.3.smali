.class Lae;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:LZ;

.field final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(LZ;[Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZ;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lae;->a:LZ;

    .line 494
    iput-object p2, p0, Lae;->a:[Ljava/lang/Object;

    .line 495
    return-void
.end method
