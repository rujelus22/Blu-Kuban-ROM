.class public final Lcom/sdgtl/mediahub/spr/common/cx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/common/dd;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/cx;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/cx;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method