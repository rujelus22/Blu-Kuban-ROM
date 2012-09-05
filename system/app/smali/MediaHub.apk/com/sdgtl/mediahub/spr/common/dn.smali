.class public final Lcom/sdgtl/mediahub/spr/common/dn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/common/dd;
.implements Ljava/lang/Comparable;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:D

.field public j:Ljava/lang/String;

.field public k:D

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/dn;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/common/dn;->l:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/common/dn;->m:Z

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/dn;->l:Z

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 7

    const/4 v0, 0x1

    const/4 v1, -0x1

    check-cast p1, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/dn;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/dn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    :cond_16
    :goto_16
    :pswitch_16
    return v1

    :cond_17
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v2, 0x0

    packed-switch v3, :pswitch_data_38

    move v1, v2

    goto :goto_16

    :pswitch_29
    const/4 v2, 0x2

    if-ne v4, v2, :cond_2e

    :goto_2c
    move v1, v0

    goto :goto_16

    :cond_2e
    move v0, v1

    goto :goto_2c

    :pswitch_30
    const/4 v2, 0x3

    if-eq v4, v2, :cond_16

    move v1, v0

    goto :goto_16

    :pswitch_35
    move v1, v0

    goto :goto_16

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_30
        :pswitch_29
        :pswitch_16
        :pswitch_35
    .end packed-switch
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/dn;->m:Z

    return v0
.end method
