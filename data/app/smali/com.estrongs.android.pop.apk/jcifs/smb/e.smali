.class Ljcifs/smb/e;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    sget-wide p1, Ljcifs/smb/d;->c:J

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/e;->a:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/smb/e;->b:Ljava/util/HashMap;

    return-void
.end method
