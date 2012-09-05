.class public final Lcom/sdgtl/mediahub/spr/common/ct;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/ct;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/common/ct;->b:I

    return-void
.end method
