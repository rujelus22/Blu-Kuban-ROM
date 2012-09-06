.class final Lcom/mobfox/video/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Lcom/mobfox/video/sdk/e;

.field public e:Lcom/mobfox/video/sdk/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobfox/video/sdk/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobfox/video/sdk/e;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mobfox/video/sdk/e;->c:J

    return-void
.end method
