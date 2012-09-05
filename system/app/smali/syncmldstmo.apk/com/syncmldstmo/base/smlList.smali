.class public Lcom/syncmldstmo/base/smlList;
.super Ljava/lang/Object;
.source "smlList.java"


# instance fields
.field public m_item:Ljava/lang/Object;

.field public m_next:Lcom/syncmldstmo/base/smlList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    .line 12
    return-void
.end method

.method public static sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;
    .registers 2
    .parameter "header"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, item2:Ljava/lang/Object;
    if-nez p0, :cond_5

    .line 81
    const/4 v0, 0x0

    .line 87
    .end local v0           #item2:Ljava/lang/Object;
    :goto_4
    return-object v0

    .line 84
    .restart local v0       #item2:Ljava/lang/Object;
    :cond_5
    iget-object v0, p0, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    .line 87
    goto :goto_4
.end method

.method public static sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;
    .registers 1
    .parameter "header"

    .prologue
    .line 94
    if-nez p0, :cond_4

    .line 96
    const/4 p0, 0x0

    .line 102
    :goto_3
    return-object p0

    .line 100
    :cond_4
    iget-object p0, p0, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    .line 102
    goto :goto_3
.end method


# virtual methods
.method public sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;
    .registers 5
    .parameter "data"

    .prologue
    .line 18
    new-instance v0, Lcom/syncmldstmo/base/smlList;

    invoke-direct {v0, p1}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .line 20
    .local v0, entry:Lcom/syncmldstmo/base/smlList;
    if-nez v0, :cond_9

    .line 21
    const/4 p0, 0x0

    .line 28
    .end local p0
    :goto_8
    return-object p0

    .line 23
    .restart local p0
    :cond_9
    move-object v1, p0

    .line 24
    .local v1, prev:Lcom/syncmldstmo/base/smlList;
    :goto_a
    iget-object v2, v1, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    if-nez v2, :cond_11

    .line 27
    iput-object v0, v1, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    goto :goto_8

    .line 25
    :cond_11
    iget-object v1, v1, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    goto :goto_a
.end method
