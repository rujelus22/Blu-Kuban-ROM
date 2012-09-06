.class final Lcom/dropbox/android/util/aK;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field a:Ljava/lang/Object;

.field b:Lcom/dropbox/android/util/aK;

.field private final c:J


# direct methods
.method public constructor <init>(J)V
    .registers 5
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-wide p1, p0, Lcom/dropbox/android/util/aK;->c:J

    .line 199
    iput-object p0, p0, Lcom/dropbox/android/util/aK;->b:Lcom/dropbox/android/util/aK;

    .line 200
    invoke-static {}, Lcom/dropbox/android/util/aJ;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/util/aK;->b:Lcom/dropbox/android/util/aK;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {}, Lcom/dropbox/android/util/aJ;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/util/aK;->b:Lcom/dropbox/android/util/aK;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x20

    .line 205
    iget-object v0, p0, Lcom/dropbox/android/util/aK;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/dropbox/android/util/aK;->c:J

    shl-long/2addr v1, v4

    shr-long/2addr v1, v4

    long-to-int v1, v1

    iget-wide v2, p0, Lcom/dropbox/android/util/aK;->c:J

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
