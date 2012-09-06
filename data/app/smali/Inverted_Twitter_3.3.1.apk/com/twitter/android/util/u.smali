.class public final Lcom/twitter/android/util/u;
.super Lcom/twitter/android/util/o;


# instance fields
.field public final d:J

.field public e:I


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/twitter/android/util/o;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-wide p1, p0, Lcom/twitter/android/util/u;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/util/u;->e:I

    return-void
.end method
