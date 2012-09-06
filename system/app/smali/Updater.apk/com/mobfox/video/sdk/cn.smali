.class public final Lcom/mobfox/video/sdk/cn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/video/sdk/cn;->b:Ljava/lang/String;

    iput v1, p0, Lcom/mobfox/video/sdk/cn;->a:I

    iput v1, p0, Lcom/mobfox/video/sdk/cn;->c:I

    return-void
.end method
