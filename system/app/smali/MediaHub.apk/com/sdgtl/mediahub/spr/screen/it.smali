.class public final Lcom/sdgtl/mediahub/spr/screen/it;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/it;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/it;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/it;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/it;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/it;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sdgtl/mediahub/spr/screen/it;->c:Z

    return-void
.end method
