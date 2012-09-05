.class final Lcom/sdgtl/mediahub/spr/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/c/a;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/c/b;->a:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/sdgtl/mediahub/spr/common/di;

    check-cast p2, Lcom/sdgtl/mediahub/spr/common/di;

    iget-boolean v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    iget-boolean v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-nez v0, :cond_26

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_14

    :cond_26
    iget-boolean v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-nez v0, :cond_37

    iget-boolean v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_14

    :cond_37
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_14
.end method
